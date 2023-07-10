**const [0, fn] = useState(Default Value Set);**
<br>

const [현재 값, 현재값을 바꿀 함수] = useState(현재 state 기본값 설정 가능);

~~~ javascript
import { useState } from "react";

function Test() {

    const [cnt, setCnt] = useState(0);

    const onClick = (e) => {

        // React 내장 함수에 값 전달
        //     previous state or current state
        setCnt((currCnt) => currCnt + 1);
    };

    return (
        <div>
            <button onClick={onClick}>Click me!</button>
            <h1>Total Click : {cnt}</h1>
        </div>
    );
}

export default Test;
~~~

<br>

**etc**
~~~ html
// HTML
<label for=""></label>
<input class="" />

// React
<label htmlFor=""></label>
<input className="" />
~~~
