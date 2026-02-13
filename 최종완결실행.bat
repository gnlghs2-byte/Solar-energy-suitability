@echo off
chcp 65001 >nul
echo ========================================
echo 🎯 최종 완결판: 2가지 마커 시각화
echo ========================================
echo.
echo 전국 61기 석탄화력발전소 종합 분석
echo 2가지 시각화 모드를 제공합니다!
echo.

set HTML_FILE=%~dp0태양열_잠재량_최종완결.html

set CHROME="C:\Program Files\Google\Chrome\Application\chrome.exe"
if not exist %CHROME% set CHROME="C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
if not exist %CHROME% set CHROME="%LOCALAPPDATA%\Google\Chrome\Application\chrome.exe"

if exist %CHROME% (
    echo ✅ Chrome으로 열기...
    start "" %CHROME% "%HTML_FILE%"
) else (
    echo ⚠️  Chrome을 찾을 수 없습니다. 기본 브라우저로 엽니다...
    start "" "%HTML_FILE%"
)

echo.
echo ========================================
echo 🎨 2가지 시각화 모드
echo ========================================
echo.
echo [모드 1] 🏭 발전소 개수별 (기본)
echo    - 10기 이상: 매우 진한 빨강
echo    - 6~9기: 진한 빨강
echo    - 3~5기: 중간 빨강
echo    - 1~2기: 주황색
echo    → 발전소가 많은 곳일수록 진한 색상
echo.
echo [모드 2] ⭐ 태양광 적합도별
echo    - 1~3위: 녹색 (최적)
echo    - 4~6위: 파란색 (적합)
echo    - 7~9위: 노란색 (보통)
echo    - 10위 이하: 회색 (검토)
echo    → 재생에너지 전환 우선순위
echo.
echo ========================================
echo 📊 분석 내용
echo ========================================
echo.
echo ✅ 전국 61기 석탄화력발전소 전체
echo ✅ 5가지 환경 변수 종합 평가
echo    ☀️ 일사량 + ☁️ 구름 + 🌡️ 기온 + 💨 바람 + ❄️ 눈
echo.
echo ✅ 6개 탭 차트 시스템
echo ✅ LNG 전환 계획 정보
echo ✅ 과학적 가중치 알고리즘
echo.
echo ========================================
echo 💡 사용 팁
echo ========================================
echo.
echo 1. 기본은 "발전소 개수별" 색상 표시
echo 2. 상단 버튼으로 "적합도별"로 전환 가능
echo 3. 진한 빨강 지역 = 우선 전환 필요 지역
echo 4. 녹색 지역 = 태양광 전환 최적지
echo.
pause
