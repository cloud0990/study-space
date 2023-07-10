- 메이븐 설치
~~~
sudo apt install maven

# 버전 확인
mvn -version
~~~

<br>

- openjdk 설치

~~~
# open jdk 삭제
sudo apt-get remove openjdk*
sudo apt-get autoremove --purge
sudo apt-get autoclean


# open jdk 17 설치
sudo apt-get install openjdk-17-jdk


# 버전 확인
java -version
~~~