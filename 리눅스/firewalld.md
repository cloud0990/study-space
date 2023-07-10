firewalld 상태 확인

~~~
firewall-cmd --status

# result: running or not running
~~~
 
<br>

사용가능한 서비스/포트 출력

~~~ java
firewall-cmd --list-all
~~~

<br>

TCP 포트 추가 및 제거

~~~ java
// 포트 추가
firewall-cmd --add-port=포트/tcp

// 방화벽 재시작, 시스템 재부팅 후에도 적용되도록 추가
firewall-cmd --permanent --add-port=포트/tcp

// 포트 삭제
firewall-cmd --remove-port=포트/tcp
~~~

<br>

서버 재시작 후에도 실행되도록 설정

~~~
systemctl enable firewalld
systemctl start firewalld
~~~

<br>

---

**용어 정리**

~~~
sudo : 관리자 권한 실행
--permanent: 영구적으로 실행 (default zone에 등록)
--add-service: 서비스 추가
--remove-service: 서비스 삭제
~~~