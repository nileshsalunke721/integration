pipeline{
	agent any
	
	environment{
		PYTHON="C:\\Users\\Lenovo\\AppData\\Local\\Programs\\Python\\Python314\\python.exe"
	}

    triggers{
        cron('H/1 * * * *')
    }
	
	stages{
		stage("checkout code"){
			git url : "https://github.com/nileshsalunke721/integration.git", branch : "main"
		}
		
		stage("installing dependencies"){
			bat """
				%PYTHON% -m pip install requirements.txt
			"""
		}
		
		stage("extract data"){
			bat "%PYTHON% extract.py"
		}
	}
	
	post{
		always{echo "pipeline executed"}
		success{echo "pipeline success"}
		failure{echo "pipeline failed"}
	}
}