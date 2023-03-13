~~~ Java
//현재 디렉토리 기준으로 깃 저장소 생성
$ git init
//파일 상태 확인
$ git status
// 원경 저장소 <-> 로컬 저장소 연결
$ git remote add origin https://github.com/계정명/저장소명
~~~
<br>

~~~ Java
//커밋
$ git commit -m "커밋 메세지"
//푸쉬
$ git push <remote> <branch>
// ex: git push origin master
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