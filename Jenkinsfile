pipeline {
  agent any

  tools {
    nodejs "nodejs"
  }

  stages {

stage('deploy a code ') {
     steps {
      sh 'cd /var/lib/jenkins/workspace/mumbatti'
       //sh 'echo checking checking'
       sh 'scp -v -P 22044 -oStrictHostKeyChecking=no  buid.tar.gz niraj@110.44.119.237:'
       sh 'echo coppied'
      }
    }
  }
}
