package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbo;

/* JADX INFO: loaded from: classes.dex */
public final class zzeq extends zzfl {
    private long startTime;

    public zzeq(zzdx zzdxVar, String str, String str2, zzbo.zza.zzb zzbVar, long j2, int i2, int i3) {
        super(zzdxVar, str, str2, zzbVar, i2, 25);
        this.startTime = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzfl
    protected final void zzcu() {
        long jLongValue = ((Long) this.zzaal.invoke(null, new Object[0])).longValue();
        synchronized (this.zzaaa) {
            this.zzaaa.zzbr(jLongValue);
            if (this.startTime != 0) {
                this.zzaaa.zzat(jLongValue - this.startTime);
                this.zzaaa.zzaw(this.startTime);
            }
        }
    }
}
