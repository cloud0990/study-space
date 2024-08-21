프로젝트 생성
```bash
$ mkdir 프로젝트명
$ cd 프로젝트명
```  

그레이들 초기화
```bash
$ gradle init

### 선택
Starting a Gradle Daemon (subsequent builds will be faster)

Select type of project to generate:
  1: basic
  2: application
  3: library
  4: Gradle plugin
Enter selection (default: basic) [1..4] 2

Select implementation language:
  1: C++
  2: Groovy
  3: Java
  4: Kotlin
  5: Scala
  6: Swift
Enter selection (default: Java) [1..6] 3

Generate multiple subprojects for application? (default: no) [yes, no]
Select build script DSL:
  1: Groovy
  2: Kotlin
Enter selection (default: Groovy) [1..2] 2

Select test framework:
  1: JUnit 4
  2: TestNG
  3: Spock
  4: JUnit Jupiter
Enter selection (default: JUnit Jupiter) [1..4]

Project name (default: design-patterns):
Source package (default: design.patterns):
Enter target version of Java (min. 7) (default: 17):
Generate build using new APIs and behavior (some features may change in the next minor release)? (default: no) [yes, no]


> Task :init
Get more help with your project: https://docs.gradle.org/8.1.1/samples/sample_building_java_applications.html

BUILD SUCCESSFUL in 1m 57s
```

빌드 후 실행  
```bash
$ gradle clean build
$ gradle run
```