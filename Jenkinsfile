pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('jk1')
	}

	stages {  
		
		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW'
				sh 'echo $DOCKERHUB_CREDENTIALS_USR'
				
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
		        	}
		               }

		
	     }
}

