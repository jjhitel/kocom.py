# Hass.io Add-on: Kocom Wallpad with RS485 

![Supports aarch64 Architecture][aarch64-shield] ![Supports amd64 Architecture][amd64-shield] ![Supports armhf Architecture][armhf-shield] ![Supports armv7 Architecture][armv7-shield] ![Supports i386 Architecture][i386-shield]

## About
Kocom Wallpad with RS485

## Installation

1. 홈어시스턴트의 Hass.io > ADD-ON STORE에서 Add new repository by URL에 https://github.com/jjhitel/kocom_light.py 를 입력한 다음 ADD 버튼을 누릅니다.
2. ADD-ON STORE 페이지 하단에서 "Kocom Wallpad with RS485" 클릭합니다.
3. "INSTALL" 버튼을 누르면 애드온이 설치됩니다. 최대 약 10분 정도 소요. 
4. INSTALL 버튼위에 설치 애니메이션이 동작하는데 이것이 멈추더라도 REBUILD, START 버튼이 나타나지 않는 경우가 있습니다.
5. 이 애드온은 이미지를 내려받는 것이 아니라 직접 여러분의 Hassio에서 이미지를 만듭니다.
6. INSTALL 버튼을 누른다음 설치 애니메이션이 실행되면 제대로 설치중인 것입니다.
7. share/kocom/ 폴더에 있는 kocom_light.conf 파일을 본인의 환경에 맞게 수정합니다.
   - 사용자 비밀번호에 특수문자가 포함될 경우 MQTT 인증이 실패할 수 있습니다.
8. "START" 버튼으로 애드온을 실행합니다.

## Change log

(2025-04-14)
- entity_id 생성 시 불필요한 한글 접두어 제거
- python 3.8-slim 이미지로 변경
- Light를 제외한 나머지 제거

(2022-04-10)  
- MQTT Discovery 지원  

(2022-03-30)  
- Home Assistant Supervisor Add-on에서 실행되도록 수정  

(2022-03-29)  
- 전열교환기(Fan) 프리셋 모드 추가 및 초기모드/온도 사용자 설정  

(2020-09-25)  
- 엘리베이터 도착정보 추가  
- 기타 마이너 변경  

(2019-12-09)  
- GitHub 초기 공개  
- Serial 강제 종료 시 error handling 추가  

(2019-11-19)  
- 기기 상태 수신 전 다음 패킷 발송 방지  
- 충돌 시 random jump  
- 패킷 타이밍 튜닝 기능 추가 (`read_write_gap` 변수)  

(2019-11-18)  
- 연결 시작 시 패킷 충돌 감지 추가  
- Fan 명령 오류 수정  
- polling 도중 command 발생 시 충돌 해결  

(2019-11-17)  
- RS485 또는 MQTT 연결 끊김 예외처리/자동 복구  
- RS485 read/write 패킷 충돌 방지  

(2019-11-15)  
- 하나의 kocom.py로 serial/socket 모두 지원  
- kocom.conf에서 설정 가능하도록 통합  

(2019-11-14)  
- MQTT 로그 오류 수정  

(2019-11-13 오후)  
- socket용 draft 버전 업로드 (ser2net 기반, 1분 테스트됨)  

(2019-11-13)  
- checksum 관련 수정 및 python 코드 반영

[forum]: https://cafe.naver.com/koreassistant
[github]: https://github.com/jjhitel/kocom_light.py
[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]: https://img.shields.io/badge/armhf-yes-green.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
[i386-shield]: https://img.shields.io/badge/i386-yes-green.svg
