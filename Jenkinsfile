pipeline 
{
    agent any
    
    stages 
    {
        stage('compile') {
            steps {
               build 'compile-job'
            }
        }
        stage('test') {
            steps {

               build 'test-job'
            }
        }
        stage('package') {
            steps {

                build 'package-job'
            }
         }
       
    }
        
    }
    
