pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
            steps {
                sh 'socker built -t dwthomasjr415/flaskapp .'
            }
        }
    }
}