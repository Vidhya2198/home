pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/your-username/your-repo.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'gem install bundler'
                sh 'bundle install'
            }
        }
        stage('Run API Tests') {
            steps {
                sh 'rspec tests/api_test_spec.rb'
            }
        }
    }
}
