pipeline {
    agent any
    
    environment {
        JAVA_HOME = '/usr/lib/jvm/jdk-17/'
    }
    
    stages {
        stage('Build') {
            steps {
                // Checkout the code from the SCM
                git branch: 'master', url: 'https://github.com/Aravind-Cloudsynapse/Aravind_feb-2024.git'
                
                // Run Gradle build to generate the .war file
                sh './gradlew clean build'
            }
        }
        
        stage('Docker Build') {
            steps {
                // Build Docker image
                script {
                    docker.build('nginx1:latest', '-f Dockerfile .')
                }
            }
        }
        
        stage('Docker Run') {
            steps {
                // Run Docker container
                script {
                    docker.image('nginx1:latest').run('-d -p 8080:80 --name webapp')
                }
            }
        }
    }
    
    post {
        success {
            // Send notification on success
            echo 'Build successful! Sending notifications...'
        }
        failure {
            // Send notification on failure
            echo 'Build failed! Sending notifications...'
        }
    }
}
