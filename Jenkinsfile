@Library('jenkins-pipeline-scripts') _

pipeline {
    agent none
    parameters {
        string(defaultValue: 'iaurban/mutual', description: '', name: 'imageName')
        string(defaultValue: 'urban', description: '', name: 'role')
        string(defaultValue: '/dev/null', description: '', name: 'updateScript')
    }
    triggers {
        pollSCM('*/3 * * * *')
    }
    options {
        // Keep the 50 most recent builds
        buildDiscarder(logRotator(numToKeepStr:'50'))
    }
    stages {
        stage('Build') {
            agent any
            steps {
                sh 'make docker-image'
            }
        }
        // stage('Build dependencies') {
        //     agent any
        //     when {
        //         beforeAgent true
        //         expression {
        //             ${params.imageName} == "iaurban/mutual"
        //         }
        //     }
        //     steps {
        //         parallel (
        //             "liege": {
        //                 echo "starting liege build"
        //                 build job: '/IMIO-github-Jenkinsfile/liege.urban/master', wait: false
        //             }
        //         )
        //     }
        // }
        stage('Push image to registry') {
            agent any
            steps {
                pushImageToRegistry (
                    ${env.BUILD_ID},
                    ${params.imageName}
                )
            }
        }
        stage('Deploy to staging') {
            agent any
            when {
                expression {
                    currentBuild.result == null || currentBuild.result == 'SUCCESS'
                }
            }
            steps {
                deployToStaging (
                    ${env.BUILD_ID},
                    ${params.imageName},
                    ${params.role},
                    ${params.updateScript}
                )
            }
        }
    }
}
