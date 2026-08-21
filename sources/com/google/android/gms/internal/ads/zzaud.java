package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zzaud extends zzauc {
    private Context zzlk;

    zzaud(Context context) {
        this.zzlk = context;
    }

    @Override // com.google.android.gms.internal.ads.zzauc
    public final void zzsx() {
        boolean isAdIdFakeForDebugLogging;
        try {
            isAdIdFakeForDebugLogging = AdvertisingIdClient.getIsAdIdFakeForDebugLogging(this.zzlk);
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e2) {
            zzaxi.zzc("Fail to get isAdIdFakeForDebugLogging", e2);
            isAdIdFakeForDebugLogging = false;
        }
        zzaxc.zzak(isAdIdFakeForDebugLogging);
        StringBuilder sb = new StringBuilder(43);
        sb.append("Update ad debug logging enablement as ");
        sb.append(isAdIdFakeForDebugLogging);
        zzaxi.zzeu(sb.toString());
    }
}
