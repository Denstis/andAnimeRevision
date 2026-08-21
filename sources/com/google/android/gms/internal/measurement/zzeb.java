package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
final class zzeb extends zzee {
    private final int zzc;
    private final int zzd;

    zzeb(byte[] bArr, int i2, int i3) {
        super(bArr);
        zzdu.zzb(i2, i2 + i3, bArr.length);
        this.zzc = i2;
        this.zzd = i3;
    }

    @Override // com.google.android.gms.internal.measurement.zzee, com.google.android.gms.internal.measurement.zzdu
    public final byte zza(int i2) {
        int iZza = zza();
        if (((iZza - (i2 + 1)) | i2) >= 0) {
            return this.zzb[this.zzc + i2];
        }
        if (i2 < 0) {
            StringBuilder sb = new StringBuilder(22);
            sb.append("Index < 0: ");
            sb.append(i2);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append("Index > length: ");
        sb2.append(i2);
        sb2.append(", ");
        sb2.append(iZza);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }

    @Override // com.google.android.gms.internal.measurement.zzee, com.google.android.gms.internal.measurement.zzdu
    public final int zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.measurement.zzee, com.google.android.gms.internal.measurement.zzdu
    final byte zzb(int i2) {
        return this.zzb[this.zzc + i2];
    }

    @Override // com.google.android.gms.internal.measurement.zzee
    protected final int zze() {
        return this.zzc;
    }
}
