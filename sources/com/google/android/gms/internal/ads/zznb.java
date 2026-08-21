package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zznb implements zzne {
    private final byte[] data;
    private Uri uri;
    private int zzbei;
    private int zzbej;

    public zznb(byte[] bArr) {
        zznr.checkNotNull(bArr);
        zznr.checkArgument(bArr.length > 0);
        this.data = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final void close() {
        this.uri = null;
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final int read(byte[] bArr, int i2, int i3) {
        if (i3 == 0) {
            return 0;
        }
        int i4 = this.zzbej;
        if (i4 == 0) {
            return -1;
        }
        int iMin = Math.min(i3, i4);
        System.arraycopy(this.data, this.zzbei, bArr, i2, iMin);
        this.zzbei += iMin;
        this.zzbej -= iMin;
        return iMin;
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final long zza(zznf zznfVar) throws IOException {
        this.uri = zznfVar.uri;
        long j2 = zznfVar.zzamq;
        this.zzbei = (int) j2;
        long length = zznfVar.zzcb;
        if (length == -1) {
            length = ((long) this.data.length) - j2;
        }
        this.zzbej = (int) length;
        int i2 = this.zzbej;
        if (i2 > 0 && this.zzbei + i2 <= this.data.length) {
            return i2;
        }
        int i3 = this.zzbei;
        long j3 = zznfVar.zzcb;
        int length2 = this.data.length;
        StringBuilder sb = new StringBuilder(77);
        sb.append("Unsatisfiable range: [");
        sb.append(i3);
        sb.append(", ");
        sb.append(j3);
        sb.append("], length: ");
        sb.append(length2);
        throw new IOException(sb.toString());
    }
}
