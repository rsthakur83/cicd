pipeline {
    agent any

    
 environment { 
 AN_ACCESS_KEY = credentials('accesskey') 
 SECRET_KEY = credentials('secretkey')
            }

parameters {
    choice(
        name: 'app_version',
        choices: "release-0.05\nrelease-0.06",
        description: 'Release version to deploy' )
  }

    stages {
        stage('Downloading Source Code') {
            steps {
                echo 'Downloading Source Code'
            }
        }

        stage('Infrastructure State') {
            steps {
                sh 'chmod +x infrastate.sh'
	        sh './infrastate.sh'
            }
        }

        stage('Change User Data') {
            steps {
			
              sh  'echo "git clone --depth 1 --branch ${app_version} git://github.com/rsthakur83/release.git" >> userdata.sh'

            }
        }
        stage('Changing Userdata') {
            steps {
	      sh  'echo "sudo cp -rf release/* /usr/share/httpd/noindex" >> userdata.sh'
              sh  'echo "sudo cp -rf release/* /var/www/html" >> userdata.sh'
              
            }
        }


        stage('Executable ASG script') {
            steps {
              sh  'chmod +x scaling.sh'
              sh  'chmod +x auto.sh'
            }
        }

        stage('Swapping Blue Green') {
            steps {
              sh  './auto.sh'
              sh  'sleep 5'
              sh  './scaling.sh'
            }
        }

    }
}
