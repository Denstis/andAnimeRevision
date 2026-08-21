package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzabe implements NativeCustomTemplateAd.DisplayOpenMeasurement {
    private final zzace zzcwb;

    public zzabe(zzace zzaceVar) {
        this.zzcwb = zzaceVar;
        try {
            zzaceVar.zzqu();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.DisplayOpenMeasurement
    public final void setView(View view) {
        try {
            this.zzcwb.zzv(ObjectWrapper.wrap(view));
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.DisplayOpenMeasurement
    public final boolean start() {
        try {
            return this.zzcwb.zzqt();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return false;
        }
    }
}
