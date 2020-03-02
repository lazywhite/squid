# Build
```
sh build.sh <version> 
```
# Test
```
sh run.sh <version>
curl -v -x http://localhost:3128 www.baidu.com
http_proxy=http://localhost:3128 https_proxy=http://localhost:3128 python3 r.py
```

# Deploy
```
kubectl apply -f pod.yml   # use local/squid:5
kubectl exec -it proxy -c alpine -- wget www.baidu.com
kubectl edit configmap squid-config  # add/remove allowed domain
kubectl logs -f proxy squid # wait to see squid reload
```
