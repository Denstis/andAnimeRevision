package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.ads.zzbo;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzet extends zzfl {
    public zzet(zzdx zzdxVar, String str, String str2, zzbo.zza.zzb zzbVar, int i2, int i3) {
        super(zzdxVar, str, str2, zzbVar, i2, 24);
    }

    private final void zzcx() {
        AdvertisingIdClient advertisingIdClientZzcq = this.zzvo.zzcq();
        if (advertisingIdClientZzcq == null) {
            return;
        }
        try {
            AdvertisingIdClient.Info info = advertisingIdClientZzcq.getInfo();
            String strZzas = zzee.zzas(info.getId());
            if (strZzas != null) {
                synchronized (this.zzaaa) {
                    this.zzaaa.zzah(strZzas);
                    this.zzaaa.zzb(info.isLimitAdTrackingEnabled());
                    this.zzaaa.zzb(zzbo.zza.zzc.DEVICE_IDENTIFIER_ANDROID_AD_ID);
                }
            }
        } catch (IOException unused) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfl
    protected final void zzcu() {
        if (this.zzvo.zzci()) {
            zzcx();
            return;
        }
        synchronized (this.zzaaa) {
            this.zzaaa.zzah((String) this.zzaal.invoke(null, this.zzvo.getContext()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfl, java.util.concurrent.Callable
    /* JADX INFO: renamed from: zzcw */
    public final Void call() {
        if (this.zzvo.isInitialized()) {
            return super.call();
        }
        if (!this.zzvo.zzci()) {
            return null;
        }
        zzcx();
        return null;
    }
}
