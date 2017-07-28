#!/usr/bin/env groovy

pipeline {
    agent any
    environment {
      DEV_ENV = 'prod'
    }
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
          steps {
              echo '*****Deploying*****'
              sh 'fastlane beta'
          }
      }
    }
}
