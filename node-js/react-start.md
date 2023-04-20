- 명령 프롬프트에서 create-react-app 설치

~~~
npm install -g create-react-app
~~~
<br>

- 기존 프로젝트에서 추가하려면, 해당 경로로 이동 후 생성
~~~
npx create-react-app appName
cd appName //해당 경로로 이동
npm start  //React start
~~~

<br>

- 이후 생성된 폴더 내, package.json 내에 연동할 프로젝트의 **서버포트와 일치하는 포트**를 설정 (proxy 부분 추가)

~~~ java
"proxy": "http://localhost:portNumber"
~~~