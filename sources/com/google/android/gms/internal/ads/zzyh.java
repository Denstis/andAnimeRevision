package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.ShouldDelayBannerRenderingListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzyh extends zzadd {
    private final ShouldDelayBannerRenderingListener zzcfo;

    public zzyh(ShouldDelayBannerRenderingListener shouldDelayBannerRenderingListener) {
        this.zzcfo = shouldDelayBannerRenderingListener;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final boolean zzq(IObjectWrapper iObjectWrapper) {
        return this.zzcfo.shouldDelayBannerRendering((Runnable) ObjectWrapper.unwrap(iObjectWrapper));
    }
}
