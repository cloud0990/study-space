echo
touch
grep -v -e

```javascript
// seq: 연속된 숫자 나열
// 기본 구분자: new line
// -s: 구분자 지정

// 1 ~ n
$ seq 3
1
2
3

// n ~ m
$ seq -s " " 1 5
1 2 3 4 5

// 시작 숫자, 증분, 종료수자
// 증분 수 만큼 증가
$ seq -s " " 1 3 10
1 4 7 10

$ seq -s " " 10 -3 1
10 7 4 1


echo "Example 1"
#!/bin/bash

for i in $(seq 1 3 10);
do
printf "$i "
done
1 4 7 10


echo "Example 2"
NUMBER=`seq -w 1 10`
echo "$NUMBER | grep -v -e 04 -e 07 - 10"
01 02 03 05 06 08 09
```

```javascript
// echo

$ echo $(date)
Thu Apr 20 06:19:06 UTC 2023

// 텍스트 내용의 신규 파일 생성
$ echo 텍스트 > 신규 파일명

$ echo "Hello" > test
$ cat test.txt
Hello
```

