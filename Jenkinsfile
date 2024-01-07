pipeline {
  agent any
  
  tools {
    maven 'my-maven'
  }

  stages{
    stage ('Pull Github repository'){
      steps{
        git branch: 'main', url: 'https://github.com/21120414/devops-HCMUS.git'
      }
    }

    stage('Build with Maven') {
        steps {
            bat 'mvn --version'
            bat 'java -version'
            bat 'mvn clean package -Dmaven.test.failure.ignore=true'
        }
    }

    stage('Packaging/Pushing image'){
      steps{
        withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/') {
          bat ' docker build . -t 21120448/devops_hcmus'
          bat 'docker push 21120448/devops_hcmus'
        }
      }
    }

    stage('Deploy Spring Boot to DEV') {
        steps {
            echo 'Deploying and cleaning'
            bat 'docker image pull 21120448/devops_hcmus'
            bat 'docker container stop 21120448/devops_hcmus || echo "this container does not exist" '
            bat 'docker network create dev || echo "this network exists"'
            bat 'echo y | docker container prune '

            bat 'docker container run -d --rm --name 21120448/devops_hcmus -p 8081:8080 --network dev 21120448/devops_hcmus'
        }
    }
  }

  post {
      // Clean after build
      always {
          cleanWs()
      }
  }
}