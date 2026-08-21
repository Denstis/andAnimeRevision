package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.consent.ConsentSdkUtil;

/* JADX INFO: loaded from: classes.dex */
final class zzzm extends zzze {
    private final ConsentSdkUtil.ConsentInformationCallback zzcua;

    public zzzm(ConsentSdkUtil.ConsentInformationCallback consentInformationCallback) {
        this.zzcua = consentInformationCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final void onFailure(int i2) {
        this.zzcua.onFailure(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final void onSuccess(String str) {
        this.zzcua.onSuccess(str);
    }
}
