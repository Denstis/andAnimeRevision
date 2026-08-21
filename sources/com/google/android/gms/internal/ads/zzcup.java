package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzcup implements zzcva {
    static final zzcva zzghu = new zzcup();

    private zzcup() {
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final void zzt(Object obj) {
        ((AdMetadataListener) obj).onAdMetadataChanged();
    }
}
