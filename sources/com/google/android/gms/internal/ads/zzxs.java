package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzxs extends zzwa {
    private zzafu zzcfh;

    @Override // com.google.android.gms.internal.ads.zzwb
    public final String getVersionString() {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final void initialize() {
        zzaxi.zzes("The initialization is not processed because MobileAdsSettingsManager is not created successfully.");
        zzawy.zzzb.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzxv
            private final zzxs zzcfj;

            {
                this.zzcfj = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzcfj.zzpj();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final void setAppMuted(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final void setAppVolume(float f2) {
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final void zza(zzafu zzafuVar) {
        this.zzcfh = zzafuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final void zza(zzajx zzajxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final void zza(zzyd zzydVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final void zzb(String str, IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final void zzby(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final void zzbz(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final void zzc(IObjectWrapper iObjectWrapper, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final float zzos() {
        return 1.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final boolean zzot() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final List<zzafr> zzou() {
        return Collections.EMPTY_LIST;
    }

    final /* synthetic */ void zzpj() {
        zzafu zzafuVar = this.zzcfh;
        if (zzafuVar != null) {
            try {
                zzafuVar.zzc(Collections.EMPTY_LIST);
            } catch (RemoteException e2) {
                zzaxi.zzd("Could not notify onComplete event.", e2);
            }
        }
    }
}
