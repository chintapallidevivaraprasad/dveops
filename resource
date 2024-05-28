pipeline {
    agent any

    stages {
        stage('clone') {
            steps {
                git branch
            }
        }
    }stages {
        stage('init') {
            steps {
                sh terraform init
            }
        }
stages {
        stage('plan') {
            steps {
                sh terraform plan
            }
        }
stages {
        stage('apply') {
            steps {
                sh terraform apply
            }
        }
}
