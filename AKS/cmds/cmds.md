# Few commands to manage AKS resources  

### List all pods in selected namesapces:  

```
for ns in sample-ns test2 test3; do echo namespace - $ns &&  kubectl get pod -n $ns; done
```

In above cmd, we loop throuh three namespaces (sample-ns, test2, test3), and list pods for each namespace.  
Instead of get you can delete the pods as well.
 

