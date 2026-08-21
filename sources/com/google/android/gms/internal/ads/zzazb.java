package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class zzazb extends zzayt {
    @Override // com.google.android.gms.internal.ads.zzayt
    public final zzayu zza(Context context, zzazj zzazjVar, int i2, boolean z, zzaab zzaabVar, zzazk zzazkVar) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (PlatformVersion.isAtLeastIceCreamSandwich() && (applicationInfo == null || applicationInfo.targetSdkVersion >= 11)) {
            return ((Build.VERSION.SDK_INT >= 16 && i2 == 2) && Arrays.asList(zzazkVar.zzeam.split(",")).contains("3")) ? new zzazq(context, new zzazm(context, zzazjVar.zzxr(), zzazjVar.zzxp(), zzaabVar, zzazjVar.zzxm()), zzazjVar, z, zzayt.zza(zzazjVar), zzazkVar) : new zzayh(context, z, zzayt.zza(zzazjVar), zzazkVar, new zzazm(context, zzazjVar.zzxr(), zzazjVar.zzxp(), zzaabVar, zzazjVar.zzxm()));
        }
        return null;
    }
}
