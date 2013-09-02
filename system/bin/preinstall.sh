#!/system/bin/sh

if [ ! -e /data/system/notfirstrun ]; then	
    echo "do preinstall job"	
  
	/system/bin/pm install /system/preinstall/com.adobe.air.apk
	/system/bin/pm install /system/preinstall/com.adobe.flashplayer.apk
	/system/bin/pm install /system/preinstall/com.bianor.ams.apk
	/system/bin/pm install /system/preinstall/com.google.android.keep.apk
	/system/bin/pm install /system/preinstall/com.mobisystems.editor.office_app_attach.apk
	/system/bin/pm install /system/preinstall/com.mx.browser.apk
	/system/bin/pm install /system/preinstall/com.opera.mini.android.apk
	/system/bin/pm install /system/preinstall/com.speedsoftware.explorer.apk
	/system/bin/pm install /system/preinstall/com.wildtangent.android.apk
	/system/bin/pm install /system/preinstall/com.yahoo.bookmark.apk
	/system/bin/pm install /system/preinstall/la.droid.qr.apk
	/system/bin/pm install /system/preinstall/com.skype.bookmark.apk
	/system/bin/pm install /system/preinstall/org.wikipedia.apk
	/system/bin/pm install /system/preinstall/com.accuweather.android.apk
	touch /data/system/notfirstrun

   echo "preinstall ok"

fi



