pipeline {
    agent any
    stages{
        stage{
            steps("build"){
                sh """
                aws ecr  get-login | docker login
                docker build -t ecrurl:$BUILD_NUMBER .
                docker push ecrurl:$BUILD_NUMBER 
                """

            }
        }
    }
}