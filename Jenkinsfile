pipeline{

	agent any

	stages {
	    stage('Pullcode ') {
			steps {
			git 'https://github.com/devraj2048/mobx-weather.git'
			}
		}


		stage('Build') {

			steps {
				sh 'echo ${currentBuild.number}'
				sh 'docker build -t jarina/jenish:2 .'
			}
		}

	

}
