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
       sh 'sudo tar -czvf mumbatti.tar.gz /var/lib/jenkins/workspace/mumbatti >/dev/null'
       sh 'echo zip finished'
       sh 'scp /var/lib/jenkins/workspace/mumbatti/mumbatti.tar.gz deploy:'
       sh 'echo coppied'
       sh 'ssh deploy  tar -xvf /home/ubuntu/mumbatti.tar.gz sleep 3 ^c'
      }
    }
  }
}
