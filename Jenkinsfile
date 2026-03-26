pipeline{
	agent any
	
	

    triggers{
        cron('*/5 * * * *')
    }
	
	stages{
		stage("checkout code"){
            steps{
			    git url : "https://github.com/nileshsalunke721/integration.git", branch : "main"
            }
		}
		
        // stage("stop and remove container"){
        //     steps{
        //         bat 'for /f %%i in (\'docker images -a -q\') do docker rmi -f %%i'
        //         bat 'for /f %%i in (\'docker ps -a -q\') do docker rm -f %%i'
        //     }
        // }

		stage("build image"){
            steps{
                bat "docker build -t image1 ."
            }
        }

        stage("run container"){
            steps{
                bat "docker run -d -p 8502:8501 image1"
            }
        }
		
		
	}
	
	post{
		always{echo "pipeline executed"}
		success{echo "pipeline success"}
		failure{echo "pipeline failed"}
	}
}