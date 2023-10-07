# Sample yaml files for testing aks, helm argocd  

### Summary  

| File name | Raw URL | Summary |
| --------- | --------- | --------- |
| aks_hello_world.yaml | [Hello world](https://raw.githubusercontent.com/ishanslab/azuresamples/main/AKS/sampleyamls/aks_hello_world.yaml)| YAML file for `Hello World` app on AKS. Creates **LoadBalancer** service with **External IP** on port `80`.  |
| busybox.yaml | [busybox.yaml](https://raw.githubusercontent.com/ishanslab/azuresamples/main/AKS/sampleyamls/busybox.yaml)| YAML file for `BusyBox` app on AKS. Creates **Deployment** with one replicas of the `busybox` image in the `default` namespace. |
| ns_sampleapp.yaml |[ns_sampleapp.yaml](https://raw.githubusercontent.com/ishanslab/azuresamples/main/AKS/sampleyamls/ns_sampleapp.yaml) | YAML file for `SampleApp` app on AKS. Creates **Namespace** called `sample-ns` and deploys a simple web server in it. It also creates a **Service** of type `ClusterIP` that exposes port 80 of the web server pods. |
| votingapp.yaml | [votingapp.yaml](https://raw.githubusercontent.com/ishanslab/azuresamples/main/AKS/sampleyamls/votingapp.yaml)  | YAML file for `VotingApp` app on AKS. Creates a multi-container application that allows users to vote for their favorite option. It consists of four components: a **frontend** service, a **backend** service, a **Redis** service, and a **PostgreSQL** service. It also creates an **Ingress** resource that routes traffic to the frontend service. |   


### To apply the files  

**aks_hello_world**
```
kubectl apply -f https://raw.githubusercontent.com/ishanslab/azuresamples/main/AKS/sampleyamls/aks_hello_world.yaml -n your_namespace
```  

**busybox**
```
kubectl apply -f https://raw.githubusercontent.com/ishanslab/azuresamples/main/AKS/sampleyamls/busybox.yaml
```  

**ns_sampleapp**
```
kubectl apply -f https://raw.githubusercontent.com/ishanslab/azuresamples/main/AKS/sampleyamls/ns_sampleapp.yaml -n your_namespace
```  

**votingapp**
```
kubectl apply -f https://raw.githubusercontent.com/ishanslab/azuresamples/main/AKS/sampleyamls/votingapp.yaml -n your_namespace
```  
 

### Ref:
1. https://github.com/Azure-Samples/kubernetes-offer-samples/tree/main
   
