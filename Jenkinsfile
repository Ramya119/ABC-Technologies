pipeline 
{
    agent any
    
    stages 
    {
        stage('Compile') {
            steps {
                // Get some code from a GitHub repository
                git branch: 'main', url: 'https://github.com/Ramya119/ABC-Technologies.git'
               build 'compile-job'
            }
        }
        stage('Test') {
            steps {

               build 'test-job'
            }
        }
        stage('Package') {
            steps {

                sh build 'package-job'

            }
          
            }
        }
        
    }
    
}
