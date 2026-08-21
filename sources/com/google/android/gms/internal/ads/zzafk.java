package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;

/* JADX INFO: loaded from: classes.dex */
final class zzafk implements zzdcj<zzafj, ParcelFileDescriptor> {
    private final /* synthetic */ zzafd zzcyk;

    zzafk(zzafl zzaflVar, zzafd zzafdVar) {
        this.zzcyk = zzafdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcj
    public final /* synthetic */ zzddi<ParcelFileDescriptor> zzf(zzafj zzafjVar) {
        zzaxv zzaxvVar = new zzaxv();
        zzafjVar.zza(this.zzcyk, new zzafn(this, zzaxvVar));
        return zzaxvVar;
    }
}
