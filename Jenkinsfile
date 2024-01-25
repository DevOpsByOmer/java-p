pipeline {
    agent any

    stages {
        
        stage('Build') {
            steps {
                script {
                    sh 'mvn install'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    sh 'mvn test'
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
}
    