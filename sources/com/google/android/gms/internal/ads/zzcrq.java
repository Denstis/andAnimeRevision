package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class zzcrq implements zzcru<zzcrr<Bundle>> {
    private final boolean zzggg;

    zzcrq(zzcuf zzcufVar) {
        this.zzggg = zzcufVar != null ? zzcufVar.zzggg : false;
    }

    @Override // com.google.android.gms.internal.ads.zzcru
    public final zzddi<zzcrr<Bundle>> zzalv() {
        return zzdcy.zzah(this.zzggg ? zzcrp.zzggf : null);
    }
}
