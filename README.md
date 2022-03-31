## Prerequisites
 - Installed docker & docker-compose
 - The docker.service is running

## To Use 

### Start the docker container
    ./docker-up.sh 
    
### Connect to the database
    mysql -h "$(./docker-ip.sh | head -n 1)" -u sqlUser --password client_schedule        

### Stopping the database
    docker-compose down

### Resetting the database
    docker-compose down 
    sudo rm -rf data/**

## Troubleshooting

### Database wasn't initialized
The database can be manually initialized using this command
    cat initdb.d/* | mysql -h "$(./docker-ip.sh | head -n 1)" -u sqlUser --password client_schedule