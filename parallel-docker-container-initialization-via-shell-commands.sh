function deploy_nginx_cluster() {
    docker pull centos
    sleep 15
    for idx in 1 2
    do
        parallelize "$idx" &
    done
}

# Do not run containers in interactive mode
function parallelize(){
        docker run -d --restart=always --name=centos${idx} -p 808${idx}:80 centos/systemd:latest 
        docker exec -t centos${idx} /bin/bash -c "yum -y update; yum -y install epel-release; yum -y install nginx; cd /usr/sbin; ./nginx"
}

deploy_nginx_cluster
