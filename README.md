### Intro: 
This is a POC for https://github.com/diffplug/spotless/issues/2850 created by [@shaunbrockhoff-wk](https://github.com/shaunbrockhoff-wk)
and expanded by [@dejan2609](https://github.com/dejan2609).

### Requirements:
- In order to properly execute Gradle build you need to have JDK 21+ installed.

### 🐛 Note: 🪲
It seems that spotless issue/bug mentioned above is a corner case that happens from time to time (every blue moon ?)  
That's why two equivalent scripts (Bash and PowerShell) are created.  
💡 Idea is to repeat Gradle build `./gradlew clean build --no-daemon --rerun-tasks` execution in a loop until build finally fails.

#### Bash script:
```
./repeatUntilBuildFails.sh
```

#### PowerShell script:
```
.\repeatUntilBuildFails.ps1
```