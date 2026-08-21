package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzsf;

/* JADX INFO: loaded from: classes.dex */
public final class zzcaq implements zzbnb, zzbnj, zzbog, zzbpc, zztp {
    private final zzsd zzfrg;
    private boolean zzfrh = false;
    private boolean zzfri = false;

    public zzcaq(zzsd zzsdVar, zzcuf zzcufVar) {
        this.zzfrg = zzsdVar;
        zzsdVar.zza(zzsf.zza.EnumC0165zza.AD_REQUEST);
        if (zzcufVar == null || !zzcufVar.zzggg) {
            return;
        }
        zzsdVar.zza(zzsf.zza.EnumC0165zza.REQUEST_IS_PREFETCH);
    }

    @Override // com.google.android.gms.internal.ads.zztp
    public final synchronized void onAdClicked() {
        if (this.zzfri) {
            this.zzfrg.zza(zzsf.zza.EnumC0165zza.AD_SUBSEQUENT_CLICK);
        } else {
            this.zzfrg.zza(zzsf.zza.EnumC0165zza.AD_FIRST_CLICK);
            this.zzfri = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final void onAdFailedToLoad(int i2) {
        zzsd zzsdVar;
        zzsf.zza.EnumC0165zza enumC0165zza;
        switch (i2) {
            case 1:
                zzsdVar = this.zzfrg;
                enumC0165zza = zzsf.zza.EnumC0165zza.AD_FAILED_TO_LOAD_INVALID_REQUEST;
                break;
            case 2:
                zzsdVar = this.zzfrg;
                enumC0165zza = zzsf.zza.EnumC0165zza.AD_FAILED_TO_LOAD_NETWORK_ERROR;
                break;
            case 3:
                zzsdVar = this.zzfrg;
                enumC0165zza = zzsf.zza.EnumC0165zza.AD_FAILED_TO_LOAD_NO_FILL;
                break;
            case 4:
                zzsdVar = this.zzfrg;
                enumC0165zza = zzsf.zza.EnumC0165zza.AD_FAILED_TO_LOAD_TIMEOUT;
                break;
            case 5:
                zzsdVar = this.zzfrg;
                enumC0165zza = zzsf.zza.EnumC0165zza.AD_FAILED_TO_LOAD_CANCELLED;
                break;
            case 6:
                zzsdVar = this.zzfrg;
                enumC0165zza = zzsf.zza.EnumC0165zza.AD_FAILED_TO_LOAD_NO_ERROR;
                break;
            case 7:
                zzsdVar = this.zzfrg;
                enumC0165zza = zzsf.zza.EnumC0165zza.AD_FAILED_TO_LOAD_NOT_FOUND;
                break;
            default:
                zzsdVar = this.zzfrg;
                enumC0165zza = zzsf.zza.EnumC0165zza.AD_FAILED_TO_LOAD;
                break;
        }
        zzsdVar.zza(enumC0165zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbnj
    public final synchronized void onAdImpression() {
        this.zzfrg.zza(zzsf.zza.EnumC0165zza.AD_IMPRESSION);
    }

    @Override // com.google.android.gms.internal.ads.zzbog
    public final void onAdLoaded() {
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void zza(final zzcvz zzcvzVar) {
        this.zzfrg.zza(new zzsg(zzcvzVar) { // from class: com.google.android.gms.internal.ads.zzcat
            private final zzcvz zzfhg;

            {
                this.zzfhg = zzcvzVar;
            }

            @Override // com.google.android.gms.internal.ads.zzsg
            public final void zza(zztl zztlVar) {
                zzcvz zzcvzVar2 = this.zzfhg;
                zztlVar.zzcax.zzbzv.zzbzn = zzcvzVar2.zzgkb.zzgjy.zzbzn;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void zzb(zzape zzapeVar) {
    }
}
