package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface zzdvn extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    long position();

    int read(ByteBuffer byteBuffer);

    long size();

    void zzew(long j2);

    ByteBuffer zzh(long j2, long j3);
}
