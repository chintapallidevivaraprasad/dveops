pipeline {
    agent any

    stages {
        stage('clone') {
            steps {
               git branch: 'main', url: 'https://github.com/chintapallidevivaraprasad/davara.git'
                
            }
        }
        stage('init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }    
}
