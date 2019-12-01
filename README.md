# Linux AMI Configuration

Contains solutions to some of the problems I encountered while deploying apps to *Amazon machine instances*

## The Docker Folder
contains a docker compose file that helps with deployment of the elk stack. ` 🔴Does not have xpack security 🔴`. Use it for quickly setting up the elk stack on your system. It also has an image for portainer for you to easily manage your volumes and images for the elk stack. 

```
- "5601:5601" -> elastic
- "9200:9200" -> kibana
- "5044:5044" -> logstash

- 9000:9000 . -> Portainer
- 8000:8000
```

## Usage
* Navigate to the folder containing the compose file. The run the following command

```
docker-compose up -d --build
```
##### This will build the entire stack, navigate to localhost:9000, this is where portainer is running, and you can verify that the stack is built up correctly

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
