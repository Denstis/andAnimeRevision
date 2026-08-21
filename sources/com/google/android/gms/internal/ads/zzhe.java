package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public interface zzhe {
    public static final ByteBuffer zzagy = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    void flush();

    boolean isActive();

    void reset();

    boolean zzb(int i2, int i3, int i4);

    boolean zzeo();

    int zzet();

    int zzeu();

    void zzev();

    ByteBuffer zzew();

    void zzi(ByteBuffer byteBuffer);
}
