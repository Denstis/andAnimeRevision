package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzdu implements Serializable, Iterable<Byte> {
    public static final zzdu zza = new zzee(zzff.zzb);
    private static final zzea zzb;
    private static final Comparator<zzdu> zzd;
    private int zzc = 0;

    static {
        zzdx zzdxVar = null;
        zzb = zzdr.zza() ? new zzeh(zzdxVar) : new zzdy(zzdxVar);
        zzd = new zzdw();
    }

    zzdu() {
    }

    public static zzdu zza(String str) {
        return new zzee(str.getBytes(zzff.zza));
    }

    static zzdu zza(byte[] bArr) {
        return new zzee(bArr);
    }

    public static zzdu zza(byte[] bArr, int i2, int i3) {
        zzb(i2, i2 + i3, bArr.length);
        return new zzee(zzb.zza(bArr, i2, i3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzb(byte b2) {
        return b2 & 255;
    }

    static int zzb(int i2, int i3, int i4) {
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

    static zzec zzc(int i2) {
        return new zzec(i2, null);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int iZza = this.zzc;
        if (iZza == 0) {
            int iZza2 = zza();
            iZza = zza(iZza2, 0, iZza2);
            if (iZza == 0) {
                iZza = 1;
            }
            this.zzc = iZza;
        }
        return iZza;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new zzdx(this);
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(zza());
        objArr[2] = zza() <= 50 ? zzhr.zza(this) : String.valueOf(zzhr.zza(zza(0, 47))).concat("...");
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    public abstract byte zza(int i2);

    public abstract int zza();

    protected abstract int zza(int i2, int i3, int i4);

    public abstract zzdu zza(int i2, int i3);

    protected abstract String zza(Charset charset);

    abstract void zza(zzdv zzdvVar);

    abstract byte zzb(int i2);

    public final String zzb() {
        return zza() == 0 ? "" : zza(zzff.zza);
    }

    public abstract boolean zzc();

    protected final int zzd() {
        return this.zzc;
    }
}
