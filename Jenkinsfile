pipeline {
    agent any
    parameters {
        

        choice(name: 'CHOICE', 
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
        stage('installing ${params.CHOICE}') {
            steps {
                sh 'ansible-playbook -i server.inv ansible.yml'
           }
        }
    }
}