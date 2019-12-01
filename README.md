# Linux AMI Configuration

Contains solutions to some of the problems I encountered while deploying apps to *Amazon machine instances*

## The Docker Folder
contains a docker compose file that helps with deployment of the elk stack. ` 🔴Does not have xpack security 🔴`. Use it for quickly setting up the elk stack on your system. It also has an image for portainer for you to easily manage your volumes and images for the elk stack. 

##### This will expose the following ports on you machine

```
- "5601:5601" -> elastic
- "9200:9200" -> kibana
- "5044:5044" -> logstash

- 9000:9000  -> Portainer
- 8000:8000
```

## Usage
* Navigate to the folder containing the compose file. The run the following command

```
docker-compose up -d --build
```
##### This will build the entire stack, navigate to localhost:9000, this is where portainer is running, and you can verify that the stack is built up correctly



Please make sure to update tests as appropriate.


#### The nginx folder contains the advanced logging for nginx, which I used primarily to log the output of `x-real-ip` and `x-forwarded-for` to track the ip addresses of the incoming request

### ssh-config folder contains a guide to include your aws-ec2 pem files in your ssh-configs so that you don't have to manually enter entire configuration to log in to your remote system. The ssh-config file is self explanatory.

### Usage Example
```
    cd ~/.ssh
    nano ssh-config
    
    Host test.elasticsearch.marsplay
    HostName test.marsplay.co
    IdentityFile ~/.ssh/EC2_SSH_KEYS/Test_Elastic.pem
    User ec2-user
```
`Be sure to include the correct path for your .pem file, mine happened to be a folder named EC2_SSH_KEYS inside the .ssh directory . Run the following command `

* ``` ssh test.elastic.marsplay ```




## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.


## License
[MIT](https://choosealicense.com/licenses/mit/)