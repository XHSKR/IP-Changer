@echo off
chcp 65001>nul
color a
title IP CHANGER
net session >nul 2>&1
    if NOT %errorLevel% == 0 (
      echo 관리자 권한으로 다시 실행시키기 바랍니다.
pause>nul
exit
)
::IP 이곳에서 설정
SET desired_ip=22.*.*.*

netsh interface ipv4 set address name="이더넷 2" static %desired_ip% 255.255.255.0 22.55.1.1>nul
echo IP변경이 완료되었습니다. 이제 UTP케이블을 연결하셔도 좋습니다.
echo.
echo 변경된 IP주소: %desired_ip%
pause>nul