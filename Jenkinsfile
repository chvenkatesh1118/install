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

  choice(name: 'NAME', choices:['nginx','httpd'],description: 'myname' )
  }
  stages{
  stage(STAGE){
  steps{

   yum install "${params.NAME}" -y

  }
  }
  }

  }



