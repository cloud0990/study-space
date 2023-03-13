- 모든 Component 의 이름은 대문자로 시작
~~~
// A Component
function App() {
    
    // JSX
    return (
        <div>
            <h1>{helloWorld}</h1>
        </div>
    );
}

export default App;
~~~
<br>

- index.js 에서...

1. 직접 만든 컴포넌트 첫 글자는 반드시 대문자로 표기
2. 소문자면 JSX 가 html tag와 혼동 ex) const button = < button> 으로 인식

~~~
      사용할컴포넌트명 from "폴더경로/js파일명"
import App from "js/App";

const root = ReactDOM.createRoot(document.getElementById("root"));

// 어플리케이션 시작시 처음 랜더링
root.render(<App />);
~~~

<br>

**etc...**
<br>
절대경로로 설정하고 싶은 경우,
<br>
package.json과 같은 경로에 jsconfig.json 파일을 추가하여 아래와 같이 입력
~~~
{
  "compilerOptions": {
    "baseUrl": "src"
  },
  "include": [
    "src"
  ]
}
~~~
