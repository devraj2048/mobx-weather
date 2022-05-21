pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('docker-jenkins')
	}

	stages {
	    stage('Pullcode ') {
			steps {
			git 'https://github.com/devraj2048/mobx-weather.git'
			}
		}


		stage('Build') {

			steps {
				sh 'docker build -t nodeapp:"$BUILD_NUMBER" .'
			}

		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push devraj2048/node-app'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
