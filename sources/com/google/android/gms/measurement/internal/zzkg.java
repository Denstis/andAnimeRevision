package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzkg implements zzfc {
    private final /* synthetic */ String zza;
    private final /* synthetic */ zzke zzb;

    zzkg(zzke zzkeVar, String str) {
        this.zzb = zzkeVar;
        this.zza = str;
    }

    @Override // com.google.android.gms.measurement.internal.zzfc
    public final void zza(String str, int i2, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        this.zzb.zza(i2, th, bArr, this.zza);
    }
}
