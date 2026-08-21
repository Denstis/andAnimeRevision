package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbo;

/* JADX INFO: loaded from: classes.dex */
public final class zzev extends zzfl {
    private static volatile Long zzaab;
    private static final Object zzzz = new Object();

    public zzev(zzdx zzdxVar, String str, String str2, zzbo.zza.zzb zzbVar, int i2, int i3) {
        super(zzdxVar, str, str2, zzbVar, i2, 22);
    }

    @Override // com.google.android.gms.internal.ads.zzfl
    protected final void zzcu() {
        if (zzaab == null) {
            synchronized (zzzz) {
                if (zzaab == null) {
                    zzaab = (Long) this.zzaal.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zzaaa) {
            this.zzaaa.zzav(zzaab.longValue());
        }
    }
}
