package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class zzni implements zznc {
    private final boolean zzbfd;
    private final int zzbfe;
    private final byte[] zzbff;
    private final zzmz[] zzbfg;
    private int zzbfh;
    private int zzbfi;
    private int zzbfj;
    private zzmz[] zzbfk;

    public zzni(boolean z, int i2) {
        this(true, C.DEFAULT_BUFFER_SEGMENT_SIZE, 0);
    }

    private zzni(boolean z, int i2, int i3) {
        zznr.checkArgument(true);
        zznr.checkArgument(true);
        this.zzbfd = true;
        this.zzbfe = C.DEFAULT_BUFFER_SEGMENT_SIZE;
        this.zzbfj = 0;
        this.zzbfk = new zzmz[100];
        this.zzbff = null;
        this.zzbfg = new zzmz[1];
    }

    public final synchronized void reset() {
        if (this.zzbfd) {
            zzba(0);
        }
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final synchronized void zza(zzmz zzmzVar) {
        this.zzbfg[0] = zzmzVar;
        zza(this.zzbfg);
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final synchronized void zza(zzmz[] zzmzVarArr) {
        if (this.zzbfj + zzmzVarArr.length >= this.zzbfk.length) {
            this.zzbfk = (zzmz[]) Arrays.copyOf(this.zzbfk, Math.max(this.zzbfk.length << 1, this.zzbfj + zzmzVarArr.length));
        }
        for (zzmz zzmzVar : zzmzVarArr) {
            zznr.checkArgument(zzmzVar.data == null || zzmzVar.data.length == this.zzbfe);
            zzmz[] zzmzVarArr2 = this.zzbfk;
            int i2 = this.zzbfj;
            this.zzbfj = i2 + 1;
            zzmzVarArr2[i2] = zzmzVar;
        }
        this.zzbfi -= zzmzVarArr.length;
        notifyAll();
    }

    public final synchronized void zzba(int i2) {
        boolean z = i2 < this.zzbfh;
        this.zzbfh = i2;
        if (z) {
            zzm();
        }
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final synchronized zzmz zzhz() {
        zzmz zzmzVar;
        this.zzbfi++;
        if (this.zzbfj > 0) {
            zzmz[] zzmzVarArr = this.zzbfk;
            int i2 = this.zzbfj - 1;
            this.zzbfj = i2;
            zzmzVar = zzmzVarArr[i2];
            this.zzbfk[this.zzbfj] = null;
        } else {
            zzmzVar = new zzmz(new byte[this.zzbfe], 0);
        }
        return zzmzVar;
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final int zzia() {
        return this.zzbfe;
    }

    public final synchronized int zzid() {
        return this.zzbfi * this.zzbfe;
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final synchronized void zzm() {
        int iMax = Math.max(0, zzof.zze(this.zzbfh, this.zzbfe) - this.zzbfi);
        if (iMax >= this.zzbfj) {
            return;
        }
        Arrays.fill(this.zzbfk, iMax, this.zzbfj, (Object) null);
        this.zzbfj = iMax;
    }
}
