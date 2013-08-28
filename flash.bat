REM SP-5000 rev2
@echo off
adb start-server
:genesis
@set A=0
@set B=0 
@set C=0
@set D=0
@set E=0
@set F=0
@set G=0
@set H=0
@set I=0
@set J=0

set /a linea=0
@for /F "tokens=1" %%x in ('adb devices') do (
call :show %%x
)
goto fin
goto:eof

:show
set /a linea+=1
if /I %linea%==2 @set A=%*
if /I %linea%==3 @set B=%* 
if /I %linea%==4 @set C=%*
if /I %linea%==5 @set D=%*
if /I %linea%==6 @set E=%*
if /I %linea%==7 @set F=%*
if /I %linea%==8 @set G=%*
if /I %linea%==9 @set H=%*
if /I %linea%==10 @set I=%*
if /I %linea%==11 @set J=%*
goto:Eof

:fin

REM colous writesec "[10] ==================================================================="
REM colous writesec "[12] Presione una tecla para apagar el equipo"
REM colous writesec "[10] ==================================================================="

colous writesec "[10] ==================================================================="
if NOT %A%==0 colous writesec "[12] 1=%A%"
if NOT %B%==0 colous writesec "[12] 2=%B%"
if NOT %C%==0 colous writesec "[12] 3=%C%"
if NOT %D%==0 colous writesec "[12] 4=%D%"
if NOT %E%==0 colous writesec "[12] 5=%E%"
if NOT %F%==0 colous writesec "[12] 6=%F%"
if NOT %G%==0 colous writesec "[12] 7=%G%"
if NOT %H%==0 colous writesec "[12] 8=%H%"
if NOT %I%==0 colous writesec "[12] 9=%I%"
if NOT %J%==0 colous writesec "[12] 0=%J%"
colous writesec "[10] ==================================================================="
if %linea%==1 (
colous writesec "[12] CONECTA ALGUN DISPOSITIVO"
	@pause
	goto genesis
	goto:eof
)
if %linea%==2 (
	@set S=%A%
	goto begin
	goto:eof
)
set INPUT=
set /P INPUT=CON CUAL SMARTPHONE DESEA TRABAJAR? %=%
if /I %INPUT%==1 @set S=%A%
if /I %INPUT%==2 @set S=%B%
if /I %INPUT%==3 @set S=%C%
if /I %INPUT%==4 @set S=%D%
if /I %INPUT%==5 @set S=%E%
if /I %INPUT%==6 @set S=%F%
if /I %INPUT%==7 @set S=%G%
if /I %INPUT%==8 @set S=%H%
if /I %INPUT%==9 @set S=%I%
if /I %INPUT%==0 @set S=%J%

:begin
title %S%

@echo off
pause
adb -s %S% wait-for-device shell input keyevent 26
adb -s %S% wait-for-device root
adb -s %S% wait-for-device shell mount -o remount,rw /system
adb -s %S% wait-for-device push boot.img /cache/boot.img
adb -s %S% wait-for-device shell dd if=/cache/boot.img of=/dev/block/mmcblk0p8
adb -s %S% wait-for-device push build.prop /system/build.prop
adb -s %S% wait-for-device shell rm /system/app/BestChoice.apk
adb -s %S% wait-for-device shell rm /system/app/BestChoice.odex
adb -s %S% wait-for-device shell rm /system/app/Chrome.apk
adb -s %S% wait-for-device shell rm /system/app/DropBox.apk
adb -s %S% wait-for-device shell rm /system/app/FileManager.apk
adb -s %S% wait-for-device shell rm /system/app/FileManager.odex
adb -s %S% wait-for-device shell rm /system/app/PlusOne.apk
adb -s %S% wait-for-device shell rm /system/app/siragon_adobe_flashplayer.apk
adb -s %S% wait-for-device shell rm /system/app/siragon_bsplayer.apk
adb -s %S% wait-for-device shell rm /system/app/siragon_clov4r.apk
adb -s %S% wait-for-device shell rm /system/app/siragon_dataviz_docstogo.apk
adb -s %S% wait-for-device shell rm /system/app/siragon_droid.apk
adb -s %S% wait-for-device shell rm /system/app/siragon_facebook.apk
adb -s %S% wait-for-device shell rm /system/app/siragon_instagram.apk
adb -s %S% wait-for-device shell rm /system/app/siragon_miyowa.apk
adb -s %S% wait-for-device shell rm /system/app/siragon_outlook_Z7.apk
adb -s %S% wait-for-device shell rm /system/app/siragon_rovio_angrybirdsspace.apk
adb -s %S% wait-for-device shell rm /system/app/siragon_siragon.apk
adb -s %S% wait-for-device shell rm /system/app/siragon_siragonplay.apk
adb -s %S% wait-for-device shell rm /system/app/siragon_skype_raider.apk
adb -s %S% wait-for-device shell rm /system/app/siragon_soundcloud.apk
adb -s %S% wait-for-device shell rm /system/app/siragon_spb_shell3d.apk
adb -s %S% wait-for-device shell rm /system/app/siragon_twitter.apk
adb -s %S% wait-for-device shell rm /system/app/siragon_vending.apk
adb -s %S% wait-for-device shell rm /system/app/siragon_whatsapp.apk
adb -s %S% wait-for-device shell rm /system/app/YouTube.apk
adb -s %S% wait-for-device shell rm /system/app/Street.apk
adb -s %S% wait-for-device shell rm /system/app/Maps_hdpi.apk
adb -s %S% wait-for-device shell rm /system/app/GBCWeather.apk
adb -s %S% wait-for-device shell rm /system/app/OverTheAirDownloader.apk
adb -s %S% wait-for-device shell rm /system/app/PinyinIME.apk
adb -s %S% wait-for-device shell rm -R /sdcard/*
adb -s %S% wait-for-device push system /system
adb -s %S% wait-for-device shell wipe data
adb -s %S% wait-for-device reboot -p
pause
