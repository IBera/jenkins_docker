def dockerImage;

node('docker'){
	stage('SCM'){
		checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/IBera/jenkins_docker.git']]]);
	}
	stage('build'){
		dockerImage = docker.build("ibera/agent-dnc:v${env.BUILD_NUMBER}", './dotnetcore');
	}
	stage('push'){
		docker.withRegistry('https://index.docker.io/v1/', '46cc3ad1-bd39-4888-be66-1f4bf5f9561c'){
			dockerImage.push();
		}
	}
}