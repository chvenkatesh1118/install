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
   when {
   params.NAME 'nginx'
   }
  steps{

   sh 'yum install nginx -y'

  }
  }
  }
  tage(STAGE){
     when {
     params.NAME 'httpd'
     }
    steps{

     sh 'yum install httpd -y'

    }
    }
    }

  }



