pipeline 
{
    agent {label 'jenkins-slave'}
    
    stages 
    {
        stage('Compile') {
            steps {
                // Get some code from a GitHub repository
                git branch: 'main', url: 'https://github.com/Ramya119/ABC-Technologies.git'
                sh "mvn -Dmaven.test.failure.ignore=true clean compile"
            }
        }
        stage('Test') {
            steps {

                sh "mvn -Dmaven.test.failure.ignore=true test"
            }
        }
        stage('Package') {
            steps {

                sh "mvn -Dmaven.test.failure.ignore=true package"
                sh "docker build -t abc:latest ."

            }
            post 
                {
                    success 
                    {
                        junit '**/target/surefire-reports/TEST-*.xml'
                        archiveArtifacts 'target/*.war'
                    }
            }
        }
        
    }
    
}
