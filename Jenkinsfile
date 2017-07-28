#!/usr/bin/env groovy

pipeline {
    agent any

    stages {
        stage('API') {
          steps {
            echo '*****SECRETS!*****'
            echo 'ENV[API_KEY]'
          }
        }
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
            steps {
                echo '*****Deploying*****'
                sh 'fastlane beta'
            }
        }
    }
}
