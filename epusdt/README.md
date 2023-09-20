.env环境配置文件放在命令执行的当前目录，然后运行以下命令：

```bash
docker run -d -p 8000:8000  \
--name epusdt-demo  --add-host host.docker.internal:host-gateway \
-v $(pwd)/.env:/app/.env baicailin/epusdt:alpine \
&& docker logs -f epusdt-demo
```
```.env```中数据库主机可配置为：
```
host.docker.internal
```
