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
  stage('install nginx'){
   when { anyoff {
   expression { params.NAME == 'nginx'}
   }
   }
  steps{
    sh 'yum install nginx -y'

  }
  }

   stage('install httpd'){
    when { anyoff {
    expression { params.NAME == 'httpd'}
    }
    }
   steps{
     sh 'yum install httpd -y'

   }
   }
}




