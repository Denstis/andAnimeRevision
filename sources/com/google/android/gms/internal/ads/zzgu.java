package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzgu {
    public static final zzgu zzafz = new zzgu(1.0f, 1.0f);
    public final float zzaga;
    public final float zzagb;
    private final int zzagc;

    public zzgu(float f2, float f3) {
        this.zzaga = f2;
        this.zzagb = f3;
        this.zzagc = Math.round(f2 * 1000.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzgu.class == obj.getClass()) {
            zzgu zzguVar = (zzgu) obj;
            if (this.zzaga == zzguVar.zzaga && this.zzagb == zzguVar.zzagb) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Float.floatToRawIntBits(this.zzaga) + 527) * 31) + Float.floatToRawIntBits(this.zzagb);
    }

    public final long zzdo(long j2) {
        return j2 * ((long) this.zzagc);
    }
}
