package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import java.io.EOFException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class zzit implements zziv {
    private static final byte[] zzamn = new byte[MpegAudioHeader.MAX_FRAME_SIZE_BYTES];
    private final zzne zzamo;
    private final long zzamp;
    private long zzamq;
    private byte[] zzamr = new byte[C.DEFAULT_BUFFER_SEGMENT_SIZE];
    private int zzams;
    private int zzamt;

    public zzit(zzne zzneVar, long j2, long j3) {
        this.zzamo = zzneVar;
        this.zzamq = j2;
        this.zzamp = j3;
    }

    private final int zza(byte[] bArr, int i2, int i3, int i4, boolean z) throws InterruptedException, EOFException {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        int i5 = this.zzamo.read(bArr, i2 + i4, i3 - i4);
        if (i5 != -1) {
            return i4 + i5;
        }
        if (i4 == 0 && z) {
            return -1;
        }
        throw new EOFException();
    }

    private final int zzad(int i2) {
        int iMin = Math.min(this.zzamt, i2);
        zzae(iMin);
        return iMin;
    }

    private final void zzae(int i2) {
        this.zzamt -= i2;
        this.zzams = 0;
        byte[] bArr = this.zzamr;
        int i3 = this.zzamt;
        if (i3 < bArr.length - 524288) {
            bArr = new byte[i3 + C.DEFAULT_BUFFER_SEGMENT_SIZE];
        }
        System.arraycopy(this.zzamr, i2, bArr, 0, this.zzamt);
        this.zzamr = bArr;
    }

    private final void zzaf(int i2) {
        if (i2 != -1) {
            this.zzamq += (long) i2;
        }
    }

    private final int zzb(byte[] bArr, int i2, int i3) {
        int i4 = this.zzamt;
        if (i4 == 0) {
            return 0;
        }
        int iMin = Math.min(i4, i3);
        System.arraycopy(this.zzamr, 0, bArr, i2, iMin);
        zzae(iMin);
        return iMin;
    }

    private final boolean zzd(int i2, boolean z) throws InterruptedException, EOFException {
        int i3 = this.zzams + i2;
        byte[] bArr = this.zzamr;
        if (i3 > bArr.length) {
            this.zzamr = Arrays.copyOf(this.zzamr, zzof.zzd(bArr.length << 1, C.DEFAULT_BUFFER_SEGMENT_SIZE + i3, i3 + 524288));
        }
        int iMin = Math.min(this.zzamt - this.zzams, i2);
        while (iMin < i2) {
            iMin = zza(this.zzamr, this.zzams, i2, iMin, false);
            if (iMin == -1) {
                return false;
            }
        }
        this.zzams += i2;
        this.zzamt = Math.max(this.zzamt, this.zzams);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final long getLength() {
        return this.zzamp;
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final long getPosition() {
        return this.zzamq;
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final int read(byte[] bArr, int i2, int i3) throws InterruptedException, EOFException {
        int iZzb = zzb(bArr, i2, i3);
        if (iZzb == 0) {
            iZzb = zza(bArr, i2, i3, 0, true);
        }
        zzaf(iZzb);
        return iZzb;
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final void readFully(byte[] bArr, int i2, int i3) throws InterruptedException, EOFException {
        zza(bArr, i2, i3, false);
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final void zza(byte[] bArr, int i2, int i3) {
        if (zzd(i3, false)) {
            System.arraycopy(this.zzamr, this.zzams - i3, bArr, i2, i3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final boolean zza(byte[] bArr, int i2, int i3, boolean z) throws InterruptedException, EOFException {
        int iZzb = zzb(bArr, i2, i3);
        while (iZzb < i3 && iZzb != -1) {
            iZzb = zza(bArr, i2, i3, iZzb, z);
        }
        zzaf(iZzb);
        return iZzb != -1;
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final int zzaa(int i2) throws InterruptedException, EOFException {
        int iZzad = zzad(i2);
        if (iZzad == 0) {
            byte[] bArr = zzamn;
            iZzad = zza(bArr, 0, Math.min(i2, bArr.length), 0, true);
        }
        zzaf(iZzad);
        return iZzad;
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final void zzab(int i2) throws InterruptedException, EOFException {
        int iZzad = zzad(i2);
        while (iZzad < i2 && iZzad != -1) {
            byte[] bArr = zzamn;
            iZzad = zza(bArr, -iZzad, Math.min(i2, bArr.length + iZzad), iZzad, false);
        }
        zzaf(iZzad);
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final void zzac(int i2) throws InterruptedException, EOFException {
        zzd(i2, false);
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final void zzgb() {
        this.zzams = 0;
    }
}
