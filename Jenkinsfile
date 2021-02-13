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
    }
}
