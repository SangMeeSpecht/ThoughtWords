#!/usr/bin/env groovy

pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo '*****Building*****'
                sh 'fastlane clean'
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
            }
        }
    }
}
