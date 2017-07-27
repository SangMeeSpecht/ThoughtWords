#!/usr/bin/env groovy

pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo '*****Building*****'
                sh 'fastlane build'
            }
        }
        stage('Test') {
            steps {
                echo '*****Testing*****'
                sh 'fastlane test'
            }
        }
        stage('Deploy') {
          environment {
            API_KEY = credentials('API_KEY')
          }
            steps {
                echo '*****Deploying*****'
                sh 'fastlane beta'
            }
        }
    }
}
