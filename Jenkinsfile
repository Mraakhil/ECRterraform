pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Mraakhil/terraform']])
            }
        }
        stage ("terraform init") {
            steps {
                sh ('terraform init') 
            }
        }   
         stage ("terraform fmt") {
            steps {
                sh ('terraform fmt') 
            }
        }  
        stage ("terraform validate") {
            steps {
                sh ('terraform validate') 
            }
        }  
        
        stage ("terraform Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 
           }
        }
    }
    
}
