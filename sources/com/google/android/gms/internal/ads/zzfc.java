package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbo;

/* JADX INFO: loaded from: classes.dex */
public final class zzfc extends zzfl {
    public zzfc(zzdx zzdxVar, String str, String str2, zzbo.zza.zzb zzbVar, int i2, int i3) {
        super(zzdxVar, str, str2, zzbVar, i2, 51);
    }

    @Override // com.google.android.gms.internal.ads.zzfl
    protected final void zzcu() {
        synchronized (this.zzaaa) {
            zzdy zzdyVar = new zzdy((String) this.zzaal.invoke(null, new Object[0]));
            this.zzaaa.zzbj(zzdyVar.zzyh.longValue());
            this.zzaaa.zzbk(zzdyVar.zzyi.longValue());
        }
    }
}
