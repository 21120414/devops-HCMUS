pipeline {
  agent any
  stages{
    stage ('Pull Github repository'){
      steps{
        git branch: 'main', url: 'https://github.com/hahaQuocBao/devops-HCMUS.git'
      }
    }

    stage('Build with Maven') {
        steps {
            sh 'mvn --version'
            sh 'java -version'
            sh 'mvn clean package -Dmaven.test.failure.ignore=true'
        }
    }

    stage('Packaging/Pushing imagae'){
      steps{
        withDockerRegistry(credentialsId: '(docker hub)', url: 'https://index.docker.io/v1/') {
          bat ' docker build . -t 21120253/devops_hcmus'
          bat 'docker push 21120253/devops_hcmus'
        }
      }
    }
  }
}
  
