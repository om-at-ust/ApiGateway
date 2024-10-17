pipeline {
    agent any

    tools {
        // Install the Maven version configured as "my-maven" and add it to the path.
        maven 'my-maven'
        jdk 'my-jdk-23'

    }

    stages {
        stage('Git') {
            steps {
                // Get some code from a GitHub repository
                git url: 'https://github.com/om-at-ust/ApiGateway.git', branch: 'main'
            }
        }

        stage('Build') {
            steps {


                // To run Maven on a Windows agent, use
                bat 'mvn clean install'
            }
        }
        stage('Deploy') {
            steps {


                // To run Maven on a Windows agent, use
                bat 'docker build -t gateway-server-image .'
//                 bat 'docker network create -d bridge oms-network'
                bat 'docker run --network oms-network -p 8222:8222 -d --name gatewayserver-sr security-server-image'
            }
        }
    }
}
