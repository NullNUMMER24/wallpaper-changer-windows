$url = "https://i.pinimg.com/originals/d5/f9/40/d5f9405e3a208c30d76f939aaaf4940d.jpg"
$wallpaperpath = "C:\Users\%user%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"
Invoke-WebRequest $url -OutFile "C:\Users\%user%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\wallpaper.jpg"
Set-ItemProperty -path "HKCU:\Control Panel\Desktop\" -name wallpaper -value "C:\Users\%user%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\wallpaper.jpg"
rundll32.exe user32.dll, UpdatePerUserSystemParameters
