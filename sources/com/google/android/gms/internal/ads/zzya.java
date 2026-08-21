package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;

/* JADX INFO: loaded from: classes.dex */
public final class zzya extends zzwp {
    private final OnAdMetadataChangedListener zzcfm;

    public zzya(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        this.zzcfm = onAdMetadataChangedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzwm
    public final void onAdMetadataChanged() {
        OnAdMetadataChangedListener onAdMetadataChangedListener = this.zzcfm;
        if (onAdMetadataChangedListener != null) {
            onAdMetadataChangedListener.onAdMetadataChanged();
        }
    }
}
