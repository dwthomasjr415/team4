pipeline {
    agent any

   
    stages {
        stage('Login and Push') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'Docker') {
                        docker.build('dwthomasjr415/flaskapp').push('latest')
                    }       
                }
            }
        }
        stage('AWS Commands'){
            steps {
                script {
                    withAWS(credentials: 'aws-jenkins', region: 'us-east-1'){
                        sh 'aws sts get-caller-identity'
                    }
                }
            }
        }
    }
}