# Sample yaml files for testing aks, helm argocd  

### Summary  


| File name | Raw URL | Summary |
| --------- | ------- | ------- |
| aks_hello_world.yaml | [Hello world](https://raw.githubusercontent.com/ishanslab/azuresamples/main/AKS/sampleyamls/aks_hello_world.yaml) | YAML file for `Hello World` app on AKS. Creates **LoadBalancer** service with **External IP** on port `80`. |
| busybox.yaml | [busybox.yaml](https://raw.githubusercontent.com/ishanslab/azuresamples/main/AKS/sampleyamls/busybox.yaml) | This file creates a deployment called `aks-deployment` with two replicas of the `nginx` image in the `aks-namespace`. It also sets some resource limits and requests for the pods. |
| ns_sampleapp.yaml | [ns_sampleapp.yaml](https://raw.githubusercontent.com/ishanslab/azuresamples/main/AKS/sampleyamls/ns_sampleapp.yaml) | This file creates a service called `aks-service` of type `LoadBalancer` that exposes port 80 of the `aks-deployment` pods to the external network. It also assigns a static IP address to the service. |
| votingapp.yaml | [votingapp.yaml](https://raw.githubusercontent.com/ishanslab/azuresamples/main/AKS/sampleyamls/votingapp.yaml) | This file creates an ingress resource called `aks-ingress` that routes traffic from different hostnames to different services in the `aks-namespace`. It also enables TLS termination and uses a self-signed certificate. |

















Ref:
1. https://github.com/Azure-Samples/kubernetes-offer-samples/tree/main
   
