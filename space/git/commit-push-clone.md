~~~ Java
//현재 디렉토리 깃 저장소 생성
$ git init .

//원경 저장소 <-> 로컬 저장소 연결
$ git remote add origin https://github.com/계정명/저장소명

//상태 확인
$ git status

//변경사항 추가
$ git add -A
$ git add .
~~~
<br>

~~~ Java
// Commit
$ git commit -m "Commit Message"

// Push
$ git push <remote> <branch>
// ex: git push origin master

// Pull
$ git pull <remote> <branch>
~~~
<br>

~~~ Java
//브렌치 조회
$ git branch

//브렌치 생성
$ git branch <신규 branch> <분기 branch>
// ex: git branch newbranch master

//브렌치 삭제
$ git branch -D <삭제 branch>

//브렌치명 수정
$ git branch -m <기존 branch> <신규 branch>
~~~
<br>

~~~ Java
//체크아웃
$ git checkout <branch>
~~~

<br>

``` Java
//클론
git clone https://github.com/cloud0990/Just-ABCD.git
```