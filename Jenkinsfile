pipeline 
{
    agent any
    
    stages 
    {
        stage('compile') {
            steps {
               build 'compile'
            }
        }
        stage('test') {
            steps {

               build 'test'
            }
        }
        stage('package') {
            steps {

                build 'package'
            }
         }
        stage('deploy-on-doccont')
        {
            steps{
                build 'deploy-on-doccont'
            }
        }
       
    }
        
    }
    
