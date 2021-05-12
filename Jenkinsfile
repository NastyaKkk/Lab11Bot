pipeline {
    environment {dockerImage = ''}
    agent any //dockerfile true

   // tools {
        // Install the Maven version configured as "M3" and add it to the path.
     //   maven "M3"
   // }

    stages {
        stage('Prepare'){
            steps{
                sh 'docker stop $(docker ps -q --filter "ancestor=lab11")'
                sh 'docker rm -f $(docker ps -q --filter "ancestor=lab11" --filter "status=exited")'

            }
        }
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/NastyaKkk/Lab11Bot.git'
                sh 'DOCKER_BUILDKIT=0'
                sh 'docker build -f ./Dockerfile .'

                // Run Maven on a Unix agent.
               // sh "mvn -Dmaven.test.failure.ignore=true clean package"

                // To run Maven on a Windows agent, use
                // bat "mvn -Dmaven.test.failure.ignore=true clean package"
            }
            }
        stage('Deploy'){
            steps{
                sh 'docker run -d lab11'
            }
        }
        }
    }