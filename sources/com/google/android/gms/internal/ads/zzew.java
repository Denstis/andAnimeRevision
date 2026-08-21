package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbo;

/* JADX INFO: loaded from: classes.dex */
public final class zzew extends zzfl {
    private static volatile String zzaac;
    private static final Object zzzz = new Object();

    public zzew(zzdx zzdxVar, String str, String str2, zzbo.zza.zzb zzbVar, int i2, int i3) {
        super(zzdxVar, str, str2, zzbVar, i2, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzfl
    protected final void zzcu() {
        this.zzaaa.zzz("E");
        if (zzaac == null) {
            synchronized (zzzz) {
                if (zzaac == null) {
                    zzaac = (String) this.zzaal.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zzaaa) {
            this.zzaaa.zzz(zzaac);
        }
    }
}
