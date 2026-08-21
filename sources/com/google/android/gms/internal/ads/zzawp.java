package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(17)
public final class zzawp {
    private static zzawp zzdvc;
    String zzdvd;

    private zzawp() {
    }

    public static zzawp zzwe() {
        if (zzdvc == null) {
            zzdvc = new zzawp();
        }
        return zzdvc;
    }
}
