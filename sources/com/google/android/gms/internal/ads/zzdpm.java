package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzdpm implements Serializable, Iterable<Byte> {
    public static final zzdpm zzhgb = new zzdpw(zzdqx.zzhlj);
    private static final zzdps zzhgc;
    private static final Comparator<zzdpm> zzhgd;
    private int zzhfj = 0;

    static {
        zzdpp zzdppVar = null;
        zzhgc = zzdpj.zzaxl() ? new zzdpz(zzdppVar) : new zzdpq(zzdppVar);
        zzhgd = new zzdpo();
    }

    zzdpm() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzb(byte b2) {
        return b2 & 255;
    }

    static zzdpu zzfo(int i2) {
        return new zzdpu(i2, null);
    }

    static int zzh(int i2, int i3, int i4) {
        int i5 = i3 - i2;
        if ((i2 | i3 | i5 | (i4 - i3)) >= 0) {
            return i5;
        }
        if (i2 < 0) {
            StringBuilder sb = new StringBuilder(32);
            sb.append("Beginning index: ");
            sb.append(i2);
            sb.append(" < 0");
            throw new IndexOutOfBoundsException(sb.toString());
        }
        if (i3 < i2) {
            StringBuilder sb2 = new StringBuilder(66);
            sb2.append("Beginning index larger than ending index: ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(i3);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("End index: ");
        sb3.append(i3);
        sb3.append(" >= ");
        sb3.append(i4);
        throw new IndexOutOfBoundsException(sb3.toString());
    }

    public static zzdpm zzh(byte[] bArr, int i2, int i3) {
        zzh(i2, i2 + i3, bArr.length);
        return new zzdpw(zzhgc.zzj(bArr, i2, i3));
    }

    public static zzdpm zzhh(String str) {
        return new zzdpw(str.getBytes(zzdqx.UTF_8));
    }

    public static zzdpm zzy(byte[] bArr) {
        return zzh(bArr, 0, bArr.length);
    }

    static zzdpm zzz(byte[] bArr) {
        return new zzdpw(bArr);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int iZzg = this.zzhfj;
        if (iZzg == 0) {
            int size = size();
            iZzg = zzg(size, 0, size);
            if (iZzg == 0) {
                iZzg = 1;
            }
            this.zzhfj = iZzg;
        }
        return iZzg;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new zzdpp(this);
    }

    public abstract int size();

    public final byte[] toByteArray() {
        int size = size();
        if (size == 0) {
            return zzdqx.zzhlj;
        }
        byte[] bArr = new byte[size];
        zza(bArr, 0, 0, size);
        return bArr;
    }

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    protected abstract String zza(Charset charset);

    abstract void zza(zzdpn zzdpnVar);

    protected abstract void zza(byte[] bArr, int i2, int i3, int i4);

    public final String zzaxn() {
        return size() == 0 ? "" : zza(zzdqx.UTF_8);
    }

    public abstract boolean zzaxo();

    public abstract zzdpy zzaxp();

    protected final int zzaxq() {
        return this.zzhfj;
    }

    public abstract byte zzfm(int i2);

    abstract byte zzfn(int i2);

    protected abstract int zzg(int i2, int i3, int i4);

    public abstract zzdpm zzy(int i2, int i3);
}
