package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.MuteThisAdListener;

/* JADX INFO: loaded from: classes.dex */
public final class zzwj extends zzwh {
    private final MuteThisAdListener zzcdy;

    public zzwj(MuteThisAdListener muteThisAdListener) {
        this.zzcdy = muteThisAdListener;
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final void onAdMuted() {
        this.zzcdy.onAdMuted();
    }
}
