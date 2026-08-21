package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class zzcah implements zzdwb<zzsd> {
    private final zzdwo<Context> zzejy;
    private final zzdwo<Integer> zzfcr;
    private final zzdwo<zzaxl> zzfgx;
    private final zzdwo<String> zzfrb;
    private final zzdwo<String> zzfrc;

    private zzcah(zzdwo<Context> zzdwoVar, zzdwo<String> zzdwoVar2, zzdwo<zzaxl> zzdwoVar3, zzdwo<Integer> zzdwoVar4, zzdwo<String> zzdwoVar5) {
        this.zzejy = zzdwoVar;
        this.zzfrb = zzdwoVar2;
        this.zzfgx = zzdwoVar3;
        this.zzfcr = zzdwoVar4;
        this.zzfrc = zzdwoVar5;
    }

    public static zzcah zzf(zzdwo<Context> zzdwoVar, zzdwo<String> zzdwoVar2, zzdwo<zzaxl> zzdwoVar3, zzdwo<Integer> zzdwoVar4, zzdwo<String> zzdwoVar5) {
        return new zzcah(zzdwoVar, zzdwoVar2, zzdwoVar3, zzdwoVar4, zzdwoVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        Context context = this.zzejy.get();
        final String str = this.zzfrb.get();
        zzaxl zzaxlVar = this.zzfgx.get();
        final int iIntValue = this.zzfcr.get().intValue();
        final String str2 = this.zzfrc.get();
        zzsd zzsdVar = new zzsd(new zzsi(context));
        final zztk zztkVar = new zztk();
        zztkVar.zzcal = Integer.valueOf(zzaxlVar.zzdwe);
        zztkVar.zzcam = Integer.valueOf(zzaxlVar.zzdwf);
        zztkVar.zzcan = Integer.valueOf(zzaxlVar.zzdwg ? 0 : 2);
        zzsdVar.zza(new zzsg(iIntValue, str, zztkVar, str2) { // from class: com.google.android.gms.internal.ads.zzcae
            private final String zzcyz;
            private final int zzdwc;
            private final zztk zzfqy;
            private final String zzfqz;

            {
                this.zzdwc = iIntValue;
                this.zzcyz = str;
                this.zzfqy = zztkVar;
                this.zzfqz = str2;
            }

            @Override // com.google.android.gms.internal.ads.zzsg
            public final void zza(zztl zztlVar) {
                int i2 = this.zzdwc;
                String str3 = this.zzcyz;
                zztk zztkVar2 = this.zzfqy;
                String str4 = this.zzfqz;
                zztlVar.zzcax.zzbzs = Integer.valueOf(i2);
                zztj zztjVar = zztlVar.zzcau;
                zztjVar.zzcad = str3;
                zztjVar.zzcag = zztkVar2;
                zztlVar.zzcap = str4;
            }
        });
        return (zzsd) zzdwh.zza(zzsdVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
