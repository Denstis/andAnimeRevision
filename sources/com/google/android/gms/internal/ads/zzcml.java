package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.doubleclick.AppEventListener;

/* JADX INFO: loaded from: classes.dex */
public final class zzcml implements AppEventListener {
    private zzvt zzgcr;

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    public final synchronized void onAppEvent(String str, String str2) {
        if (this.zzgcr != null) {
            try {
                this.zzgcr.onAppEvent(str, str2);
            } catch (RemoteException e2) {
                zzaxi.zzd("Remote Exception at onAppEvent.", e2);
            }
        }
    }

    public final synchronized zzvt zzalj() {
        return this.zzgcr;
    }

    public final synchronized void zzb(zzvt zzvtVar) {
        this.zzgcr = zzvtVar;
    }
}
