To build images locally

    ./gradlew buildBaseImages

Flowable-UI - 

  to run flowable-ui image locally and use h2 database then run this docker command
    
    docker run -e SPRING.DATASOURCE.DRIVER-CLASS-NAME="org.h2.Driver" -e SPRING.DATASOURCE.URL="jdbc:h2:~/flowable-db/engine-db;AUTO_SERVER=TRUE;AUTO_SERVER_PORT=9093;DB_CLOSE_DELAY=-1" -e SPRING.DATASOURCE.USERNAME="flowable" -e SPRING.DATASOURCE.PASSWORD="flowable" -p 8080:8080 docker-ifs.devops.innovateuk.org/releases/ifs-flowable-ui:6.6.0
    
  to use local mysql database remove SPRING.DATASOURCE.DRIVER-CLASS-NAME="org.h2.Driver" and pass relevant mysql url, username & password to above command 