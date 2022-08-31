// pipeline {
//     agent any
//     parameters {
//         choice( name: 'TOOL',
//         choices: ['ansible',],
//                    'tarraform',
//                 'docker',
//                    'graffana',                 'jenkins',
//                   'tomcat',
//                   'jfrog'],
//                 description: 'Pick something')
//                  }
//     stages {
//         stage('installing') {
//             steps {
//             sh '''
//                 echo ${params.TOOL}
//             '''
//            }
//         }
//     }
// }


pipeline {
 agent any
  parameters {

  choice(name: 'TOOL',
         choices:['docker',
                  'terraform',
                  'tomcat',
                  'jenkins'],
                  description: 'tool' )
  }
  stages{
  stage('install ${params.TOOL}'){
   when {
           expression { params.TOOL == 'jenkins' }
    }
  steps{
         sh 'bash jenkins.sh'
  }
  }



}
}


