~~~
- event.target
이벤트가 처음 발생한 요소

- event.currentTarget (= this)
현재 요소; 현재 실행 중인 핸들러가 할당된 요소 참조
~~~

<br>

~~~html
<!-- 캡쳐링 (Capturing): 이벤트가 하위 요소로 전파되는 단계 -->
<!-- result: div click -> btn click alert execution -->
<div onClick={() => alert("div click")}>
    <button onClick={() => alert("btn click")}></button>
</div>

<!-- 버블링 (Bubbling): 이벤트가 상위 요소로 전파되는 단계 -->
<!-- result: btn click -> div click alert execution -->
<div onClick={() => alert("div click")}>
    <button onClick={() => alert("btn click")}></button>
</div>
~~~

<br>

ex.
~~~javascript
// js
<script>
    $(() => {
        $("#A, #B").click((e) => {
            console.log(e.target.id)
            // result: "" || A || B

            console.log(e.currentTarget.id)
            // result: event trigger target id value
        });
    });
</script>

// html
<div>
    <button id="A">A</button>
    <button id="B">B</button>
</div>
~~~