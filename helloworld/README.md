# Knative Hello world

## Setup
### 1. GKE Cluster
#### Setup environment
```console
$ export CLUSTER_NAME=[CLUSTER_NAME]
$ export CLUSTER_ZONE=[CLUSTER_ZONE]
```

#### Create Cluster
```console
$ sh ./scripts/create_cluster.sh
```

### 2. istio
```console
$ sh ./scripts/setup_istio.sh
```

### 3. Knative
```console
$ sh ./scripts/setup_knative.sh
```

### 4. Application
#### Build image
```console
$ docker build -t ryutah/helloworld-go ./app/Dockerfile
```

#### Push image
```console
$ docker push ryutah/helloworld-go
```

### 5. Deploy service
```console
$ sh ./scripts/deploy_service.sh
```


## Send Request
```console
$ sh ./scripts/send_request.sh
```


## Clean up
```console
```
