#!groovy​

pipeline {
    agent any

    stages {
        stage('Proceed to Build ?') {
            agent none
            steps {
                input message: "Build?"
            }
        }
        stage('Build') {
            agent { docker 'php' }
            steps {
                sh './build.sh'
            }
        }
        stage('Proceed to Testing ?') {
            agent none
            steps {
                input message: "Proceed?"
            }
        }
        stage('Test') {
            agent none
            steps {
                echo 'Testing..'
            }
        }
        stage('Proceed to Deploy to Develop Environment?') {
            agent none
            steps {
                input message: "Proceed?"
            }
        }
        stage('Deploy') {
            agent none
            steps {
                echo 'Deploying....'
            }
        }
    }
}