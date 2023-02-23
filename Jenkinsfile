pipeline {
    agent any

    environment {
        DOCKER = credentials('jenkins')
    }

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t dwthomasjr415/flaskapp .'
            }
        }
        stage('Login') {
            steps {
                echo '$jenkins | docker login -u dwthomasjr415 login -u dwthomasjr415 --password-stdin'
            }
        }
        stage('Push') {
            steps {
                sh 'docker push dwthomasjr415/flaskapp'
            }
        }
    }
}