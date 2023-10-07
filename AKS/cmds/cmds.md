# Few commands to manage AKS resources  

### List all pods in selected namesapces:  

```bash
for ns in sample-ns test2 test3; do echo namespace - $ns &&  kubectl get pod -n $ns; done
```

In above cmd, we loop throuh three namespaces (sample-ns, test2, test3), and list pods for each namespace.  
Instead of get you can delete the pods as well.
 
### List all pods in all namespaces:  

```bash
for pod in $(kubectl get namespace --output=jsonpath={.items..metadata.name}); do echo $pod && kubectl get pod -n $pod ; done
```

