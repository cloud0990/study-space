현재 정책 확인
``` bash
Get-ExecutionPolicy
```

<br>

정책 변경
``` bash
Set-ExecutionPolicy
```

<br>

실행 정책 종류

```
Restricted
    스프립트 파일(.ps1) 실행 불가

RemoteSigned
    원격에서는 서명된 스크립트 파일만, 로컬에서는 모든 스크립트 파일 실행 가능

AllSigned
    신뢰가능한 인증기관의 서명이 있어야 실행 가능
    로컬에서 작성된 스크립트 파일이더라도 서명이 없다면 실행 불가


ByPass
    다른 애플리케이션에 스크립트 파일이 내장되어있거나, 별도의 자체 보안을 갖추었을 때 설정하기 위한 정책
    차단되거나 경고 없이 실행 가능

```