`메이븐 설치`
~~~bash
$ sudo apt install maven
$ mvn -version
~~~
---
`openjdk 설치`
~~~bash
# open jdk 삭제
$ sudo apt-get remove openjdk*
$ sudo apt-get autoremove --purge
$ sudo apt-get autoclean

# open jdk 설치
$ sudo apt-get install openjdk-{version}-jdk
$ java -version
~~~