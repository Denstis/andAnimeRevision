package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdul;

/* JADX INFO: loaded from: classes.dex */
public class zzdul<M extends zzdul<M>> extends zzdus {
    protected zzdun zzhqy;

    @Override // com.google.android.gms.internal.ads.zzdus
    public /* synthetic */ Object clone() {
        zzdul zzdulVar = (zzdul) super.clone();
        zzdup.zza(this, zzdulVar);
        return zzdulVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdus
    public void zza(zzduj zzdujVar) {
        if (this.zzhqy == null) {
            return;
        }
        for (int i2 = 0; i2 < this.zzhqy.size(); i2++) {
            this.zzhqy.zzhf(i2).zza(zzdujVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdus
    /* JADX INFO: renamed from: zzbci */
    public final /* synthetic */ zzdus clone() {
        return (zzdul) clone();
    }

    @Override // com.google.android.gms.internal.ads.zzdus
    protected int zznx() {
        if (this.zzhqy != null) {
            for (int i2 = 0; i2 < this.zzhqy.size(); i2++) {
                this.zzhqy.zzhf(i2).zznx();
            }
        }
        return 0;
    }
}
