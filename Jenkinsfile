pipeline 
{
    agent any
    
    stages 
    {
        stage('Compile') {
            steps {
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

                build 'package-job'
            }
         }
       
    }
        
    }
    
