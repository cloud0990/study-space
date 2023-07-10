**Array.map()**
<br>
주로 배열 요소에 변경 사항 적용\
return 값으로 새로운 Array 반환

~~~ JavaScript

let arr = ["hello", "hi"];

// 첫번째 argument: Array item
arr = arr.map((item) => item.toUpperCase());
console.log ["HELLO", "HI"]

// 두번째 argument: index
arr = arr.map((item, index) => index)
console.log [0, 1]

// 세번째 arguent: 전체 Array
arr = arr.map((item, index, allArr) => allArr);
console.log
(2) [Array(2), Array(2)]
0: ["hello", "hi"]
1: ["hello", "hi"]

arr = arr.map((item, index, allArr) => allArr[index].toUpperCase());
console.log ["HELLO", "HI"]


//Etc
let arr = [1, 2, 3, 4, 5, 6];

// for
for(let i=0; i<arr.length; i++) {
    arr[i] *= 3;
}

// Array.map()
arr = arr.map((item, index) => item * 3);

console.log [3, 6, 8, 12, 15, 18]
~~~
