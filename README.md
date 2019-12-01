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

` ssh-config directory in this project contains a guide to include your aws-ec2 pem files in your ssh-configs, so that you don't have to manually enter entire configuration to log in to your remote system.  At the end of this you will be able to ssh using a single line of code, which can be optimised to your taste. The ssh-config file contains comments to make the installation simpler.  `

- Host is an alias you give to your connection
- Hostname can be an ip or domain name for your ec2-instance
- Identity is the location of .pem file
- User is the default user for remote instance [mine is amazon linux, the default user for linux ami is ec2-user, yours may be called root]

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
you will be connected to your remote system




## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.


## License
[MIT](https://choosealicense.com/licenses/mit/)