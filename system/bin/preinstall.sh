#!/system/bin/sh

if [ ! -e /data/system/notfirstrun ]; then	
    echo "do preinstall job"	
  
	/system/bin/pm install /system/preinstall/com.adobe.air-1.apk
	/system/bin/pm install /system/preinstall/com.adobe.flashplayer-1.apk
	/system/bin/pm install /system/preinstall/com.bianor.ams-1.apk
	/system/bin/pm install /system/preinstall/com.google.android.keep-1.apk
	/system/bin/pm install /system/preinstall/com.mobisystems.editor.office_app_attach-1.apk
	/system/bin/pm install /system/preinstall/com.mx.browser-1.apk
	/system/bin/pm install /system/preinstall/com.opera.mini.android-1.apk
	/system/bin/pm install /system/preinstall/com.speedsoftware.explorer-1.apk
	/system/bin/pm install /system/preinstall/com.wildtangent.android-1.apk
	/system/bin/pm install /system/preinstall/com.yahoo.bookmark-1.apk
	/system/bin/pm install /system/preinstall/la.droid.qr-1.apk
	/system/bin/pm install /system/preinstall/com.skype.bookmark-1.apk
	/system/bin/pm install /system/preinstall/org.wikipedia-1.apk
	touch /data/system/notfirstrun

   echo "preinstall ok"

fi



