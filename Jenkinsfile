pipeline { 
    agent { dockerfile true }
    options {
        skipStagesAfterUnstable()
    }
    tools {
        maven 'maven363'
    }
    stages {
        stage('Build') { 
            steps { 
                sh 'mvn -v'
                sh 'mvn clean install' 
            }
        }
        stage('Deploy') { 
            steps { 
                sh 'java -jar target/testCICD-0.0.1-SNAPSHOT.jar' 
            }
        }
    }
}
