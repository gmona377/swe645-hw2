pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/gmona377/swe645-hw2.git'
            }
        }

        stage('Building the web app into a docker image') {
            steps {
                sh 'docker build -t mgurung3/hw1-website:latest .'
            }
        }

        stage('Pushing Image to Dockerhub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    sh 'echo $PASSWORD | docker login -u $USERNAME --password-stdin'
                    sh 'docker push mgurung3/hw1-website:latest'
                }
            }
        }

        stage('Deploying image to cluster on Rancher') {
            steps {
                sh 'kubectl apply -f deployment.yaml'
                sh 'kubectl apply -f service.yaml'
            }
        }
    }
}
