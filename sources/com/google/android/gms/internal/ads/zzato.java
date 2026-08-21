package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zzato implements Runnable {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzaxv zzdqa;

    zzato(zzatl zzatlVar, Context context, zzaxv zzaxvVar) {
        this.val$context = context;
        this.zzdqa = zzaxvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzdqa.set(AdvertisingIdClient.getAdvertisingIdInfo(this.val$context));
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e2) {
            this.zzdqa.setException(e2);
            zzaxi.zzc("Exception while getting advertising Id info", e2);
        }
    }
}
