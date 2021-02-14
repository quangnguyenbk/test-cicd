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
                sh 'mvn -v'
                sh 'mvn clean install' 
            }
        }
        stage('Deploy') { 
            steps { 
                sh 'docker build -t test1 .'
                sh 'docker run -d -p 9092:9092 test1'
            }
        }
    }
}
