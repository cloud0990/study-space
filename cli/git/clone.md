``` shell
# remote repo URL 을 현재 위치에 복제
$ git clone {복제할 원격 저장소 URL} {프로젝트명 (생략 시, 원격 저장소명)}
```
``` shell
# 원격 저장소 목록 확인
$ git remote -v

# 로컬 PC에 클론한 Fork 저장소를 원격 연결
$ git remote add <원격 저장소 별칭> <원격 져장소 URL>
```
---
`클론 후 첫 commit 시 오류 발생 시`
``` shell
# Author identity unknown
# *** Please tell me who you are.
# Run
# git config --global user.email "you@example.com"
# git config --global user.name "Your Name"

# 해결: 메세지 내용대로 이메일주소/이름 입력

$ git config --global user.email <이메일 주소>
$ git config --global user.name <이름>
```
