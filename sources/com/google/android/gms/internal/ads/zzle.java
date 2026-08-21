package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzkx;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzle implements zzkx.zza {
    public final String zzaex;

    public zzle(String str) {
        this.zzaex = (String) zznr.checkNotNull(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }
}
