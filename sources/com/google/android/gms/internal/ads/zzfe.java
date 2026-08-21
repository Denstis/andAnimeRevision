package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbo;

/* JADX INFO: loaded from: classes.dex */
public final class zzfe extends zzfl {
    private static volatile Long zzaah;
    private static final Object zzzz = new Object();

    public zzfe(zzdx zzdxVar, String str, String str2, zzbo.zza.zzb zzbVar, int i2, int i3) {
        super(zzdxVar, str, str2, zzbVar, i2, 33);
    }

    @Override // com.google.android.gms.internal.ads.zzfl
    protected final void zzcu() {
        if (zzaah == null) {
            synchronized (zzzz) {
                if (zzaah == null) {
                    zzaah = (Long) this.zzaal.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zzaaa) {
            this.zzaaa.zzaz(zzaah.longValue());
        }
    }
}
