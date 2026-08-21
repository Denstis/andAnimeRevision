package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;

/* JADX INFO: loaded from: classes.dex */
final class zzafn extends zzafg {
    private final /* synthetic */ zzaxv zzbrr;

    zzafn(zzafk zzafkVar, zzaxv zzaxvVar) {
        this.zzbrr = zzaxvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafh
    public final void zza(ParcelFileDescriptor parcelFileDescriptor) {
        this.zzbrr.set(parcelFileDescriptor);
    }
}
