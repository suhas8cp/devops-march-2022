pipeline {
    
	agent { label 'slave2' } 
    
	stages {
			
			stage('Build') {
				steps {
					sh ''' 
							echo "STAGE 1: This is a build stage"
							sleep 5
					   '''
				}
			}
					
			stage('Test and Deploy') { 
				parallel {
					
					stage('Test') { 
						steps {
							sh '''
								   echo "STAGE 2: This is a Test stage"
								   sleep 5
							   ''' 
						}
					}
					
					stage('Deploy') { 
						steps {
							sh ''' 
									echo "STAGE 3: This is a Deploy stage"
									sleep 5
							   '''
						}
					}
		
				}	
			}
    }
}
