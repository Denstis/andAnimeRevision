package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzaj {
    private static final Comparator<byte[]> zzbt = new zzam();
    private final List<byte[]> zzbp = new ArrayList();
    private final List<byte[]> zzbq = new ArrayList(64);
    private int zzbr = 0;
    private final int zzbs = MpegAudioHeader.MAX_FRAME_SIZE_BYTES;

    public zzaj(int i2) {
    }

    private final synchronized void zzm() {
        while (this.zzbr > this.zzbs) {
            byte[] bArrRemove = this.zzbp.remove(0);
            this.zzbq.remove(bArrRemove);
            this.zzbr -= bArrRemove.length;
        }
    }

    public final synchronized void zza(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.zzbs) {
                this.zzbp.add(bArr);
                int iBinarySearch = Collections.binarySearch(this.zzbq, bArr, zzbt);
                if (iBinarySearch < 0) {
                    iBinarySearch = (-iBinarySearch) - 1;
                }
                this.zzbq.add(iBinarySearch, bArr);
                this.zzbr += bArr.length;
                zzm();
            }
        }
    }

    public final synchronized byte[] zzc(int i2) {
        for (int i3 = 0; i3 < this.zzbq.size(); i3++) {
            byte[] bArr = this.zzbq.get(i3);
            if (bArr.length >= i2) {
                this.zzbr -= bArr.length;
                this.zzbq.remove(i3);
                this.zzbp.remove(bArr);
                return bArr;
            }
        }
        return new byte[i2];
    }
}
