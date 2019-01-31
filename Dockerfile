FROM tomcat:8.5
MAINTAINER Swathi<ch.swathireddy05@gmail.com>
COPY $(workspace/NewPipeline/target/demo.war /usr/local/tomcat/webapps/hello.war)

