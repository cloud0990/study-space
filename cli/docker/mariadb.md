```shell
$ docker pull mariadb

# -v : 컨테이너 재시작 시에도 데이터가 유지되도록 볼륨 매핑
$ docker run -d -p 3306:3306 -e MARIADB_ROOT_PASSWORD={password} -v ~/my-mariadb-data{dir in host}:/var/lib/mysql{dir in container} mariadb:latest

# mariadb 접속
$ docker exec -it {contianer name} {images name} -u root -p

# -e [options]
    -e MARIADB_ROOT_PASSWORD={password}
    -e MARIADB_DATABASE={database naem}
    -e MARIADB_USER={usern ame}
```   
   
<br>

mariadb container ip 확인
```shell
$ docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' <mariadb_container_name>
```