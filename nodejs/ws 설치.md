***ws: Node.js WebSocket Library***

<br>

~~~ bash
# 최신 버전 설치 (9.4.0)
$ npm i ws
~~~

최신버전 설치 후 클라이언트에서 socket.send() 로 전송된 데이터 형태:  **<Buffer 31 30 33>**

<br>

**문제 원인**
1. ws 버전

~~~ bash
# 삭제
$ npm ws remove

# 버전 지정
$ npm i ws@7.5.3 --save
~~~

<br>

2. 인코딩
~~~ javascript
import http from "http";
import WebSocket from "ws";

// Http Server set
const server = http.createServer(app);
// WebSocket Server set
const wss = new WebSocket.Server({ server });

wss.on("connection", (socket) => {
    socket.on("message", (msg) => {
        socket.send(msg.toString());
    });
});
~~~