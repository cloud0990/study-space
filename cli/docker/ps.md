```shell
#컨테이너 상태 확인
$ docker ps

# options
-a, --all   : 전체 컨테이너 조회
-q, --quiet : 컨테이너 ID만 출력
-f, --filter: 특정 조건 기준 컨테이너 필터링 조회
    --format: 출력 형식 사용자 정의 (ex. --format "{{.ID}}: {{.Names}}")
-n, --last  : 가장 최근에 생성된 n개의 컨테이너 표시
```