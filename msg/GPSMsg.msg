# Messages
std_msgs/Header header
builtin_interfaces/Time stamp
string gpstime      # 현지시각 "%Y%m%d-%H:%M:%S-%f"

float64 lat         # deg (WGS84)
float64 lon         # deg (WGS84)

# 높이 3종 (모두 m). 발행자는 아래 관계를 지켜야 한다.
#   타원체고(WGS84)         = alt + geo
#   국내 정표고(KNGeoid18)   = alt + geo - geo_model
float64 alt         # 해수면 높이(정표고). 수신기 내장 지오이드 모델 기준 = GGA 고도
float64 geo         # 지오이드고(타원체 - 해수면). 수신기 값 = GGA geo_sep. 수신기 값이 없으면 geo_model 로 대신
float64 geo_model   # KNGeoid18 지오이드고(국토지리정보원). 모델 범위 밖이면 -9999.9
float64 h_dil       # Horizontal Dilusion (HDOP). 없으면 0
float64 tm_x        # TM 좌표 북(N), m. EPSG:5186 중부원점
float64 tm_y        # TM 좌표 동(E), m
float64 speed       # km/h (VTG). 무효 -7777.7
float64 speed_dir   # 진행방향 deg, 진북 기준(RMC). 무효 -55.5

# float64 roll
# float64 pitch
float64 heading     # 차체 헤딩 deg, 진북 기준(HDT/듀얼 안테나). 무효 -9999.9
# float64[] att_var

int8 quality        # NMEA GGA 품질: 0 해 없음, 1 단독, 2 DGNSS, 4 RTK 고정, 5 RTK 플로트
int8 sat            # 사용 위성 수
int8 moving_dir     # 전후진 정보: 0 판정 불가, 1 정지, 2 전진, 3 후진

float64 age         # Age of differential GPS data record (보정 나이, s). 없으면 -1
