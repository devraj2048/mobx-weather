pipeline {
  agent any

  tools {nodejs "node"}

  stages {

    stage('Pull code ') {
      steps {
        git 'https://github.com/devraj2048/mobx-weather.git'
      }
    }

    stage('Build') {
      steps {
        sh 'npm install'
         sh 'npm run build'
      }
    }


stage('deploy a code ') {
  def sshToDevserver = 'npm run'
     steps {
       sh "ssh root@192.168.0.106 ${sshToDevserver}"
      }
    }
  }
}
