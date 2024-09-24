firewalld 상태 확인
~~~bash
$ firewall-cmd --status
# result: running or not running
~~~
---
사용가능한 서비스/포트 출력
~~~ bash
$ firewall-cmd --list-all
~~~
---
TCP 포트 추가 및 제거
~~~ bash
# 포트 추가
$ firewall-cmd --add-port=포트/tcp

# 방화벽 재시작, 시스템 재부팅 후에도 적용되도록 추가
$ firewall-cmd --permanent --add-port=포트/tcp

# 포트 삭제
$ firewall-cmd --remove-port=포트/tcp
~~~
---
서버 재시작 후에도 실행되도록 설정

~~~bash
$ systemctl enable firewalld
$ systemctl start firewalld
~~~
  ---
**용어 정리**

~~~
sudo : 관리자 권한 실행
--permanent: 영구적으로 실행 (default zone에 등록)
--add-service: 서비스 추가
--remove-service: 서비스 삭제
~~~