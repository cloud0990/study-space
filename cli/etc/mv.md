```shell
# 옵션
-b: 이동 위치에 파일명이 중복일 경우, 백업파일 생성
-v: 이동 진행 상태 출력
-r: 하위 디렉토리까지 모두 이동

-i: 파일이 이미 존재할 경우, 덮어 쓰기 여부 물음
-f: 파일이 이미 존재하더라도 강제로 이동/덮어쓰기
-n: 이동 파일명이 이미 존재할 경우, 덮어쓰기 X
```
---
```shell
# 파일 위치 이동
$ mv <옵션> <원본 파일> <이동 위치>

# 파일을 복사하여 새로운 파일 생성
$ cp <원본 파일> <복사할 위치>
```
---
ex.
```shell
#    이동파일1  이동파일2   이동파일3   이동위치
$ mv test.txt test2.txt test3.txt /testfolder/test

# 현재위치 이동위치: 현재 위치의 모든 파일 이동
$ mv * /testfolder/test

# 현재위치의 하위디렉토리 모두 이동
$ mv -r * /testfolder/test
```