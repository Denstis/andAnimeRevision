package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzdvk implements zzbb {
    private static zzdvt zzcp = zzdvt.zzn(zzdvk.class);
    private String type;
    private long zzauv;
    private zzbe zzhwm;
    private ByteBuffer zzhwq;
    private long zzhwr;
    private zzdvn zzhwt;
    private long zzhws = -1;
    private ByteBuffer zzhwu = null;
    private boolean zzhwp = true;
    boolean zzhwo = true;

    protected zzdvk(String str) {
        this.type = str;
    }

    private final synchronized void zzbda() {
        if (!this.zzhwp) {
            try {
                zzdvt zzdvtVar = zzcp;
                String strValueOf = String.valueOf(this.type);
                zzdvtVar.zzhr(strValueOf.length() != 0 ? "mem mapping ".concat(strValueOf) : new String("mem mapping "));
                this.zzhwq = this.zzhwt.zzh(this.zzhwr, this.zzhws);
                this.zzhwp = true;
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbb
    public final String getType() {
        return this.type;
    }

    @Override // com.google.android.gms.internal.ads.zzbb
    public final void zza(zzbe zzbeVar) {
        this.zzhwm = zzbeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbb
    public final void zza(zzdvn zzdvnVar, ByteBuffer byteBuffer, long j2, zzba zzbaVar) {
        this.zzhwr = zzdvnVar.position();
        this.zzauv = this.zzhwr - ((long) byteBuffer.remaining());
        this.zzhws = j2;
        this.zzhwt = zzdvnVar;
        zzdvnVar.zzew(zzdvnVar.position() + j2);
        this.zzhwp = false;
        this.zzhwo = false;
        zzbdb();
    }

    public final synchronized void zzbdb() {
        zzbda();
        zzdvt zzdvtVar = zzcp;
        String strValueOf = String.valueOf(this.type);
        zzdvtVar.zzhr(strValueOf.length() != 0 ? "parsing details of ".concat(strValueOf) : new String("parsing details of "));
        if (this.zzhwq != null) {
            ByteBuffer byteBuffer = this.zzhwq;
            this.zzhwo = true;
            byteBuffer.rewind();
            zzg(byteBuffer);
            if (byteBuffer.remaining() > 0) {
                this.zzhwu = byteBuffer.slice();
            }
            this.zzhwq = null;
        }
    }

    protected abstract void zzg(ByteBuffer byteBuffer);
}
