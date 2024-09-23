```shell
# .jar 파일이 있는 곳으로 이동 후 이미지 build
$ docker build -t {이미지명} .

# 이미지 확인
$ docker images
```
```shell
# 컨테이너 생성 및 실행
$ docker run -d --name {컨테이너명} -p {host port:container port} {실행할 images 명}
```
```shell
# 컨테이너 실행
$ docker start {container명 or ID}
```