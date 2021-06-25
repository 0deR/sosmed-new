pipeline {
    agent { label 'master' }
      stages {
        stage("Clone Code") {
            steps {
                script {
                checkout scm
                }
            }
        }
        stage('Building Image') {
            steps{
                script {
                    sh "docker build . -t asefamarudin/sosmed-apps:${BUILD_NUMBER}"
                }
            }
        }
        stage('Push Image') {
            steps{
                script {
                    sh "docker push asefamarudin/sosmed-apps:${BUILD_NUMBER}"
                }
            }
        }
        stage('deploy') {
            steps{
                script {
                    sh "kubectl  set image deployment/sosmed-cilsy  sosmed-cilsy=asefamarudin/sosmed-apps:${BUILD_NUMBER}"
                }
            }
        }
     }
   
}
