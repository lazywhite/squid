docker run --rm -d  -p 3128:3128 -e ALLOWED_DOMAINS=".baidu.com .github.com"  local/squid:$1 
