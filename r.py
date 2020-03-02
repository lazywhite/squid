import requests

r = requests.get("http://www.baidu.com")
print(r.status_code)

r = requests.get("http://www.hao123.com")
print(r.status_code)
