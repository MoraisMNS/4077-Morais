pipeline{
    agent any

    environment{
        GITHUB_REPO_URL = 'https://github.com/MoraisMNS/4077-Morais'
    }

    stages{

    stage('Checkout'){
        steps{
            git branch: 'master',url:"${env.GITHUB_REPO_URL}"
        }
    }

    stage('Build DockerImage'){
        step{
            bat 'docker built -t morais-4077 .'
        }
    }

    stafe('Run Docker Image'){
        steps{
            bat 'docker run -p 3000:3000 morais-4077'
        }
    }
    }
}