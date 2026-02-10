@echo off
setlocal

:: 1. Tráo đổi tên file dùng file tạm
if exist "logo.png" (
    ren "logo.png" "logo_temp.png"
) else (
    echo [LOI] Khong tim thay logo.png
    goto :error
)

if exist "logo12.png" (
    ren "logo12.png" "logo.png"
) else (
    ren "logo_temp.png" "logo.png"
    echo [LOI] Khong tim thay logo12.png
    goto :error
)

if exist "logo_temp.png" (
    ren "logo_temp.png" "logo12.png"
)

echo [OK] Da trao doi ten 2 file thành công.

:: 2. Thực hiện lệnh Git
echo Dang thuc hien Git Commit...

git add .
git commit -m "change image"
git push

:: Nếu bạn muốn đẩy lên server luôn thì bỏ dấu :: ở dòng dưới
:: git push

echo [OK] Da commit lenh: change image
pause
exit

:error
pause
exit