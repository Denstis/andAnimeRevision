package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzboi implements zzbpo {
    static final zzbpo zzfgz = new zzboi();

    private zzboi() {
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzp(Object obj) {
        ((AdMetadataListener) obj).onAdMetadataChanged();
    }
}
