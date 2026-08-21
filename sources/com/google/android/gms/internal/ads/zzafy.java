package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzafy implements InitializationStatus {
    private final Map<String, AdapterStatus> zzcyq;

    public zzafy(Map<String, AdapterStatus> map) {
        this.zzcyq = map;
    }

    @Override // com.google.android.gms.ads.initialization.InitializationStatus
    public final Map<String, AdapterStatus> getAdapterStatusMap() {
        return this.zzcyq;
    }
}
