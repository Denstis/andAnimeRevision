package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;

/* JADX INFO: loaded from: classes.dex */
final class zzcdu implements zzdcz<zzcvz> {
    private final /* synthetic */ zzcdt zzfus;

    zzcdu(zzcdt zzcdtVar) {
        this.zzfus = zzcdtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final /* synthetic */ void onSuccess(zzcvz zzcvzVar) {
        zzcvz zzcvzVar2 = zzcvzVar;
        if (((Boolean) zzuv.zzon().zzd(zzza.zzctc)).booleanValue()) {
            this.zzfus.zzfuq.zzdh(zzcvzVar2.zzgkb.zzgjy.responseCode);
            this.zzfus.zzfuq.zzek(zzcvzVar2.zzgkb.zzgjy.zzfvu);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzb(Throwable th) {
        if (((Boolean) zzuv.zzon().zzd(zzza.zzctc)).booleanValue()) {
            Matcher matcher = zzcdt.zzfur.matcher(th.getMessage());
            if (matcher.matches()) {
                this.zzfus.zzfuq.zzdh(Integer.parseInt(matcher.group(1)));
            }
        }
    }
}
