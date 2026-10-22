pipeline {
    agent any

    tools {
        maven 'Maven-3.9.11'
        jdk 'JDK-21'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/khatab420/JenkinsProject.git'
            }
        }

        stage('Build') {
            steps {
                bat 'mvn clean compile'
            }
        }

        stage('Test') {
            steps {
                bat 'mvn test'
            }
        }

        stage('Package') {
            steps {
                bat 'mvn package'
                archiveArtifacts artifacts: 'target/*.jar', fingerprint: true
            }
        }
        stage('Run App') {
            steps {
                bat 'java -cp target/java-app-1.0-SNAPSHOT.jar com.example.App'
            }
        }


        stage('Deploy') {
            steps {
                echo 'Deploying JAR to server...'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed. Check logs.'
        }
    }
}
