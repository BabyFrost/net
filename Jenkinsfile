pipeline {
	agent any
	
	stages {
	
	    stage( "Compile" ) {
	        steps {
	            bat "mvn clean package"
	        }
	    }
	    	    
	    stage( "Docker build" ) {
	        steps {
	            bat "docker build -t voufi/demo:latest ."
	        }
	    }
	    
	    stage( "Docker Tag" ) {
	        steps {
	            bat "docker tag voufi/demo localhost:5000/voufi/demo"
	        }
	    }
	    
	    stage( "Docker Push" ) {
	        steps {
	            bat "docker push localhost:5000/voufi/demo"
	        }
	    }
	    
	}
}