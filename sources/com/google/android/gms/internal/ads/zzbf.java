package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class zzbf extends zzdvk {
    private ByteBuffer zzcq;

    public zzbf(String str) {
        super(str);
    }

    @Override // com.google.android.gms.internal.ads.zzdvk
    public final void zzg(ByteBuffer byteBuffer) {
        this.zzcq = byteBuffer;
        byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
    }
}
