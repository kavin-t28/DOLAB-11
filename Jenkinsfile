pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git url: 'https://github.com/kavin-t28/DOLAB-11', branch: 'main'
      }
    }
    stage('Build Docker Image') {
      steps {
        script {
          sh 'docker build -t nodejs-api .'
        }
      }
    }
    stage('Run Container') {
      steps {
        script {
          sh 'docker run -p 3000:3000 nodejs-api'
        }
      }
    }
  }
}
