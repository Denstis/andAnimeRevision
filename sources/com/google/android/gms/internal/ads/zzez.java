package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbo;

/* JADX INFO: loaded from: classes.dex */
public final class zzez extends zzfl {
    public zzez(zzdx zzdxVar, String str, String str2, zzbo.zza.zzb zzbVar, int i2, int i3) {
        super(zzdxVar, str, str2, zzbVar, i2, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzfl
    protected final void zzcu() {
        zzdj zzdjVar = new zzdj((String) this.zzaal.invoke(null, this.zzvo.getContext(), Boolean.valueOf(((Boolean) zzuv.zzon().zzd(zzza.zzcnd)).booleanValue())));
        synchronized (this.zzaaa) {
            this.zzaaa.zzal(zzdjVar.zzxe);
            this.zzaaa.zzbn(zzdjVar.zzxf);
        }
    }
}
