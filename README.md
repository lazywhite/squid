# Build
```
sh build.sh <version> 
```
# Test
```
sh run.sh <version>
curl -v -X http://localhost:3128 www.baidu.com
```

# Deploy
```
kubectl apply -f pod.yml   # use local/squid:5
kubectl exec -it proxy -c alpine -- wget www.baidu.com
```
