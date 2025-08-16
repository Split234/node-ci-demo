pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Split234/node-ci-demo.git'
            }
        }

        stage('Install dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Run tests') {
            steps {
                sh 'npm test'
            }
        }
    }
}
