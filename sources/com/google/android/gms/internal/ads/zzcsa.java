package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import com.google.android.exoplayer2.C;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
final class zzcsa implements zzcru<zzcrx> {
    private final zzddl zzfoa;
    private final Context zzlk;

    public zzcsa(zzddl zzddlVar, Context context) {
        this.zzfoa = zzddlVar;
        this.zzlk = context;
    }

    private static ResolveInfo zza(PackageManager packageManager, String str) {
        return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), C.DEFAULT_BUFFER_SEGMENT_SIZE);
    }

    private static String zza(Context context, PackageManager packageManager) {
        ActivityInfo activityInfo;
        ResolveInfo resolveInfoZza = zza(packageManager, "market://details?id=com.google.android.gms.ads");
        if (resolveInfoZza == null || (activityInfo = resolveInfoZza.activityInfo) == null) {
            return null;
        }
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(activityInfo.packageName, 0);
            if (packageInfo != null) {
                int i2 = packageInfo.versionCode;
                String str = activityInfo.packageName;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
                sb.append(i2);
                sb.append(".");
                sb.append(str);
                return sb.toString();
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return null;
    }

    private static String zzx(Context context) {
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo("com.android.vending", 128);
            if (packageInfo != null) {
                int i2 = packageInfo.versionCode;
                String str = packageInfo.packageName;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
                sb.append(i2);
                sb.append(".");
                sb.append(str);
                return sb.toString();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcru
    public final zzddi<zzcrx> zzalv() {
        return this.zzfoa.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcrz
            private final zzcsa zzggp;

            {
                this.zzggp = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzggp.zzami();
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final /* synthetic */ com.google.android.gms.internal.ads.zzcrx zzami() {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcsa.zzami():com.google.android.gms.internal.ads.zzcrx");
    }
}
