package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class zzhz implements zzhe {
    private int zzafm;
    private ByteBuffer zzajf;
    private int zzaki;
    private int[] zzakj;
    private boolean zzakk;
    private int[] zzakl;
    private ByteBuffer zzakm;
    private boolean zzakn;

    public zzhz() {
        ByteBuffer byteBuffer = zzhe.zzagy;
        this.zzakm = byteBuffer;
        this.zzajf = byteBuffer;
        this.zzafm = -1;
        this.zzaki = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void flush() {
        this.zzajf = zzhe.zzagy;
        this.zzakn = false;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final boolean isActive() {
        return this.zzakk;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void reset() {
        flush();
        this.zzakm = zzhe.zzagy;
        this.zzafm = -1;
        this.zzaki = -1;
        this.zzakl = null;
        this.zzakk = false;
    }

    public final void zzb(int[] iArr) {
        this.zzakj = iArr;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final boolean zzb(int i2, int i3, int i4) throws zzhh {
        boolean z = !Arrays.equals(this.zzakj, this.zzakl);
        this.zzakl = this.zzakj;
        if (this.zzakl == null) {
            this.zzakk = false;
            return z;
        }
        if (i4 != 2) {
            throw new zzhh(i2, i3, i4);
        }
        if (!z && this.zzaki == i2 && this.zzafm == i3) {
            return false;
        }
        this.zzaki = i2;
        this.zzafm = i3;
        this.zzakk = i3 != this.zzakl.length;
        int i5 = 0;
        while (true) {
            int[] iArr = this.zzakl;
            if (i5 >= iArr.length) {
                return true;
            }
            int i6 = iArr[i5];
            if (i6 >= i3) {
                throw new zzhh(i2, i3, i4);
            }
            this.zzakk = (i6 != i5) | this.zzakk;
            i5++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final boolean zzeo() {
        return this.zzakn && this.zzajf == zzhe.zzagy;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final int zzet() {
        int[] iArr = this.zzakl;
        return iArr == null ? this.zzafm : iArr.length;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final int zzeu() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void zzev() {
        this.zzakn = true;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final ByteBuffer zzew() {
        ByteBuffer byteBuffer = this.zzajf;
        this.zzajf = zzhe.zzagy;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void zzi(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int length = (((iLimit - iPosition) / (this.zzafm * 2)) * this.zzakl.length) << 1;
        if (this.zzakm.capacity() < length) {
            this.zzakm = ByteBuffer.allocateDirect(length).order(ByteOrder.nativeOrder());
        } else {
            this.zzakm.clear();
        }
        while (iPosition < iLimit) {
            for (int i2 : this.zzakl) {
                this.zzakm.putShort(byteBuffer.getShort((i2 * 2) + iPosition));
            }
            iPosition += this.zzafm << 1;
        }
        byteBuffer.position(iLimit);
        this.zzakm.flip();
        this.zzajf = this.zzakm;
    }
}
