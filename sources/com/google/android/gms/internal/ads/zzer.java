package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbo;

/* JADX INFO: loaded from: classes.dex */
public final class zzer extends zzfl {
    private static volatile Long zzzy;
    private static final Object zzzz = new Object();

    public zzer(zzdx zzdxVar, String str, String str2, zzbo.zza.zzb zzbVar, int i2, int i3) {
        super(zzdxVar, str, str2, zzbVar, i2, 44);
    }

    @Override // com.google.android.gms.internal.ads.zzfl
    protected final void zzcu() {
        if (zzzy == null) {
            synchronized (zzzz) {
                if (zzzy == null) {
                    zzzy = (Long) this.zzaal.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zzaaa) {
            this.zzaaa.zzbh(zzzy.longValue());
        }
    }
}
