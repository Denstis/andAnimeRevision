package com.google.android.gms.common.wrappers;

import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;

/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class InstantApps {
    private static Context zzhv;
    private static Boolean zzhw;

    @KeepForSdk
    public static synchronized boolean isInstantApp(Context context) {
        boolean zValueOf;
        Context applicationContext = context.getApplicationContext();
        if (zzhv != null && zzhw != null && zzhv == applicationContext) {
            return zzhw.booleanValue();
        }
        zzhw = null;
        if (!PlatformVersion.isAtLeastO()) {
            try {
                context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                zzhw = true;
            } catch (ClassNotFoundException unused) {
                zValueOf = false;
                zzhw = zValueOf;
            }
            zzhv = applicationContext;
            return zzhw.booleanValue();
        }
        zValueOf = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
        zzhw = zValueOf;
        zzhv = applicationContext;
        return zzhw.booleanValue();
    }
}
