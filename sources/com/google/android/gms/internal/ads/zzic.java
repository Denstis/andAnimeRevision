package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
final class zzic implements zzhe {
    private ByteBuffer zzajf;
    private ByteBuffer zzakm;
    private boolean zzakn;
    private int zzaki = -1;
    private int zzafm = -1;
    private int zzaia = 0;

    public zzic() {
        ByteBuffer byteBuffer = zzhe.zzagy;
        this.zzakm = byteBuffer;
        this.zzajf = byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void flush() {
        this.zzajf = zzhe.zzagy;
        this.zzakn = false;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final boolean isActive() {
        int i2 = this.zzaia;
        return (i2 == 0 || i2 == 2) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void reset() {
        flush();
        this.zzakm = zzhe.zzagy;
        this.zzaki = -1;
        this.zzafm = -1;
        this.zzaia = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final boolean zzb(int i2, int i3, int i4) throws zzhh {
        if (i4 != 3 && i4 != 2 && i4 != Integer.MIN_VALUE && i4 != 1073741824) {
            throw new zzhh(i2, i3, i4);
        }
        if (this.zzaki == i2 && this.zzafm == i3 && this.zzaia == i4) {
            return false;
        }
        this.zzaki = i2;
        this.zzafm = i3;
        this.zzaia = i4;
        if (i4 != 2) {
            return true;
        }
        this.zzakm = zzhe.zzagy;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final boolean zzeo() {
        return this.zzakn && this.zzajf == zzhe.zzagy;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final int zzet() {
        return this.zzafm;
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

    /* JADX WARN: Removed duplicated region for block: B:13:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0081 A[ADDED_TO_REGION, LOOP:2: B:25:0x0081->B:26:0x0083, LOOP_START, PHI: r0
      0x0081: PHI (r0v1 int) = (r0v0 int), (r0v2 int) binds: [B:16:0x0041, B:26:0x0083] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.ads.zzhe
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzi(java.nio.ByteBuffer r8) {
        /*
            r7 = this;
            int r0 = r8.position()
            int r1 = r8.limit()
            int r2 = r1 - r0
            int r3 = r7.zzaia
            r4 = 1073741824(0x40000000, float:2.0)
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = 3
            if (r3 == r5) goto L20
            if (r3 == r6) goto L21
            if (r3 != r4) goto L1a
            int r2 = r2 / 2
            goto L23
        L1a:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            r8.<init>()
            throw r8
        L20:
            int r2 = r2 / r6
        L21:
            int r2 = r2 << 1
        L23:
            java.nio.ByteBuffer r3 = r7.zzakm
            int r3 = r3.capacity()
            if (r3 >= r2) goto L3a
            java.nio.ByteBuffer r2 = java.nio.ByteBuffer.allocateDirect(r2)
            java.nio.ByteOrder r3 = java.nio.ByteOrder.nativeOrder()
            java.nio.ByteBuffer r2 = r2.order(r3)
            r7.zzakm = r2
            goto L3f
        L3a:
            java.nio.ByteBuffer r2 = r7.zzakm
            r2.clear()
        L3f:
            int r2 = r7.zzaia
            if (r2 == r5) goto L81
            if (r2 == r6) goto L68
            if (r2 != r4) goto L62
        L47:
            if (r0 >= r1) goto L9c
            java.nio.ByteBuffer r2 = r7.zzakm
            int r3 = r0 + 2
            byte r3 = r8.get(r3)
            r2.put(r3)
            java.nio.ByteBuffer r2 = r7.zzakm
            int r3 = r0 + 3
            byte r3 = r8.get(r3)
            r2.put(r3)
            int r0 = r0 + 4
            goto L47
        L62:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            r8.<init>()
            throw r8
        L68:
            if (r0 >= r1) goto L9c
            java.nio.ByteBuffer r2 = r7.zzakm
            r3 = 0
            r2.put(r3)
            java.nio.ByteBuffer r2 = r7.zzakm
            byte r3 = r8.get(r0)
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r3 = r3 + (-128)
            byte r3 = (byte) r3
            r2.put(r3)
            int r0 = r0 + 1
            goto L68
        L81:
            if (r0 >= r1) goto L9c
            java.nio.ByteBuffer r2 = r7.zzakm
            int r3 = r0 + 1
            byte r3 = r8.get(r3)
            r2.put(r3)
            java.nio.ByteBuffer r2 = r7.zzakm
            int r3 = r0 + 2
            byte r3 = r8.get(r3)
            r2.put(r3)
            int r0 = r0 + 3
            goto L81
        L9c:
            int r0 = r8.limit()
            r8.position(r0)
            java.nio.ByteBuffer r8 = r7.zzakm
            r8.flip()
            java.nio.ByteBuffer r8 = r7.zzakm
            r7.zzajf = r8
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzic.zzi(java.nio.ByteBuffer):void");
    }
}
