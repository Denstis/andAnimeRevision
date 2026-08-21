package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbo;

/* JADX INFO: loaded from: classes.dex */
public final class zzfh extends zzfl {
    public zzfh(zzdx zzdxVar, String str, String str2, zzbo.zza.zzb zzbVar, int i2, int i3) {
        super(zzdxVar, str, str2, zzbVar, i2, 48);
    }

    @Override // com.google.android.gms.internal.ads.zzfl
    protected final void zzcu() {
        zzbo.zza.zzb zzbVar;
        zzbz zzbzVar;
        this.zzaaa.zze(zzbz.ENUM_FAILURE);
        boolean zBooleanValue = ((Boolean) this.zzaal.invoke(null, this.zzvo.getContext())).booleanValue();
        synchronized (this.zzaaa) {
            if (zBooleanValue) {
                zzbVar = this.zzaaa;
                zzbzVar = zzbz.ENUM_TRUE;
            } else {
                zzbVar = this.zzaaa;
                zzbzVar = zzbz.ENUM_FALSE;
            }
            zzbVar.zze(zzbzVar);
        }
    }
}
