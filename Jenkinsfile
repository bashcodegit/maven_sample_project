pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Maven Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        
        stage('Unit Tests') {
            steps {
                sh 'mvn test'
            }
        }
        
        stage('SonarQube Analysis') {
            steps {
                def scannerHome = tool 'SonarScanner'
                withSonarQubeEnv('Your_SonarQube_Environment_Name') {
                    sh "${scannerHome}/bin/sonar-scanner"
                }
            }
        }
    }
}
