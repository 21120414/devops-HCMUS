pipeline {
  agent any
  stages{
    stage ('Pull Github repository'){
      steps{
        git branch: 'main', url: 'https://github.com/hahaQuocBao/devops-HCMUS.git'
      }
    }
    stage('Build and publish Docker image'){
      steps{
        withDockerRegistry(credentialsId: 'docker hub',url = 'https://index.docker.io/v1/'){
          bat 'docker build -t 21120253/devops_hcmus .'
          bat 'docker push 21120253/devops_hcmus'
        }
      }
    }
  }
}
  