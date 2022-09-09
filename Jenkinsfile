pipeline {
  agent {
    kubernetes {
      yamlFile 'pod.yaml'
    }
  }
environment {
    registryCredentials = 'docker'
    }
  stages {
    stage('Run maven') {
      steps {
        container('maven') {
          sh 'mvn -version'
        }
        container('busybox') {
          sh '/bin/busybox'
        }
        container('kaniko') {
          script {
                dockerImage = docker.build("bjgomes/jenkins")
                docker.withRegistry('', registryCredentials) {
                    dockerImage.push()
            }
          }
        }
      }
    }
}
}
