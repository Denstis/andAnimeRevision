package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes.dex */
final class zzau extends FilterInputStream {
    private final HttpURLConnection zzcl;

    zzau(HttpURLConnection httpURLConnection) {
        super(zzar.zza(httpURLConnection));
        this.zzcl = httpURLConnection;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        this.zzcl.disconnect();
    }
}
