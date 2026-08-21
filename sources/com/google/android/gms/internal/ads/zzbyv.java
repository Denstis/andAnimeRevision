package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;

/* JADX INFO: loaded from: classes.dex */
public final class zzbyv extends VideoController.VideoLifecycleCallbacks {
    private final zzbur zzfjl;

    public zzbyv(zzbur zzburVar) {
        this.zzfjl = zzburVar;
    }

    private static zzws zza(zzbur zzburVar) {
        zzwr videoController = zzburVar.getVideoController();
        if (videoController == null) {
            return null;
        }
        try {
            return videoController.zzoz();
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoEnd() {
        zzws zzwsVarZza = zza(this.zzfjl);
        if (zzwsVarZza == null) {
            return;
        }
        try {
            zzwsVarZza.onVideoEnd();
        } catch (RemoteException e2) {
            zzaxi.zzd("Unable to call onVideoEnd()", e2);
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoPause() {
        zzws zzwsVarZza = zza(this.zzfjl);
        if (zzwsVarZza == null) {
            return;
        }
        try {
            zzwsVarZza.onVideoPause();
        } catch (RemoteException e2) {
            zzaxi.zzd("Unable to call onVideoEnd()", e2);
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoStart() {
        zzws zzwsVarZza = zza(this.zzfjl);
        if (zzwsVarZza == null) {
            return;
        }
        try {
            zzwsVarZza.onVideoStart();
        } catch (RemoteException e2) {
            zzaxi.zzd("Unable to call onVideoEnd()", e2);
        }
    }
}
