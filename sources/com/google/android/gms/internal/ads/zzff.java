package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbo;

/* JADX INFO: loaded from: classes.dex */
public final class zzff extends zzfl {
    private final zzeg zzws;
    private long zzzl;

    public zzff(zzdx zzdxVar, String str, String str2, zzbo.zza.zzb zzbVar, int i2, int i3, zzeg zzegVar) {
        super(zzdxVar, str, str2, zzbVar, i2, 53);
        this.zzws = zzegVar;
        if (zzegVar != null) {
            this.zzzl = zzegVar.zzcs();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfl
    protected final void zzcu() {
        if (this.zzws != null) {
            this.zzaaa.zzbl(((Long) this.zzaal.invoke(null, Long.valueOf(this.zzzl))).longValue());
        }
    }
}
