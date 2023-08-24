pipeline {
    agent any

    tools{
        maven 'local-maven'
    }
    
    stages{
        stage("clone code"){
            steps {
                echo "clone the code into github"
                git url:"https://github.com/Shiba07s/java_project.git", branch:"main"
            }
            
        }
        stage ('Build'){
            steps{
                echo "successfully creating jar file"
                sh 'mvn clean package'
            }
        }
        stage("build code"){
            steps {
                echo "build image"
                sh "docker build -t login-docker.jar ."
            }
            
        }
        stage("push to docker hub"){
            steps {
                 echo "Pushing the image to docker hub"
                withCredentials([usernamePassword(credentialsId:"dockerHub",passwordVariable:"dockerHubPass",usernameVariable:"dockerHubUser")]){
                sh "docker tag login-docker.jar ${env.dockerHubUser}/login-docker.jar:latest"
                sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPass}"
                sh "docker push ${env.dockerHubUser}/login-docker.jar:latest"
                }
                 
            }
            
        }
        stage("deploy"){
            steps {
                echo "deploy"
                sh "docker-compose down && docker-compose up -d"
               //   sh "docker run -p 9090:8080 hello-world-docker.jar:latest"
            }
            
        }
        
    }
}
