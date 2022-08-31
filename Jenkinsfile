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

  steps{
      if [ ${params.NAME} -eq nginx ];
         then
         sh 'yum install nginx -y'
  }
  }

   stage('install httpd'){

   steps{
   if [ ${params.NAME} -eq httpd ];
     then
     sh 'yum install httpd -y'

   }
   }
}

}


