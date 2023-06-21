ECHO OFF
for %%a in ("*.flv") do (
ffmpeg -i "%%a" -c copy -copyts "%%~na.mp4"
del "%%~na.flv"
)
cls
ECHO.
ECHO flv Job done!
ECHO.
for %%a in ("*.ts") do (
ffmpeg -i "%%a" -c copy -bsf:a aac_adtstoasc "%%~na.mp4"
del "%%~na.ts"
)
cls
ECHO.
ECHO ts Job done!
ECHO.
for %%a in ("*.mkv") do (
ffmpeg -i "%%a" -c copy  "%%~na.mp4"
del "%%~na.mkv"
)
cls
ECHO.
ECHO mkv Job done!
ECHO.
for %%a in ("*.webm") do (
ffmpeg -i "%%a" "%%~na.mp4"
del "%%~na.webm"
)
ECHO.
ECHO webm Job done!
ECHO.
pause