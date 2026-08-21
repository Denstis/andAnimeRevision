package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class zzie implements zzhe {
    private boolean zzakn;
    private zzif zzakw;
    private long zzaky;
    private long zzakz;
    private float zzaga = 1.0f;
    private float zzagb = 1.0f;
    private int zzafm = -1;
    private int zzaki = -1;
    private ByteBuffer zzakm = zzhe.zzagy;
    private ShortBuffer zzakx = this.zzakm.asShortBuffer();
    private ByteBuffer zzajf = zzhe.zzagy;

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void flush() {
        this.zzakw = new zzif(this.zzaki, this.zzafm);
        this.zzakw.setSpeed(this.zzaga);
        this.zzakw.zzc(this.zzagb);
        this.zzajf = zzhe.zzagy;
        this.zzaky = 0L;
        this.zzakz = 0L;
        this.zzakn = false;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final boolean isActive() {
        return Math.abs(this.zzaga - 1.0f) >= 0.01f || Math.abs(this.zzagb - 1.0f) >= 0.01f;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void reset() {
        this.zzakw = null;
        this.zzakm = zzhe.zzagy;
        this.zzakx = this.zzakm.asShortBuffer();
        this.zzajf = zzhe.zzagy;
        this.zzafm = -1;
        this.zzaki = -1;
        this.zzaky = 0L;
        this.zzakz = 0L;
        this.zzakn = false;
    }

    public final float zza(float f2) {
        this.zzaga = zzof.zza(f2, 0.1f, 8.0f);
        return this.zzaga;
    }

    public final float zzb(float f2) {
        this.zzagb = zzof.zza(f2, 0.1f, 8.0f);
        return f2;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final boolean zzb(int i2, int i3, int i4) throws zzhh {
        if (i4 != 2) {
            throw new zzhh(i2, i3, i4);
        }
        if (this.zzaki == i2 && this.zzafm == i3) {
            return false;
        }
        this.zzaki = i2;
        this.zzafm = i3;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final boolean zzeo() {
        if (!this.zzakn) {
            return false;
        }
        zzif zzifVar = this.zzakw;
        return zzifVar == null || zzifVar.zzfr() == 0;
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
        this.zzakw.zzev();
        this.zzakn = true;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final ByteBuffer zzew() {
        ByteBuffer byteBuffer = this.zzajf;
        this.zzajf = zzhe.zzagy;
        return byteBuffer;
    }

    public final long zzfp() {
        return this.zzaky;
    }

    public final long zzfq() {
        return this.zzakz;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void zzi(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.zzaky += (long) iRemaining;
            this.zzakw.zza(shortBufferAsShortBuffer);
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
        int iZzfr = (this.zzakw.zzfr() * this.zzafm) << 1;
        if (iZzfr > 0) {
            if (this.zzakm.capacity() < iZzfr) {
                this.zzakm = ByteBuffer.allocateDirect(iZzfr).order(ByteOrder.nativeOrder());
                this.zzakx = this.zzakm.asShortBuffer();
            } else {
                this.zzakm.clear();
                this.zzakx.clear();
            }
            this.zzakw.zzb(this.zzakx);
            this.zzakz += (long) iZzfr;
            this.zzakm.limit(iZzfr);
            this.zzajf = this.zzakm;
        }
    }
}
