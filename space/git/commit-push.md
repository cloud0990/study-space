``` Java
//현재 디렉토리 깃 저장소 생성
$ git init .

//원경 저장소 <-> 로컬 저장소 연결
$ git remote add origin https://github.com/계정명/저장소명

//상태 확인
$ git status

//변경사항 추가
$ git add -A
$ git add .
```
<br>

``` Java
// Commit
$ git commit -m "Commit Message"

// Push
$ git push <remote> <branch>
// ex: git push origin master

// Pull
$ git pull <remote> <branch>
```