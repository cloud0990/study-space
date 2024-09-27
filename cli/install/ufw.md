```shell
$ sudo apt install ufw

$ sudo ufw enable

# 필요한 포트 허용 Ex
$ sudo ufw allow 'Nginx Full'
$ sudo ufw allow 80 # 개별 포트 지정
$ sudo ufw allow 443

# 상태 확인
$ sudo ufw status
```