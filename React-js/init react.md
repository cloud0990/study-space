~~~ javascript
      사용할컴포넌트명 from "폴더경로/js파일명"
import App from "js/App";

const root = ReactDOM.createRoot(document.getElementById("root"));

// 애플리케이션 시작 시 처음 랜더링
root.render(<App />);
~~~

<br>

1. 모든 Component 의 이름은 대문자로 시작
2. 소문자면 JSX 가 html tag와 혼동
    - ex) const button = < button> 으로 인식

~~~ javascript
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

**etc: 절대경로 설정**

package.json과 같은 경로에 jsconfig.json 추가
``` json
# jsonconfig.json

{
  "compilerOptions": {
    "baseUrl": "src"
  },
  "include": [
    "src"
  ]
}
```