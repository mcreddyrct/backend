pipeline {
    agent any
    stages{
        stage("build"){
            steps {
                sh """    
                aws ecr get-login-password --region ap-southeast-1 | sudo docker login --username AWS --password-stdin 750587247960.dkr.ecr.ap-southeast-1.amazonaws.com
                sudo docker build -t 7750587247960.dkr.ecr.ap-southeast-1.amazonaws.com/backend:latest .
                sudo docker push 7750587247960.dkr.ecr.ap-southeast-1.amazonaws.com/backend:latest 
                
                 """
            }
        }
    }
}