```javascript
// 작은 따옴표: 문자열 그대로 출력
$ echo '$SHELL'
>> $SHELL

// 큰 따옴표: 변수가 가진 값 출력
$ echo "$SHELL"
>> /bin/bash

// 역 따옴표: 안의 명령문 실행 결과 반환
$ echo `pwd`
>> /home/ubuntu
```