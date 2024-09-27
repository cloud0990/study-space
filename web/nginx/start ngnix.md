`install ngnix`
```shell
$ sudo apt update
$ sudo apt install nginx

# 서비스 시작
$ sudo systemctl start nginx

# 부팅 시 자동으로 시작되도록 설정
$ sudo systemctl enable nginx

# 방화벽 설정
sudo ufw allow 'Nginx HTTP' #Nginx HTTPS
# 확인 -> http://server_ip
$ sudo ufw status
$ sudo systemctl status nginx

# nginx reload
$ sudo nginx -s reload

# +) nginx 삭제
$ sudo apt remove nginx
```
---
`nginx 새 사이트 설정`
```shell
# 사이트 구성 경로
$ cd /etc/nginx/sites-available/

# 위 경로에 파일 생성 하고 구성 내용 추가

$ cd /etc/nginx/sites-available-enabled/

# 위 경로에 심볼릭 링크 생성
$ sudo ln -s /etc/nginx/sites-available/{site name} /etc/nginx/sites-enabled/

# 구성 확인
$ sudo nginx -t

# reload
$ sudo systemctl reload nginx
```
