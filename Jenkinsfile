#!/usr/bin/env groovy

pipeline {
    agent any

    stages {
        stage('ENVIRONMENT') {
          steps {
            echo '*****ENVIRONMENT!*****'
            echo "THIS IS ENV: ${env.DEV_ENV}"
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
