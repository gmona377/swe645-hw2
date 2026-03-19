pipeline {
    agent any

    stages {
        stage('Clone Repo') {
    steps {
        git branch: 'main', url: 'https://github.com/gmona377/swe645-hw2.git'
    }
}

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t hw2-app .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 8081:80 hw2-app'
            }
        }
    }
}
