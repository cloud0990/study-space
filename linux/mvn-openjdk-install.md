메이븐 설치
~~~
sudo apt install maven

# 버전 확인
mvn -version
~~~

<br>
<br>
처음 서버 연결하고 기본으로 open jdk 11 설치되어있어서
<br>
삭제하고 17 다시 설치함

~~~
# open jdk 11 삭제
sudo apt-get remove openjdk*
sudo apt-get autoremove --purge
sudo apt-get autoclean


# open jdk 17 설치
sudo apt-get install openjdk-17-jdk


# 버전 확인
java -version
~~~