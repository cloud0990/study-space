`startDomainAdminServer`
```shell
# FileNotFoundException
$USER="current os username"

$ sudo chown -R $USER:$USER $JEUS_HOME #bin 이전 경로까지
```
```shell
# Unable to acquire file lock
# 서버가 중지된 상태에서 잠금파일 삭제 후 서버 재시작
$USER="current os username"

$ rm /home/$USER/jeus8_5/domains/jeus_domain/servers/adminServer/.workspace/tmp/adminServer.lck
```
```shell
# SecurityException
# 현재 서버의 hostname과 매칭되어 있는 ip를 실제 서버의 NIC에 할당된 주소로 변경
$ sudo vi /etc/hosts
$ source /etc/hosts

# 재부팅 시 변경된 내용을 유지하도록 파일 시스템 설정
$ chatter +i /etc/hosts
```