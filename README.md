# Proxy manipulating GET param

> Docker image with proxy manipulating $_GET['auth'] into basic auth. 

Will turn `http://proxy/?auth=abcdef` into `PROTO://UPSTREAM:PORT` with header `Authorization "Basic abcdef"`


#### ENV variables:

- `SERVER_NAME`: name of server where is proxy running
- `PROTO`: protocol of upstream
- `UPSTREAM_ADDRESS`: address of upstream
- `UPSTREAM_PORT`: port of upstream

