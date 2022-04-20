pipeline {
  agent any

  tools {nodejs "node"}

  stages {

    stage('Pullcode ') {
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
     steps {
      sh 'cd /var/lib/jenkins/workspace'
       sh 'pwd'
       sh 'echo checking checking'
       sh 'sudo tar -czvf source.tar.gz /var/lib/jenkins/workspace/mumbatti'
       sh 'scp source.tar.gz deploy:'
       sh 'echo coppied'
       sh 'ssh deploy  tar -xvf /home/ubuntu/source.tar.gz sleep 3 ^c'
      }
    }
  }
}
