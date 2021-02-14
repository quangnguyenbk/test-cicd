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
                sh 'nohup java -jar target/testCICD-0.0.1-SNAPSHOT.jar 1> output.file 2>&1 </dev/null &' 
            }
        }
    }
}
