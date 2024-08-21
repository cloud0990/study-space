- Mac Address (Permanent, Physical, Unique)   
  - 네트워크 인터페이스에 할당된 **고유한 주소**
  - 네트워크 인터페이스: 네트워크에 연결하게 해주는 모든 기기 (ex. wifi card, ethernet card)
  - 고유한 주소를 부여해서 통신을 할 수 있도록 만든 하드웨어 주소
  - 00:00:00(OUI 주소):00:00:00(호스트 주소)
    - OUI 주소: 각 회사에서 부여된 고유한 주소, 해당 통신 장비가 어디서 만들어졌는지 알 수 있음
   
     
- Mac Address 확인 및 변경
```linux
### 확인 (Mac Addresss = ether)
$ ifconfig

### 변경
$ ifconfig <network interface name> down
$ ifconfig <network interface name> hw ether <변경할 Mac Address>
$ ifconfig <network interface name> up

### 변경한 주소는 메모리상 Mac Address 이기 때문에, 컴퓨터 재시작 시 초기화 됨 (물리적 주소를 변경한 것이 아님)
```