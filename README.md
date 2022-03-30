## Prerequisites
 - Installed docker & docker-compose
 - The docker.service is running

## To Use 

### Start the docker container
    sudo docker-compose up -d 
    
### Get the container ip 
    sudo ./docker-ip.sh
    
### Connect to the database
    mysql -h <ip> -u sqlUser --password client_schedule