pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                clean build
            }
        }
    }
}
pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                cucumber
            }
        }
    }
}