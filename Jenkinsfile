pipeline {
  agent any
tools {
        dockerTool 'my-docker' 
    }
  stages {
    stage ('checkout') {
      steps {
        git branch: 'Development' , url: 'https://github.com/satyam4853/test.git'
      }
    }
    stage ('Build Docker Image') {
      steps {
        sh 'docker build . -t my-app:latest'
      } 
    }
  }
}
