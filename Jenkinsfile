pipeline {

    agent any

    environment {
        AWS_DEFAULT_REGION = "ap-south-1"
        EC2_IP = "65.0.101.96"
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Version') {
            steps {
                sh 'terraform version'
            }
        }

        stage('Terraform Init') {
            steps {
                withCredentials([
                    usernamePassword(
                        credentialsId: 'aws-terraform',
                        usernameVariable: 'AWS_ACCESS_KEY_ID',
                        passwordVariable: 'AWS_SECRET_ACCESS_KEY'
                    )
                ]) {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Format Check') {
            steps {
                sh 'terraform fmt -check'
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                withCredentials([
                    usernamePassword(
                        credentialsId: 'aws-terraform',
                        usernameVariable: 'AWS_ACCESS_KEY_ID',
                        passwordVariable: 'AWS_SECRET_ACCESS_KEY'
                    )
                ]) {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                withCredentials([
                    usernamePassword(
                        credentialsId: 'aws-terraform',
                        usernameVariable: 'AWS_ACCESS_KEY_ID',
                        passwordVariable: 'AWS_SECRET_ACCESS_KEY'
                    )
                ]) {
                    sh 'terraform apply -auto-approve tfplan'
                }
            }
        }

        stage('Deploy Application') {
            steps {

                sshagent(credentials: ['aws-ec2-key']) {

                    sh """
                    scp -o StrictHostKeyChecking=no deploy.sh ubuntu@$EC2_IP:/home/ubuntu/

                    ssh -o StrictHostKeyChecking=no ubuntu@$EC2_IP '
                        chmod +x /home/ubuntu/deploy.sh
                        /home/ubuntu/deploy.sh
                    '
                    """
                }
            }
        }

    }

    post {

        success {
            echo 'Infrastructure and application deployed successfully.'
        }

        failure {
            echo 'Pipeline failed.'
        }

        always {
            cleanWs()
        }
    }
}
