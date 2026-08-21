package com.google.android.gms.internal.ads;

import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
final class zzban implements zzne {
    private Uri uri;
    private final zzne zzecx;
    private final long zzecy;
    private final zzne zzecz;
    private long zzeda;

    zzban(zzne zzneVar, int i2, zzne zzneVar2) {
        this.zzecx = zzneVar;
        this.zzecy = i2;
        this.zzecz = zzneVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final void close() {
        this.zzecx.close();
        this.zzecz.close();
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final int read(byte[] bArr, int i2, int i3) {
        int i4;
        long j2 = this.zzeda;
        long j3 = this.zzecy;
        if (j2 < j3) {
            i4 = this.zzecx.read(bArr, i2, (int) Math.min(i3, j3 - j2));
            this.zzeda += (long) i4;
        } else {
            i4 = 0;
        }
        if (this.zzeda < this.zzecy) {
            return i4;
        }
        int i5 = this.zzecz.read(bArr, i2 + i4, i3 - i4);
        int i6 = i4 + i5;
        this.zzeda += (long) i5;
        return i6;
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final long zza(zznf zznfVar) {
        zznf zznfVar2;
        zznf zznfVar3;
        this.uri = zznfVar.uri;
        long j2 = zznfVar.zzamq;
        long j3 = this.zzecy;
        if (j2 >= j3) {
            zznfVar2 = null;
        } else {
            long j4 = zznfVar.zzcb;
            long jMin = j3 - j2;
            if (j4 != -1) {
                jMin = Math.min(j4, jMin);
            }
            zznfVar2 = new zznf(zznfVar.uri, j2, jMin, null);
        }
        long j5 = zznfVar.zzcb;
        if (j5 == -1 || zznfVar.zzamq + j5 > this.zzecy) {
            long jMax = Math.max(this.zzecy, zznfVar.zzamq);
            long j6 = zznfVar.zzcb;
            zznfVar3 = new zznf(zznfVar.uri, jMax, j6 != -1 ? Math.min(j6, (zznfVar.zzamq + j6) - this.zzecy) : -1L, null);
        } else {
            zznfVar3 = null;
        }
        long jZza = zznfVar2 != null ? this.zzecx.zza(zznfVar2) : 0L;
        long jZza2 = zznfVar3 != null ? this.zzecz.zza(zznfVar3) : 0L;
        this.zzeda = zznfVar.zzamq;
        if (jZza == -1 || jZza2 == -1) {
            return -1L;
        }
        return jZza + jZza2;
    }
}
