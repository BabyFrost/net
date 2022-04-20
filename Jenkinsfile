pipeline {
	agent any
	
	stages {
	
	    stage( "Clean" ) {
	        steps {
	            bat "dotnet clean"
	        }
	    }

		stage( "Release" ) {
			steps {
	            bat "dotnet -c release"
	        }
	    }
	    	    
	    stage( "Docker build" ) {
	        steps {
	            bat "docker build -t voufi/net:latest ."
	        }
	    }
	    
	    stage( "Docker Tag" ) {
	        steps {
	            bat "docker tag voufi/net localhost:5000/voufi/net"
	        }
	    }
	    
	    stage( "Docker Push" ) {
	        steps {
	            bat "docker push localhost:5000/voufi/net"
	        }
	    }
	    
	}
}