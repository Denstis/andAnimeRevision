package com.google.android.gms.internal.firebase_messaging;

import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
final class zzi extends OutputStream {
    zzi() {
    }

    public final String toString() {
        return "ByteStreams.nullOutputStream()";
    }

    @Override // java.io.OutputStream
    public final void write(int i2) {
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        zzg.zza(bArr);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i2, int i3) {
        zzg.zza(bArr);
    }
}
