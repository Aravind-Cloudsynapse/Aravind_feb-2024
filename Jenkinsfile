pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                // Checkout the code from the SCM
                git 'https://github.com/your-username/your-repository.git'
                
                // Run Gradle build
                sh './gradlew build'
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
