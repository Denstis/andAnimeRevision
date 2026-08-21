package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import com.google.android.exoplayer2.C;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzaal {
    public static boolean zzk(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0);
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, C.DEFAULT_BUFFER_SEGMENT_SIZE);
        if (listQueryIntentActivities != null && resolveInfoResolveActivity != null) {
            for (int i2 = 0; i2 < listQueryIntentActivities.size(); i2++) {
                if (resolveInfoResolveActivity.activityInfo.name.equals(listQueryIntentActivities.get(i2).activityInfo.name)) {
                    return resolveInfoResolveActivity.activityInfo.packageName.equals(zzdwn.zzcb(context));
                }
            }
        }
        return false;
    }
}
