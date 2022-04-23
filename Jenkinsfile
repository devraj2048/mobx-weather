pipeline {
  agent any

  tools {nodejs "16.14.2"}

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


//stage('deploy a code ') {
  //   steps {
    //  sh 'cd /var/lib/jenkins/workspace/'
      // sh 'pwd'
       //sh 'echo checking checking'
       //sh 'scp -r -P 22044  /var/lib/jenkins/workspace/mumbatti niraj@110.44.119.237:'
       //sh 'echo coppied'
      //}
    //}
  }
}
