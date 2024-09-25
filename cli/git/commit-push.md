``` bash
# 현재 디렉토리 깃 저장소 생성
$ git init .

# 원경 저장소 <-> 로컬 저장소 연결
$ git remote add origin < 원격 저장소 URL >

# 상태 확인
$ git status

# 변경사항 추가
$ git add -A
    # or
$ git add .
```
---
``` bash
# commit
$ git commit -m "커밋 메세지"

# push
$ git push <remote> <branch>
# ex: git push origin master

# pull
$ git pull <remote> <branch>
```