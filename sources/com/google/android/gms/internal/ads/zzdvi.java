package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdut;

/* JADX INFO: loaded from: classes.dex */
public final class zzdvi extends zzdul<zzdvi> {
    public zzdut.zzb.zzf.EnumC0163zzb zzhwk = null;
    public String mimeType = null;
    public byte[] zzhwl = null;

    public zzdvi() {
        this.zzhqy = null;
        this.zzhrh = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzdul, com.google.android.gms.internal.ads.zzdus
    public final void zza(zzduj zzdujVar) throws zzdum {
        zzdut.zzb.zzf.EnumC0163zzb enumC0163zzb = this.zzhwk;
        if (enumC0163zzb != null && enumC0163zzb != null) {
            zzdujVar.zzaa(1, enumC0163zzb.zzab());
        }
        String str = this.mimeType;
        if (str != null) {
            zzdujVar.zzg(2, str);
        }
        byte[] bArr = this.zzhwl;
        if (bArr != null) {
            zzdujVar.zza(3, bArr);
        }
        super.zza(zzdujVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdul, com.google.android.gms.internal.ads.zzdus
    protected final int zznx() {
        int iZznx = super.zznx();
        zzdut.zzb.zzf.EnumC0163zzb enumC0163zzb = this.zzhwk;
        if (enumC0163zzb != null && enumC0163zzb != null) {
            iZznx += zzduj.zzae(1, enumC0163zzb.zzab());
        }
        String str = this.mimeType;
        if (str != null) {
            iZznx += zzduj.zzh(2, str);
        }
        byte[] bArr = this.zzhwl;
        return bArr != null ? iZznx + zzduj.zzgd(3) + zzduj.zzgl(bArr.length) + bArr.length : iZznx;
    }
}
