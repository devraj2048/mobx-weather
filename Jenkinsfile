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
      sh 'cd /var/lib/jenkins/workspace/'
       sh 'tar -czvf source.tar.gz source'
       sh 'scp source.tar.gz deploy:'
       sh 'ssh deploy  tar -xvf /home/ubuntu/source.tar.gz sleep 3 ^c'
      }
    }
  }
}
