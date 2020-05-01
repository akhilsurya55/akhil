pipeline{
    Agent Any
    tools {
        maven 'maven3'
    }
    stages{
        stage ("Clone the code") {
            steps {
                git gmaeoflife

            }

        }
        stage ('Build') {
            steps {
                sh script 'mvn clean package'
            }
        }
        stage ('Docker Build') {
            steps {
                sh script :  'sudo docker image build -t devopseasy/spc:1.0 .'
            }
        }
        stage ('Docker push') {
            steps {
                With blind creditionals git {       wwith creditinal blind creaditional variable
                sh 'sudo docker login --username $devopseasy  paswdeasy'
                sh 'docker push devopseasy/spc:1.0'
                }
            }
        }
        stage ('Kubernetes Deploy') {
            steps {
                kubernetsDeploy {
                    configs : 'springpetclinic.yml',
                    kubeconfigId: 'kubeadm_pass'
                    enableConfigSubstitution : true
                }
            }
        } 
    }
}