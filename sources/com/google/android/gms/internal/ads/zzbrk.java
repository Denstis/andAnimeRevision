package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzbrk implements zzbpo {
    static final zzbpo zzfgz = new zzbrk();

    private zzbrk() {
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzp(Object obj) {
        ((VideoController.VideoLifecycleCallbacks) obj).onVideoPause();
    }
}
