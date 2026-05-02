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
                    git ls-remote https://$GIT_USER:$GIT_PASS@github.com/your-username/your-repo.git
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

    }
}
