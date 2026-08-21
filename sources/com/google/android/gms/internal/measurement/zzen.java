package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzen extends zzdv {
    private static final Logger zzb = Logger.getLogger(zzen.class.getName());
    private static final boolean zzc = zzib.zza();
    zzep zza;

    public static class zza extends IOException {
        zza() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        zza(String str, Throwable th) {
            String strValueOf = String.valueOf(str);
            super(strValueOf.length() != 0 ? "CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(strValueOf) : new String("CodedOutputStream was writing to a flat byte array and ran out of space.: "), th);
        }

        zza(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    static class zzb extends zzen {
        private final byte[] zzb;
        private final int zzc;
        private final int zzd;
        private int zze;

        zzb(byte[] bArr, int i2, int i3) {
            super();
            if (bArr == null) {
                throw new NullPointerException("buffer");
            }
            int i4 = i3 + 0;
            if ((i3 | 0 | (bArr.length - i4)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i3)));
            }
            this.zzb = bArr;
            this.zzc = 0;
            this.zze = 0;
            this.zzd = i4;
        }

        private final void zzc(byte[] bArr, int i2, int i3) throws zza {
            try {
                System.arraycopy(bArr, i2, this.zzb, this.zze, i3);
                this.zze += i3;
            } catch (IndexOutOfBoundsException e2) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), Integer.valueOf(i3)), e2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final int zza() {
            return this.zzd - this.zze;
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(byte b2) throws zza {
            try {
                byte[] bArr = this.zzb;
                int i2 = this.zze;
                this.zze = i2 + 1;
                bArr[i2] = b2;
            } catch (IndexOutOfBoundsException e2) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(int i2) throws zza {
            if (i2 >= 0) {
                zzb(i2);
            } else {
                zza(i2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(int i2, int i3) throws zza {
            zzb((i2 << 3) | i3);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(int i2, long j2) throws zza {
            zza(i2, 0);
            zza(j2);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(int i2, zzdu zzduVar) throws zza {
            zza(i2, 2);
            zza(zzduVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(int i2, zzgo zzgoVar) throws zza {
            zza(1, 3);
            zzc(2, i2);
            zza(3, 2);
            zza(zzgoVar);
            zza(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        final void zza(int i2, zzgo zzgoVar, zzhd zzhdVar) throws zza {
            zza(i2, 2);
            zzdl zzdlVar = (zzdl) zzgoVar;
            int iZzbj = zzdlVar.zzbj();
            if (iZzbj == -1) {
                iZzbj = zzhdVar.zzb(zzdlVar);
                zzdlVar.zzc(iZzbj);
            }
            zzb(iZzbj);
            zzhdVar.zza(zzgoVar, this.zza);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(int i2, String str) throws zza {
            zza(i2, 2);
            zza(str);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(int i2, boolean z) throws zza {
            zza(i2, 0);
            zza(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(long j2) throws zza {
            if (zzen.zzc && zza() >= 10) {
                while ((j2 & (-128)) != 0) {
                    byte[] bArr = this.zzb;
                    int i2 = this.zze;
                    this.zze = i2 + 1;
                    zzib.zza(bArr, i2, (byte) ((((int) j2) & 127) | 128));
                    j2 >>>= 7;
                }
                byte[] bArr2 = this.zzb;
                int i3 = this.zze;
                this.zze = i3 + 1;
                zzib.zza(bArr2, i3, (byte) j2);
                return;
            }
            while ((j2 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.zzb;
                    int i4 = this.zze;
                    this.zze = i4 + 1;
                    bArr3[i4] = (byte) ((((int) j2) & 127) | 128);
                    j2 >>>= 7;
                } catch (IndexOutOfBoundsException e2) {
                    throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e2);
                }
            }
            byte[] bArr4 = this.zzb;
            int i5 = this.zze;
            this.zze = i5 + 1;
            bArr4[i5] = (byte) j2;
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(zzdu zzduVar) throws zza {
            zzb(zzduVar.zza());
            zzduVar.zza(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(zzgo zzgoVar) throws zza {
            zzb(zzgoVar.zzbn());
            zzgoVar.zza(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(String str) throws zza {
            int i2 = this.zze;
            try {
                int iZzg = zzen.zzg(str.length() * 3);
                int iZzg2 = zzen.zzg(str.length());
                if (iZzg2 != iZzg) {
                    zzb(zzie.zza(str));
                    this.zze = zzie.zza(str, this.zzb, this.zze, zza());
                    return;
                }
                this.zze = i2 + iZzg2;
                int iZza = zzie.zza(str, this.zzb, this.zze, zza());
                this.zze = i2;
                zzb((iZza - i2) - iZzg2);
                this.zze = iZza;
            } catch (zzih e2) {
                this.zze = i2;
                zza(str, e2);
            } catch (IndexOutOfBoundsException e3) {
                throw new zza(e3);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzdv
        public final void zza(byte[] bArr, int i2, int i3) throws zza {
            zzc(bArr, i2, i3);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zzb(int i2) throws zza {
            if (!zzen.zzc || zzdr.zza() || zza() < 5) {
                while ((i2 & (-128)) != 0) {
                    try {
                        byte[] bArr = this.zzb;
                        int i3 = this.zze;
                        this.zze = i3 + 1;
                        bArr[i3] = (byte) ((i2 & 127) | 128);
                        i2 >>>= 7;
                    } catch (IndexOutOfBoundsException e2) {
                        throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e2);
                    }
                }
                byte[] bArr2 = this.zzb;
                int i4 = this.zze;
                this.zze = i4 + 1;
                bArr2[i4] = (byte) i2;
                return;
            }
            if ((i2 & (-128)) == 0) {
                byte[] bArr3 = this.zzb;
                int i5 = this.zze;
                this.zze = i5 + 1;
                zzib.zza(bArr3, i5, (byte) i2);
                return;
            }
            byte[] bArr4 = this.zzb;
            int i6 = this.zze;
            this.zze = i6 + 1;
            zzib.zza(bArr4, i6, (byte) (i2 | 128));
            int i7 = i2 >>> 7;
            if ((i7 & (-128)) == 0) {
                byte[] bArr5 = this.zzb;
                int i8 = this.zze;
                this.zze = i8 + 1;
                zzib.zza(bArr5, i8, (byte) i7);
                return;
            }
            byte[] bArr6 = this.zzb;
            int i9 = this.zze;
            this.zze = i9 + 1;
            zzib.zza(bArr6, i9, (byte) (i7 | 128));
            int i10 = i7 >>> 7;
            if ((i10 & (-128)) == 0) {
                byte[] bArr7 = this.zzb;
                int i11 = this.zze;
                this.zze = i11 + 1;
                zzib.zza(bArr7, i11, (byte) i10);
                return;
            }
            byte[] bArr8 = this.zzb;
            int i12 = this.zze;
            this.zze = i12 + 1;
            zzib.zza(bArr8, i12, (byte) (i10 | 128));
            int i13 = i10 >>> 7;
            if ((i13 & (-128)) == 0) {
                byte[] bArr9 = this.zzb;
                int i14 = this.zze;
                this.zze = i14 + 1;
                zzib.zza(bArr9, i14, (byte) i13);
                return;
            }
            byte[] bArr10 = this.zzb;
            int i15 = this.zze;
            this.zze = i15 + 1;
            zzib.zza(bArr10, i15, (byte) (i13 | 128));
            byte[] bArr11 = this.zzb;
            int i16 = this.zze;
            this.zze = i16 + 1;
            zzib.zza(bArr11, i16, (byte) (i13 >>> 7));
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zzb(int i2, int i3) throws zza {
            zza(i2, 0);
            zza(i3);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zzb(int i2, zzdu zzduVar) throws zza {
            zza(1, 3);
            zzc(2, i2);
            zza(3, zzduVar);
            zza(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zzb(byte[] bArr, int i2, int i3) throws zza {
            zzb(i3);
            zzc(bArr, 0, i3);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zzc(int i2, int i3) throws zza {
            zza(i2, 0);
            zzb(i3);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zzc(int i2, long j2) throws zza {
            zza(i2, 1);
            zzc(j2);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zzc(long j2) throws zza {
            try {
                byte[] bArr = this.zzb;
                int i2 = this.zze;
                this.zze = i2 + 1;
                bArr[i2] = (byte) j2;
                byte[] bArr2 = this.zzb;
                int i3 = this.zze;
                this.zze = i3 + 1;
                bArr2[i3] = (byte) (j2 >> 8);
                byte[] bArr3 = this.zzb;
                int i4 = this.zze;
                this.zze = i4 + 1;
                bArr3[i4] = (byte) (j2 >> 16);
                byte[] bArr4 = this.zzb;
                int i5 = this.zze;
                this.zze = i5 + 1;
                bArr4[i5] = (byte) (j2 >> 24);
                byte[] bArr5 = this.zzb;
                int i6 = this.zze;
                this.zze = i6 + 1;
                bArr5[i6] = (byte) (j2 >> 32);
                byte[] bArr6 = this.zzb;
                int i7 = this.zze;
                this.zze = i7 + 1;
                bArr6[i7] = (byte) (j2 >> 40);
                byte[] bArr7 = this.zzb;
                int i8 = this.zze;
                this.zze = i8 + 1;
                bArr7[i8] = (byte) (j2 >> 48);
                byte[] bArr8 = this.zzb;
                int i9 = this.zze;
                this.zze = i9 + 1;
                bArr8[i9] = (byte) (j2 >> 56);
            } catch (IndexOutOfBoundsException e2) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zzd(int i2) throws zza {
            try {
                byte[] bArr = this.zzb;
                int i3 = this.zze;
                this.zze = i3 + 1;
                bArr[i3] = (byte) i2;
                byte[] bArr2 = this.zzb;
                int i4 = this.zze;
                this.zze = i4 + 1;
                bArr2[i4] = (byte) (i2 >> 8);
                byte[] bArr3 = this.zzb;
                int i5 = this.zze;
                this.zze = i5 + 1;
                bArr3[i5] = (byte) (i2 >> 16);
                byte[] bArr4 = this.zzb;
                int i6 = this.zze;
                this.zze = i6 + 1;
                bArr4[i6] = (byte) (i2 >>> 24);
            } catch (IndexOutOfBoundsException e2) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zze(int i2, int i3) throws zza {
            zza(i2, 5);
            zzd(i3);
        }
    }

    private zzen() {
    }

    public static int zza(int i2, zzft zzftVar) {
        int iZze = zze(i2);
        int iZzb = zzftVar.zzb();
        return iZze + zzg(iZzb) + iZzb;
    }

    public static int zza(zzft zzftVar) {
        int iZzb = zzftVar.zzb();
        return zzg(iZzb) + iZzb;
    }

    static int zza(zzgo zzgoVar, zzhd zzhdVar) {
        zzdl zzdlVar = (zzdl) zzgoVar;
        int iZzbj = zzdlVar.zzbj();
        if (iZzbj == -1) {
            iZzbj = zzhdVar.zzb(zzdlVar);
            zzdlVar.zzc(iZzbj);
        }
        return zzg(iZzbj) + iZzbj;
    }

    public static zzen zza(byte[] bArr) {
        return new zzb(bArr, 0, bArr.length);
    }

    public static int zzb(double d2) {
        return 8;
    }

    public static int zzb(float f2) {
        return 4;
    }

    public static int zzb(int i2, double d2) {
        return zze(i2) + 8;
    }

    public static int zzb(int i2, float f2) {
        return zze(i2) + 4;
    }

    public static int zzb(int i2, zzft zzftVar) {
        return (zze(1) << 1) + zzg(2, i2) + zza(3, zzftVar);
    }

    public static int zzb(int i2, zzgo zzgoVar) {
        return (zze(1) << 1) + zzg(2, i2) + zze(3) + zzb(zzgoVar);
    }

    static int zzb(int i2, zzgo zzgoVar, zzhd zzhdVar) {
        return zze(i2) + zza(zzgoVar, zzhdVar);
    }

    public static int zzb(int i2, String str) {
        return zze(i2) + zzb(str);
    }

    public static int zzb(int i2, boolean z) {
        return zze(i2) + 1;
    }

    public static int zzb(zzdu zzduVar) {
        int iZza = zzduVar.zza();
        return zzg(iZza) + iZza;
    }

    public static int zzb(zzgo zzgoVar) {
        int iZzbn = zzgoVar.zzbn();
        return zzg(iZzbn) + iZzbn;
    }

    public static int zzb(String str) {
        int length;
        try {
            length = zzie.zza(str);
        } catch (zzih unused) {
            length = str.getBytes(zzff.zza).length;
        }
        return zzg(length) + length;
    }

    public static int zzb(boolean z) {
        return 1;
    }

    public static int zzb(byte[] bArr) {
        int length = bArr.length;
        return zzg(length) + length;
    }

    public static int zzc(int i2, zzdu zzduVar) {
        int iZze = zze(i2);
        int iZza = zzduVar.zza();
        return iZze + zzg(iZza) + iZza;
    }

    @Deprecated
    static int zzc(int i2, zzgo zzgoVar, zzhd zzhdVar) {
        int iZze = zze(i2) << 1;
        zzdl zzdlVar = (zzdl) zzgoVar;
        int iZzbj = zzdlVar.zzbj();
        if (iZzbj == -1) {
            iZzbj = zzhdVar.zzb(zzdlVar);
            zzdlVar.zzc(iZzbj);
        }
        return iZze + iZzbj;
    }

    @Deprecated
    public static int zzc(zzgo zzgoVar) {
        return zzgoVar.zzbn();
    }

    public static int zzd(int i2, long j2) {
        return zze(i2) + zze(j2);
    }

    public static int zzd(int i2, zzdu zzduVar) {
        return (zze(1) << 1) + zzg(2, i2) + zzc(3, zzduVar);
    }

    public static int zzd(long j2) {
        return zze(j2);
    }

    public static int zze(int i2) {
        return zzg(i2 << 3);
    }

    public static int zze(int i2, long j2) {
        return zze(i2) + zze(j2);
    }

    public static int zze(long j2) {
        int i2;
        if (((-128) & j2) == 0) {
            return 1;
        }
        if (j2 < 0) {
            return 10;
        }
        if (((-34359738368L) & j2) != 0) {
            i2 = 6;
            j2 >>>= 28;
        } else {
            i2 = 2;
        }
        if (((-2097152) & j2) != 0) {
            i2 += 2;
            j2 >>>= 14;
        }
        return (j2 & (-16384)) != 0 ? i2 + 1 : i2;
    }

    public static int zzf(int i2) {
        if (i2 >= 0) {
            return zzg(i2);
        }
        return 10;
    }

    public static int zzf(int i2, int i3) {
        return zze(i2) + zzf(i3);
    }

    public static int zzf(int i2, long j2) {
        return zze(i2) + zze(zzi(j2));
    }

    public static int zzf(long j2) {
        return zze(zzi(j2));
    }

    public static int zzg(int i2) {
        if ((i2 & (-128)) == 0) {
            return 1;
        }
        if ((i2 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i2) == 0) {
            return 3;
        }
        return (i2 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int zzg(int i2, int i3) {
        return zze(i2) + zzg(i3);
    }

    public static int zzg(int i2, long j2) {
        return zze(i2) + 8;
    }

    public static int zzg(long j2) {
        return 8;
    }

    public static int zzh(int i2) {
        return zzg(zzm(i2));
    }

    public static int zzh(int i2, int i3) {
        return zze(i2) + zzg(zzm(i3));
    }

    public static int zzh(int i2, long j2) {
        return zze(i2) + 8;
    }

    public static int zzh(long j2) {
        return 8;
    }

    public static int zzi(int i2) {
        return 4;
    }

    public static int zzi(int i2, int i3) {
        return zze(i2) + 4;
    }

    private static long zzi(long j2) {
        return (j2 >> 63) ^ (j2 << 1);
    }

    public static int zzj(int i2) {
        return 4;
    }

    public static int zzj(int i2, int i3) {
        return zze(i2) + 4;
    }

    public static int zzk(int i2) {
        return zzf(i2);
    }

    public static int zzk(int i2, int i3) {
        return zze(i2) + zzf(i3);
    }

    @Deprecated
    public static int zzl(int i2) {
        return zzg(i2);
    }

    private static int zzm(int i2) {
        return (i2 >> 31) ^ (i2 << 1);
    }

    public abstract int zza();

    public abstract void zza(byte b2);

    public final void zza(double d2) {
        zzc(Double.doubleToRawLongBits(d2));
    }

    public final void zza(float f2) {
        zzd(Float.floatToRawIntBits(f2));
    }

    public abstract void zza(int i2);

    public final void zza(int i2, double d2) {
        zzc(i2, Double.doubleToRawLongBits(d2));
    }

    public final void zza(int i2, float f2) {
        zze(i2, Float.floatToRawIntBits(f2));
    }

    public abstract void zza(int i2, int i3);

    public abstract void zza(int i2, long j2);

    public abstract void zza(int i2, zzdu zzduVar);

    public abstract void zza(int i2, zzgo zzgoVar);

    abstract void zza(int i2, zzgo zzgoVar, zzhd zzhdVar);

    public abstract void zza(int i2, String str);

    public abstract void zza(int i2, boolean z);

    public abstract void zza(long j2);

    public abstract void zza(zzdu zzduVar);

    public abstract void zza(zzgo zzgoVar);

    public abstract void zza(String str);

    final void zza(String str, zzih zzihVar) throws zza {
        zzb.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzihVar);
        byte[] bytes = str.getBytes(zzff.zza);
        try {
            zzb(bytes.length);
            zza(bytes, 0, bytes.length);
        } catch (zza e2) {
            throw e2;
        } catch (IndexOutOfBoundsException e3) {
            throw new zza(e3);
        }
    }

    public final void zza(boolean z) {
        zza(z ? (byte) 1 : (byte) 0);
    }

    public final void zzb() {
        if (zza() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public abstract void zzb(int i2);

    public abstract void zzb(int i2, int i3);

    public final void zzb(int i2, long j2) {
        zza(i2, zzi(j2));
    }

    public abstract void zzb(int i2, zzdu zzduVar);

    public final void zzb(long j2) {
        zza(zzi(j2));
    }

    abstract void zzb(byte[] bArr, int i2, int i3);

    public final void zzc(int i2) {
        zzb(zzm(i2));
    }

    public abstract void zzc(int i2, int i3);

    public abstract void zzc(int i2, long j2);

    public abstract void zzc(long j2);

    public abstract void zzd(int i2);

    public final void zzd(int i2, int i3) {
        zzc(i2, zzm(i3));
    }

    public abstract void zze(int i2, int i3);
}
