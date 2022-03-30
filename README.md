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
        

## Troubleshooting

### Database wasn't initialized
The database can be manually initialized using this command
    cat initdb.d/* | mysql -h 172.22.0.2 -u sqlUser --password client_schedule