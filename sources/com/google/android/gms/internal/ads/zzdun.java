package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzdun implements Cloneable {
    private static final zzduq zzhqz = new zzduq();
    private int mSize;
    private boolean zzhra;
    private int[] zzhrb;
    private zzduq[] zzhrc;

    zzdun() {
        this(10);
    }

    private zzdun(int i2) {
        this.zzhra = false;
        int i3 = i2 << 2;
        int i4 = 4;
        while (true) {
            if (i4 >= 32) {
                break;
            }
            int i5 = (1 << i4) - 12;
            if (i3 <= i5) {
                i3 = i5;
                break;
            }
            i4++;
        }
        int i6 = i3 / 4;
        this.zzhrb = new int[i6];
        this.zzhrc = new zzduq[i6];
        this.mSize = 0;
    }

    public final /* synthetic */ Object clone() {
        int i2 = this.mSize;
        zzdun zzdunVar = new zzdun(i2);
        System.arraycopy(this.zzhrb, 0, zzdunVar.zzhrb, 0, i2);
        for (int i3 = 0; i3 < i2; i3++) {
            zzduq[] zzduqVarArr = this.zzhrc;
            if (zzduqVarArr[i3] != null) {
                zzdunVar.zzhrc[i3] = (zzduq) zzduqVarArr[i3].clone();
            }
        }
        zzdunVar.mSize = i2;
        return zzdunVar;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdun)) {
            return false;
        }
        zzdun zzdunVar = (zzdun) obj;
        int i2 = this.mSize;
        if (i2 != zzdunVar.mSize) {
            return false;
        }
        int[] iArr = this.zzhrb;
        int[] iArr2 = zzdunVar.zzhrb;
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                z = true;
                break;
            }
            if (iArr[i3] != iArr2[i3]) {
                z = false;
                break;
            }
            i3++;
        }
        if (z) {
            zzduq[] zzduqVarArr = this.zzhrc;
            zzduq[] zzduqVarArr2 = zzdunVar.zzhrc;
            int i4 = this.mSize;
            int i5 = 0;
            while (true) {
                if (i5 >= i4) {
                    z2 = true;
                    break;
                }
                if (!zzduqVarArr[i5].equals(zzduqVarArr2[i5])) {
                    z2 = false;
                    break;
                }
                i5++;
            }
            if (z2) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = 17;
        for (int i2 = 0; i2 < this.mSize; i2++) {
            iHashCode = (((iHashCode * 31) + this.zzhrb[i2]) * 31) + this.zzhrc[i2].hashCode();
        }
        return iHashCode;
    }

    final int size() {
        return this.mSize;
    }

    final zzduq zzhf(int i2) {
        return this.zzhrc[i2];
    }
}
