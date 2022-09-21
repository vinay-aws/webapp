pipeline {
	agent {
		label {
			label 'built-in'
			customWorkspace '/mnt/demo'
		}
	}
	stages {
		stage ('SCM Checkout') {
			steps {
				git 'https://github.com/akash-aws/webapp.git' 
			}
		}
		stage ('mvn-package') {
			steps {
				sh 'mvn clean package' 
			}
		}
		stage ('docker-build') {
			steps {
				sh '''service docker start
						docker build -t mytomcat .
							docker container run -itd -p 7775:8080 mytomcat '''
			}
		}
	}
}
