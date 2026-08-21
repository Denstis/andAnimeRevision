package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class zzbap {
    private long zzcu;

    public final long zzl(ByteBuffer byteBuffer) {
        zzbg zzbgVar;
        zzbd zzbdVar;
        long j2 = this.zzcu;
        if (j2 > 0) {
            return j2;
        }
        try {
            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
            byteBufferDuplicate.flip();
            Iterator<zzbb> it = new zzaz(new zzbaq(byteBufferDuplicate), zzbar.zzedb).zzbdc().iterator();
            while (true) {
                zzbgVar = null;
                if (!it.hasNext()) {
                    zzbdVar = null;
                    break;
                }
                zzbb next = it.next();
                if (next instanceof zzbd) {
                    zzbdVar = (zzbd) next;
                    break;
                }
            }
            Iterator<zzbb> it2 = zzbdVar.zzbdc().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                zzbb next2 = it2.next();
                if (next2 instanceof zzbg) {
                    zzbgVar = (zzbg) next2;
                    break;
                }
            }
            this.zzcu = (zzbgVar.getDuration() * 1000) / zzbgVar.zzq();
            return this.zzcu;
        } catch (IOException | RuntimeException unused) {
            return 0L;
        }
    }
}
