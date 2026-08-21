package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
class zzee extends zzef {
    protected final byte[] zzb;

    zzee(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException();
        }
        this.zzb = bArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzdu
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdu) || zza() != ((zzdu) obj).zza()) {
            return false;
        }
        if (zza() == 0) {
            return true;
        }
        if (!(obj instanceof zzee)) {
            return obj.equals(this);
        }
        zzee zzeeVar = (zzee) obj;
        int iZzd = zzd();
        int iZzd2 = zzeeVar.zzd();
        if (iZzd == 0 || iZzd2 == 0 || iZzd == iZzd2) {
            return zza(zzeeVar, 0, zza());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzdu
    public byte zza(int i2) {
        return this.zzb[i2];
    }

    @Override // com.google.android.gms.internal.measurement.zzdu
    public int zza() {
        return this.zzb.length;
    }

    @Override // com.google.android.gms.internal.measurement.zzdu
    protected final int zza(int i2, int i3, int i4) {
        return zzff.zza(i2, this.zzb, zze(), i4);
    }

    @Override // com.google.android.gms.internal.measurement.zzdu
    public final zzdu zza(int i2, int i3) {
        int iZzb = zzdu.zzb(0, i3, zza());
        return iZzb == 0 ? zzdu.zza : new zzeb(this.zzb, zze(), iZzb);
    }

    @Override // com.google.android.gms.internal.measurement.zzdu
    protected final String zza(Charset charset) {
        return new String(this.zzb, zze(), zza(), charset);
    }

    @Override // com.google.android.gms.internal.measurement.zzdu
    final void zza(zzdv zzdvVar) {
        zzdvVar.zza(this.zzb, zze(), zza());
    }

    @Override // com.google.android.gms.internal.measurement.zzef
    final boolean zza(zzdu zzduVar, int i2, int i3) {
        if (i3 > zzduVar.zza()) {
            int iZza = zza();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i3);
            sb.append(iZza);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i3 > zzduVar.zza()) {
            int iZza2 = zzduVar.zza();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i3);
            sb2.append(", ");
            sb2.append(iZza2);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (!(zzduVar instanceof zzee)) {
            return zzduVar.zza(0, i3).equals(zza(0, i3));
        }
        zzee zzeeVar = (zzee) zzduVar;
        byte[] bArr = this.zzb;
        byte[] bArr2 = zzeeVar.zzb;
        int iZze = zze() + i3;
        int iZze2 = zze();
        int iZze3 = zzeeVar.zze();
        while (iZze2 < iZze) {
            if (bArr[iZze2] != bArr2[iZze3]) {
                return false;
            }
            iZze2++;
            iZze3++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzdu
    byte zzb(int i2) {
        return this.zzb[i2];
    }

    @Override // com.google.android.gms.internal.measurement.zzdu
    public final boolean zzc() {
        int iZze = zze();
        return zzie.zza(this.zzb, iZze, zza() + iZze);
    }

    protected int zze() {
        return 0;
    }
}
