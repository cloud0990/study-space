localhost 에서 API 로 데이터 Insert 도중 발생\
URL 에 지정된 주소 불일치 케이스

>org.springframework.web.client.ResourceAccessException: I/O error on GET request for ... Connection timed out: connect; nested exception is java.net.ConnectException:

<br>

**ResourceAccessException: I/O 도중 연결에 문제가 있을 경우**

<br>
다음과 같은 경우에도 발생 가능성 있음

1. 주소에 서버가 없음
2. 서버가 있고 요청을 수락하도록 설정되어 있지만 주소 틀림
3. 방화벽이 요청이 서버 프로세스 연결 차단
4. 서버가 있지만 해당 설정으로 인해 서버가 거부