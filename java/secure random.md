java.util.Random: 비보안 관련 작업에 대한 난수 생성에 유용

```
- 의사난수가 생성됨
    - 의사난수: 난수처럼 보이게 하기 위해, 어떠한 알고리즘을 사용한 규칙적인 난수 생성 (즉, 규칙적으로 만들어진 난수처럼 보이는 값)
- 사용자 설정 or 자동 생성 가능한 시드 값을 기반으로 생성됨
- 시드값: Random 객체 내에서 생성되는 숫자의 시퀀스 결정 (시드값이 동일하다면 매 번 같은 값 반환)

효율성과 임의성을 높이려면 단일 Random 생성 후, 저장하여 재사용
```

<br>

java.security.SecureRandom: 안전한 난수 필요 시 유용
```
- 암호화된 보안 난수 생성
- 생성된 숫자는 실제로 무작위이며, 예측/재현 불가
    - 하드웨어 센서, 시스템 시간 등 OS에서 임의 데이터를 가져와 시드값으로 사용
- 암호화 or 보안에 민감한 응용프로그램에서 Random 보다 안전함
```

<br>

```java
//ex

// 비준수 코드
public void testRandom() {
    Random random = new Random(); // 값을 넣어주지 않으면 시스템시간을 통해 시드 결정, seed = System.nanoTime()
    int num = random.nextInt();
}

//준수 코드
private SecureRandom random = SecureRandom.getInstanceStrong();

public void testRandom() {
    int num = this.random.nextInt();    
}
```