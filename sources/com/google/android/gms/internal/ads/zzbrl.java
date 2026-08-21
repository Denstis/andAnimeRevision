package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzbrl extends zzbpm<VideoController.VideoLifecycleCallbacks> {
    private boolean zzehn;

    protected zzbrl(Set<zzbqs<VideoController.VideoLifecycleCallbacks>> set) {
        super(set);
    }

    public final void onVideoEnd() {
        zza(zzbrn.zzfgz);
    }

    public final void onVideoPause() {
        zza(zzbrk.zzfgz);
    }

    public final synchronized void onVideoPlay() {
        if (!this.zzehn) {
            zza(zzbrp.zzfgz);
            this.zzehn = true;
        }
        zza(zzbro.zzfgz);
    }

    public final synchronized void onVideoStart() {
        zza(zzbrm.zzfgz);
        this.zzehn = true;
    }
}
