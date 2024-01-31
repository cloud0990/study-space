```bash
npm i gh-pages
```
<br>

package.json
```bash
# script 부분에 추가

"deploy": "gh-pages -d build",
"predeploy": "npm run build";

# 파일 맨 하단에 추가
"homepage": "https://<계정명>.github.io/<Repository명>"
```

<br>

깃허브 레포지토리 설정 > Pages 탭 > Branch를 gh-pages 로 설정