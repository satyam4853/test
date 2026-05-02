pipeline {
  agent any
tools {
        dockerTool 'my-docker' 
    }
stage('Build Docker Image') {
    steps {
        sh 'which docker'      // Should return /usr/bin/docker
        sh 'docker --version'  // Should return the version
        sh 'docker build . -t my-app:latest'
    }
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
