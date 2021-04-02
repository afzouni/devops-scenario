# DevOps Scenario

## Initilizign Docker Swarm
1. Install Docker + Docker-Compose
2. Initilizing nodes 


## GlusterFS
Some Services need persistent volumes (such as MySQL) and in this scenatio GlusterFS has beed used.

Refrence: [Setup Highly Available applications with Docker Swarm and Gluster](https://medium.com/running-a-software-factory/setup-3-node-high-availability-cluster-with-glusterfs-and-docker-swarm-b4ff80c6b5c3)

## Wordpress 
1. Wordpress
2. MySQL
3. Nginx (Load Balancer)

### Nginx
Nginx's Deployment implemented by ansible and Jinja2 (Ansible Templating)

## Gitlab
1. Installing Gitlab using ansible
2. Deploy local registry 
3. Enabling Gitlab Docker-Registry

## Prometheus
1. cadvisor
2. prometheus
3. node-exporter
4. Grafana

### Screenshoots
#### Node exporter metrics
![Node exporter metrics](https://github.com/afzouni/devops-scenario/blob/main/monitoring/grafana-dashboards/Node%20exporter%20metrics%20on%20docker%20swarm%20mode-1617393929909.png?raw=true)

#### Docker and system monitoring
![Docker and system monitoring](https://github.com/afzouni/devops-scenario/blob/main/monitoring/grafana-dashboards/Docker%20and%20system%20monitoring-1617394066053.png?raw=true)

#### Cluster Simple Overview
![Cluster Simple Overview](https://github.com/afzouni/devops-scenario/blob/main/monitoring/grafana-dashboards/Cluster%20Overview-1617394545212.png?raw=true)

## ELK (Simple)
1. Implement ELK Stack 
2. Parsing any incomming log
3. Using gelf log driver