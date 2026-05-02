pipeline {
  agent any
  stages {
    stage ('checkout') {
      steps {
        git 'https://github.com/satyam4853/test.git'
          }
    }
    stage ('Build Docker Image') {
      steps {
        sh 'docker build . -t my-app'
      } 
    }
  }
}
