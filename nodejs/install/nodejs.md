`node.js 설치 후 버전 확인 ( cmd 창이 켜져있었다면 exit 후 재접속 )`

**Node.js 버전 확인 1**
~~~bash
$ node --version
~~~
---

`Node.js 버전 확인 2** _(*npm: Node Package Manager)`
~~~bash
$ npm --version
~~~
---
`cmd 실행 확인`
  - js 파일 생성 후 console.log('message')
  - **js파일 경로에서 cmd 실행** 하면 로그 찍힘

~~~bash
node fileName.js
~~~
---
`client 실행 확인`
  - js 파일 생성 후 아래 코드 작성 **http://localhost:port/fileName**

~~~ java
// require cf) java import
var http = require('http');

var server = http.createServer(function(request, response){
    // 사용자 측으로 반환값 넘기기
    // writeHead(http상태코드, {'Content-Type':'text and html'} key:value 형태/여러 개 O)
    response.writeHead(200, {'Content-Type':'text/html'});
    // html형태로 화면 출력
    response.end('Hello node.js World');

//        Port
}).listen(9900, function(){
    // cmd log
    console.log('wait while server is run...');
});
~~~