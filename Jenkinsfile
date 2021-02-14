pipeline { 
    agent any 
    options {
        skipStagesAfterUnstable()
    }
    tools {
        maven 'maven363'
    }
    stages {
        stage('Build') { 
            steps { 
                sh 'mvn clean install' 
            }
        }
        stage('Deploy') { 
            steps { 
                sh 'java -jar testCICD-0.0.1-SNAPSHOT.jar' 
            }
        }
    }
}
