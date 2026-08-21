package com.google.android.gms.internal.firebase_messaging;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
final class zzl extends FilterInputStream {
    private long zza;
    private long zzb;

    zzl(InputStream inputStream, long j2) {
        super(inputStream);
        this.zzb = -1L;
        zzg.zza(inputStream);
        this.zza = 1048577L;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        return (int) Math.min(((FilterInputStream) this).in.available(), this.zza);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i2) {
        ((FilterInputStream) this).in.mark(i2);
        this.zzb = this.zza;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        if (this.zza == 0) {
            return -1;
        }
        int i2 = ((FilterInputStream) this).in.read();
        if (i2 != -1) {
            this.zza--;
        }
        return i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        long j2 = this.zza;
        if (j2 == 0) {
            return -1;
        }
        int i4 = ((FilterInputStream) this).in.read(bArr, i2, (int) Math.min(i3, j2));
        if (i4 != -1) {
            this.zza -= (long) i4;
        }
        return i4;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        if (!((FilterInputStream) this).in.markSupported()) {
            throw new IOException("Mark not supported");
        }
        if (this.zzb == -1) {
            throw new IOException("Mark not set");
        }
        ((FilterInputStream) this).in.reset();
        this.zza = this.zzb;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j2) throws IOException {
        long jSkip = ((FilterInputStream) this).in.skip(Math.min(j2, this.zza));
        this.zza -= jSkip;
        return jSkip;
    }
}
