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
       sh "scp -P 22044  buid-${currentBuild.number}.tar.gz niraj@110.44.119.237:"
       sh "ssh -p 22044 niraj@110.44.119.237 tar -xvf buid-${currentBuild.number}.tar.gz --directory  /usr/share/nginx/html/testfile/"
      }
    }
  }
}
