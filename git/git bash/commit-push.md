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
<br>

``` bash
# 커밋
$ git commit -m "커밋 메세지"

# 푸쉬
$ git push <remote> <branch>
# ex: git push origin master

# 풀
$ git pull <remote> <branch>
```