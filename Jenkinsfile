pipeline {
    agent any

    stages {

        stage('Test Git Credential') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'test',
                    usernameVariable: 'GIT_USER',
                    passwordVariable: 'GIT_PASS'
                )]) {
                    sh '''
                    echo "Testing Git credentials..."
                    git ls-remote https://$GIT_USER:$GIT_PASS@github.com/satyam4853/test.git
                    '''
                }
            }
        }

        stage('Test Docker Credential') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'docker-creds',
                    usernameVariable: 'DOCKER_USER',
                    passwordVariable: 'DOCKER_PASS'
                )]) {
                    sh '''
                    echo "Testing Docker login..."
                    docker login -u $DOCKER_USER -p $DOCKER_PASS
                    '''
                }
            }
        }
    stage ('checkout') {
      steps {
        git branch: 'Development' , url: 'https://github.com/satyam4853/test.git'
      }
    }
stage('Build Docker Image') {
    steps {
        sh 'which docker'      // Should return /usr/bin/docker
        sh 'docker --version'  // Should return the version
        sh "docker build . -t satyam4853/test:latest"
        sh "docker push satyam4853/test:latest"
    }
}

    }
}
