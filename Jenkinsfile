pipeline {
    agent any
    environment {
        GEM_HOME = "${HOME}/.gem"
        PATH = "${GEM_HOME}/bin:${PATH}"
    }
    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Vidhya2198/home'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'gem install --user-install bundler:2.4.12'
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
