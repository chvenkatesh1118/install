pipeline {
    agent any
    parameters {
        choice( name: 'TOOL',
        choices: ['ansible', 
                  'tarraform', 
                  'docker',
                  'graffana',
                  'jenkins',
                  'tomcat',
                  'jfrog'],
                description: 'Pick something')
                 }
    stages {
        stage("installing ${params.TOOL}") {
            steps {
                sh "bash ${params.TOOL}.sh"
           }
        }
    }
}

