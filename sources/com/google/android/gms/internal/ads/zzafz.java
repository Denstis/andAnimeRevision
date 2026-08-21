package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.initialization.AdapterStatus;

/* JADX INFO: loaded from: classes.dex */
public final class zzafz implements AdapterStatus {
    private final String description;
    private final int zzcyp;
    private final AdapterStatus.State zzcyr;

    public zzafz(AdapterStatus.State state, String str, int i2) {
        this.zzcyr = state;
        this.description = str;
        this.zzcyp = i2;
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final String getDescription() {
        return this.description;
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final AdapterStatus.State getInitializationState() {
        return this.zzcyr;
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final int getLatency() {
        return this.zzcyp;
    }
}
