스프링 부트 프로젝트 생성 후
```bash
# src/main 경로로 이동
$ cd src/main

# 설치
$ npx create-react-app <appName>
```

<br>

설치 후

```bash
# app 경로로 이동
$ cd <appName>

# package.json 수정
# "script" 위에 추가
"proxy": "http://localhost:<프로젝트에서 사용하는 포트>"
```

<br>

build.gradle 하단 내용 추가
```bash
def frontendDir = "$projectDir/src/main/<appName>"

sourceSets {
    main {
        resources { srcDirs = ["$projectDir/src/main/resources"]
        }
    }
}

processResources { dependsOn "copyReactBuildFiles" }

task installReact(type: Exec) {
    workingDir "$frontendDir"
    inputs.dir "$frontendDir"
    group = BasePlugin.BUILD_GROUP
    if (System.getProperty('os.name').toLowerCase(Locale.ROOT).contains('windows')) {
        commandLine "npm.cmd", "audit", "fix"
        commandLine 'npm.cmd', 'install' }
    else {
        commandLine "npm", "audit", "fix" commandLine 'npm', 'install'
    }
}

task buildReact(type: Exec) {
    dependsOn "installReact"
    workingDir "$frontendDir"
    inputs.dir "$frontendDir"
    group = BasePlugin.BUILD_GROUP
    if (System.getProperty('os.name').toLowerCase(Locale.ROOT).contains('windows')) {
        commandLine "npm.cmd", "run-script", "build"
    } else {
        commandLine "npm", "run-script", "build"
    }
}

task copyReactBuildFiles(type: Copy) {
    dependsOn "buildReact"
    from "$frontendDir/build"
    into "$projectDir/src/main/resources/static"
}
```