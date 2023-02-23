pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
            steps {
                sh 'docker build -t dwthomasjr415/flaskapp .'
            }
        }
    }
}