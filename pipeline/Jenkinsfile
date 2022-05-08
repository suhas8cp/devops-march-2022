pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                sh 'echo STAGE 1: This is a build stage'
            }
        }
        stage('Test') { 
            steps {
                sh 'echo STAGE 2: This is a Test stage' 
            }
        }
        stage('Deploy') { 
            steps {
                sh 'echo STAGE 3: This is a Deploy stage'
            }
        }
    }
}
