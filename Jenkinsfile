pipeline{
	agent any
	
	

    triggers{
        cron('*/1 * * * *')
    }
	
	stages{
		stage("checkout code"){
            steps{
			    git url : "https://github.com/nileshsalunke721/integration.git", branch : "main"
            }
		}
		
        stage("stop and remove container"){
            steps{
                bat "docker stop container1 || true"
                bat "docker rm container1 || true"
            }
        }

		stage("build image"){
            steps{
                bat "docker build -t image1 ."
            }
        }

        stage("run container"){
            steps{
                bat "docker run -d -p 8502:8501 --name container1 image1"
            }
        }
		
		
	}
	
	post{
		always{echo "pipeline executed"}
		success{echo "pipeline success"}
		failure{echo "pipeline failed"}
	}
}