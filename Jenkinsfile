pipeline {
    agent any

    environment {
        GITHUB_REPO_URL = 'https://github.com/MoraisMNS/4077-Morais'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: "${env.GITHUB_REPO_URL}"
            }
        }

        stage('Build DockerImage') {
            steps {
                script {
                    bat 'docker build -t morais-4077 .'
                }
            }
        }

        stage('Run Docker Image') {
            steps {
                script {
                    bat 'docker run -p 3000:3000 morais-4077'
                }
            }
        }
    }
}
