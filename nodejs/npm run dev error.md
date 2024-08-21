WSL 에서 create-next-app 설치하고 실행했다.

<br>

메모리 부족으로 live reload도 안 되고 느려서 윈도우 cmd 에서 실행하려고 하는데 

```
'next'은(는) 내부 또는 외부 명령, 실행할 수 있는 프로그램, 또는 배치 파일이 아닙니다.
```

<br>

아래로 해결했다.

```bash

# 1. 캐시 삭제
$ npm cache clean --force # 강제로 npm cache 전체 삭제
# or
$ npm cache verify # cache 에서 꼬인 부분을 체크, 해결 

# 2. 모듈 폴더 삭제
$ rm -rf node_modules   # Linux
$ rmdir /s node_modules # Window

# 3. package-lock.json 삭제
$ rm package-lock.json  # Linux
$ del package-lock.json # Window

# 4. 모듈 재설치
$ npm install

# 실행
$ npm run dev
```