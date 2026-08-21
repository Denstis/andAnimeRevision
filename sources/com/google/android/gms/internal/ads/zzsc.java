package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.io.PushbackInputStream;

/* JADX INFO: loaded from: classes.dex */
final class zzsc extends PushbackInputStream {
    private final /* synthetic */ zzrx zzbrz;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzsc(zzrx zzrxVar, InputStream inputStream, int i2) {
        super(inputStream, 1);
        this.zzbrz = zzrxVar;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.zzbrz.zzbrs.disconnect();
        super.close();
    }
}
