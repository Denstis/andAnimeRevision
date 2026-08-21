package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbo;

/* JADX INFO: loaded from: classes.dex */
public final class zzfd extends zzfl {
    private final StackTraceElement[] zzaag;

    public zzfd(zzdx zzdxVar, String str, String str2, zzbo.zza.zzb zzbVar, int i2, int i3, StackTraceElement[] stackTraceElementArr) {
        super(zzdxVar, str, str2, zzbVar, i2, 45);
        this.zzaag = stackTraceElementArr;
    }

    @Override // com.google.android.gms.internal.ads.zzfl
    protected final void zzcu() {
        StackTraceElement[] stackTraceElementArr = this.zzaag;
        if (stackTraceElementArr != null) {
            zzdv zzdvVar = new zzdv((String) this.zzaal.invoke(null, stackTraceElementArr));
            synchronized (this.zzaaa) {
                this.zzaaa.zzbi(zzdvVar.zzxo.longValue());
                if (zzdvVar.zzxp.booleanValue()) {
                    this.zzaaa.zzg(zzdvVar.zzxq.booleanValue() ? zzbz.ENUM_FALSE : zzbz.ENUM_TRUE);
                } else {
                    this.zzaaa.zzg(zzbz.ENUM_FAILURE);
                }
            }
        }
    }
}
