package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class zzxj extends zzafx {
    private final OnInitializationCompleteListener zzcfc;
    private final /* synthetic */ zzxc zzcfd;

    private zzxj(zzxc zzxcVar, OnInitializationCompleteListener onInitializationCompleteListener) {
        this.zzcfd = zzxcVar;
        this.zzcfc = onInitializationCompleteListener;
    }

    /* synthetic */ zzxj(zzxc zzxcVar, OnInitializationCompleteListener onInitializationCompleteListener, zzxg zzxgVar) {
        this(zzxcVar, onInitializationCompleteListener);
    }

    @Override // com.google.android.gms.internal.ads.zzafu
    public final void zzc(List<zzafr> list) {
        OnInitializationCompleteListener onInitializationCompleteListener = this.zzcfc;
        zzxc zzxcVar = this.zzcfd;
        onInitializationCompleteListener.onInitializationComplete(zzxc.zzb(list));
    }
}
