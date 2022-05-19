pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('jk1')
	}

	stages {
	    stage('Pullcode ') {
			steps {
			git 'https://github.com/devraj2048/mobx-weather.git'
			}
		}


		stage('Build') {

			steps {
				sh 'docker build -t jarina/jenish:${currentBuild.number} .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW'
				sh 'echo $DOCKERHUB_CREDENTIALS_USR'
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push jarina/jenish:${currentBuild.number}'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
