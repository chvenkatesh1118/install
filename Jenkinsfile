pipeline {
    agent any
    parameters {
        choice(name: 'TOOL NAME',
        choices: ['ansible', 
                  'tarraform', 
                  'docker'
                  'graffana'
                  'jenkins'
                  'tomcat'
                  'jfrog'], 
                description: 'pick which tool')

       }
    stages {
        stage('installing ${params.TOOL NAME}') {
            steps {
                sh 'bash ${params.TOOL NAME}.sh '
           }
        }
    }
}