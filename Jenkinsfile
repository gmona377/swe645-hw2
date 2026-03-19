pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/gmona377/swe645-hw2.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t mgurung3/hw1-website:latest .'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f deployment.yaml'
                sh 'kubectl apply -f service.yaml'
            }
        }
    }
}
