package com.google.android.gms.internal.measurement;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class zzdy implements zzea {
    private zzdy() {
    }

    /* synthetic */ zzdy(zzdx zzdxVar) {
        this();
    }

    @Override // com.google.android.gms.internal.measurement.zzea
    public final byte[] zza(byte[] bArr, int i2, int i3) {
        return Arrays.copyOfRange(bArr, i2, i3 + i2);
    }
}
