| 프로세스           | 기본 포트 | 설명                                                                 |   
|-------------------|-------|--------------------------------------------------------------------|
| adminServer (DAS) | 9736  | JEUS 도메인 관리 및 web admin을 띄워주는 프로세스                                |
| nodeManager       | 7730  | 각 노드 별로 컨테이너를 기동 및 관리해주는 프로세스                                     |
| managedServer(MS) | 8088  | webapp이 배포되어 실제 서비스가 이루어지는 프로세스/nodeManager가 기동되어 있지 않다면 MS 기동 불가능 |
---

`window`
```shell
# JEUS Admin 실행
# http://localhost:9736/webadmin
$ startDomainAdminServer -u {admin username} -p {admin pwd}
# JEUS 콘솔 접속
$ jeusadmin -host {hostname:port} -domain {domain name} -u {username} -p {password}

# JEUS 서버 기동
$ startManagedServer -domain {domain name} -server {server name} -u {user name} -p {password}

# Node Manager start/stop -> JEUS_HOME 경로로 이동 후
$ startNodeManager -domain {domain name} -u {username} -p {password}
$ stopNodeManager -host {host name} -port {port} #$JEUS_HOME/bin/nodemanager/jeusnm.xml 에서 확인
```
---
`Linux`
```shell
# /etc/hosts 파일에서 hostname ip 주소를 localhost 가 아닌, NIC ip로 지정

#java 8 이상 설치
$ sudo apt install openjdk-8-jdk

# Jeus 8.5 설치파일 실행
$ chmod 705 {jeus 설치파일}.bin
$ ./{jeus설치파일}
>> /home/{user}/jeus8_5

# jeus username/password 관리자 계정 입력
$ vi /home/{user}/jeus8_5/bin/jeus.properties
>> $JEUS_USERNAME $JEUSPASSWORD 입력 후, export JEUS_USERNAME JEUSPASSWORD 주석 제거

#adminServer 실행
$ ./startDomainAdminServer #관리자 계정 입력한 경우
$ ./startDomainAdminServer -domain {domain name} -u {username} -p {password} #관리자 계정 입력 안 한 경우

#node manager 실행: 백그라운드 실행이 안 되기 때문에 nohup 실행
$ nohup startNodeManager > {nodemanager log file 경로} &

# web 접속
>> [서버 IP]:9736/webadmin

#MS 시작
$ startManagedServer -dasurl {DAS IP:DAS PORT} -domain {domain name} -server {server name} -u {username} -p {password}
```
---
`Linux jeus 종료 명령어`
```shell
#node manager
$ stopNodeManager -host {서버 IP} -port {node manager port}

#jues DAS
$ jeusadmin -host {서버 IP:서버 PORT} -domain {domain name} -u {username} -p {password} local-shutdown

# MS
$ stopServer -host {MS IP:MS BASSPORT} -u {username} -p {password}
```
