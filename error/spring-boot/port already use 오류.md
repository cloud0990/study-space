해당 포트를 이미 사용 중일 때
<br><br>

>The Tomcat connector configured to listen on port ‘PortNumber’ failed to start. The port may already be in use or the connector may be misconfigured.

<br>

**윈도우 명령프롬프트**\
netstat : network statistics\
-a : 모든 연결 및 수신 대기 포트\
-n :  주소 및 포트 번호를 숫자 형식으로 표시\
-o : 각 연결의 소유자 프로세스 ID를 표시
~~~ java
netstat -ano | findstr '검색'

TCP   0.0.0.0:8080   0.0.0.0:0   LISTENING   PID(Ex. 0000)

// PID /f 강제종료
taskkill /pid 0000 /f
~~~

<br>

**리눅스**\
ps - [옵션]
~~~ java
// ps -ef : UID PID PPID C STIME TTY TIME CMD 표시
ps -ef | grep '검색'

kill -9 PID
~~~

