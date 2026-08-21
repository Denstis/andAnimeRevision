package com.google.android.gms.internal.ads;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzaw extends ByteArrayOutputStream {
    private final zzaj zzbw;

    public zzaw(zzaj zzajVar, int i2) {
        this.zzbw = zzajVar;
        ((ByteArrayOutputStream) this).buf = this.zzbw.zzc(Math.max(i2, 256));
    }

    private final void zzd(int i2) {
        int i3 = ((ByteArrayOutputStream) this).count;
        if (i3 + i2 <= ((ByteArrayOutputStream) this).buf.length) {
            return;
        }
        byte[] bArrZzc = this.zzbw.zzc((i3 + i2) << 1);
        System.arraycopy(((ByteArrayOutputStream) this).buf, 0, bArrZzc, 0, ((ByteArrayOutputStream) this).count);
        this.zzbw.zza(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = bArrZzc;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.zzbw.zza(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = null;
        super.close();
    }

    public final void finalize() {
        this.zzbw.zza(((ByteArrayOutputStream) this).buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(int i2) {
        zzd(1);
        super.write(i2);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i2, int i3) {
        zzd(i3);
        super.write(bArr, i2, i3);
    }
}
