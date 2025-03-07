pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/Vidhya2198/home'
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
                sh 'rspec spec/test_api.rb'
            }
        }
    }
}
