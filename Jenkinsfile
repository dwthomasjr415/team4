pipeline {
    agent any

   
    stages {
        stage('Login and Push') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'jenkins') {
                        docker.built('dwthomasjr415/flaskapp').push('lastest')
                    }       
                }
            }
         }
    }
}