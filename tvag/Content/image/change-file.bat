@echo off
setlocal enabledelayedexpansion

:: Cấu hình đường dẫn thư mục chứa ảnh (nếu chạy cùng thư mục thì để .)
set TARGET_DIR=.

pushd %TARGET_DIR%

echo Dang xu ly doi ten file...

:: 1. Đổi logo.png cũ thành tên backup để tránh trùng lặp
if exist "logo.png" (
    ren "logo.png" "logo_old_%date:~10,4%%date:~4,2%%date:~7,2%.png"
    echo [OK] Da doi logo.png thanh file backup.
)

:: 2. Đổi logo12.png thành logo.png (để App load file mới này)
if exist "logo12.png" (
    ren "logo12.png" "logo.png"
    echo [OK] Da doi logo12.png thanh logo.png
) else (
    echo [Loi] Khong tim thay file logo12.png
)

popd
pause