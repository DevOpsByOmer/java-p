pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/your-python-repo.git'
            }
        }

        stage('Build') {
            steps {
                script {
                    sh 'pip install -r requirements.txt'
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    sh 'scp -r . user@your-bare-server:/path/to/deployment'
                }
            }
        }
    }
}
    