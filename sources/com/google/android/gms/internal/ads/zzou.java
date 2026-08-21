package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(16)
public final class zzou {
    private final zzot zzbiu;
    private final boolean zzbiv;
    private final long zzbiw;
    private final long zzbix;
    private long zzbiy;
    private long zzbiz;
    private long zzbja;
    private boolean zzbjb;
    private long zzbjc;
    private long zzbjd;
    private long zzbje;

    public zzou() {
        this(-1.0d);
    }

    private zzou(double d2) {
        long j2;
        this.zzbiv = d2 != -1.0d;
        if (this.zzbiv) {
            this.zzbiu = zzot.zzja();
            this.zzbiw = (long) (1.0E9d / d2);
            j2 = (this.zzbiw * 80) / 100;
        } else {
            this.zzbiu = null;
            j2 = -1;
            this.zzbiw = -1L;
        }
        this.zzbix = j2;
    }

    public zzou(Context context) {
        this(((WindowManager) context.getSystemService("window")).getDefaultDisplay() != null ? r3.getDefaultDisplay().getRefreshRate() : -1.0d);
    }

    private final boolean zzg(long j2, long j3) {
        return Math.abs((j3 - this.zzbjc) - (j2 - this.zzbjd)) > 20000000;
    }

    public final void disable() {
        if (this.zzbiv) {
            this.zzbiu.zzjc();
        }
    }

    public final void enable() {
        this.zzbjb = false;
        if (this.zzbiv) {
            this.zzbiu.zzjb();
        }
    }

    public final long zzf(long j2, long j3) {
        long j4;
        long j5;
        long j6;
        long j7 = 1000 * j2;
        if (this.zzbjb) {
            if (j2 != this.zzbiy) {
                this.zzbje++;
                this.zzbiz = this.zzbja;
            }
            long j8 = this.zzbje;
            if (j8 >= 6) {
                j5 = this.zzbiz + ((j7 - this.zzbjd) / j8);
                if (!zzg(j5, j3)) {
                    j4 = (this.zzbjc + j5) - this.zzbjd;
                }
            } else {
                if (zzg(j7, j3)) {
                }
                j4 = j3;
                j5 = j7;
            }
            this.zzbjb = false;
            j4 = j3;
            j5 = j7;
        } else {
            j4 = j3;
            j5 = j7;
        }
        if (!this.zzbjb) {
            this.zzbjd = j7;
            this.zzbjc = j3;
            this.zzbje = 0L;
            this.zzbjb = true;
        }
        this.zzbiy = j2;
        this.zzbja = j5;
        zzot zzotVar = this.zzbiu;
        if (zzotVar == null || zzotVar.zzbip == 0) {
            return j4;
        }
        long j9 = this.zzbiu.zzbip;
        long j10 = this.zzbiw;
        long j11 = j9 + (((j4 - j9) / j10) * j10);
        if (j4 <= j11) {
            j6 = j11 - j10;
        } else {
            j11 = j10 + j11;
            j6 = j11;
        }
        if (j11 - j4 >= j4 - j6) {
            j11 = j6;
        }
        return j11 - this.zzbix;
    }
}
