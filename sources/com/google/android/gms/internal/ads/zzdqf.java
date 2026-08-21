package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzdqf extends zzdpn {
    private static final Logger logger = Logger.getLogger(zzdqf.class.getName());
    private static final boolean zzhgx = zzdtt.zzbca();
    zzdqg zzhgy;

    static final class zza extends zzb {
        private final ByteBuffer zzhgz;
        private int zzhha;

        zza(ByteBuffer byteBuffer) {
            super(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            this.zzhgz = byteBuffer;
            this.zzhha = byteBuffer.position();
        }

        @Override // com.google.android.gms.internal.ads.zzdqf.zzb, com.google.android.gms.internal.ads.zzdqf
        public final void flush() {
            this.zzhgz.position(this.zzhha + zzayx());
        }
    }

    static class zzb extends zzdqf {
        private final byte[] buffer;
        private final int limit;
        private final int offset;
        private int position;

        zzb(byte[] bArr, int i2, int i3) {
            super();
            if (bArr == null) {
                throw new NullPointerException("buffer");
            }
            int i4 = i2 + i3;
            if ((i2 | i3 | (bArr.length - i4)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
            }
            this.buffer = bArr;
            this.offset = i2;
            this.position = i2;
            this.limit = i4;
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public void flush() {
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void write(byte[] bArr, int i2, int i3) throws zzd {
            try {
                System.arraycopy(bArr, i2, this.buffer, this.position, i3);
                this.position += i3;
            } catch (IndexOutOfBoundsException e2) {
                throw new zzd(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), Integer.valueOf(i3)), e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zza(int i2, zzdpm zzdpmVar) throws zzd {
            zzz(i2, 2);
            zzcz(zzdpmVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zza(int i2, zzdsg zzdsgVar) throws zzd {
            zzz(i2, 2);
            zzj(zzdsgVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        final void zza(int i2, zzdsg zzdsgVar, zzdsv zzdsvVar) throws zzd {
            zzz(i2, 2);
            zzdpf zzdpfVar = (zzdpf) zzdsgVar;
            int iZzaxh = zzdpfVar.zzaxh();
            if (iZzaxh == -1) {
                iZzaxh = zzdsvVar.zzau(zzdpfVar);
                zzdpfVar.zzfi(iZzaxh);
            }
            zzga(iZzaxh);
            zzdsvVar.zza(zzdsgVar, this.zzhgy);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        final void zza(zzdsg zzdsgVar, zzdsv zzdsvVar) throws zzd {
            zzdpf zzdpfVar = (zzdpf) zzdsgVar;
            int iZzaxh = zzdpfVar.zzaxh();
            if (iZzaxh == -1) {
                iZzaxh = zzdsvVar.zzau(zzdpfVar);
                zzdpfVar.zzfi(iZzaxh);
            }
            zzga(iZzaxh);
            zzdsvVar.zza(zzdsgVar, this.zzhgy);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzaa(int i2, int i3) throws zzd {
            zzz(i2, 0);
            zzfz(i3);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzab(int i2, int i3) throws zzd {
            zzz(i2, 0);
            zzga(i3);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzad(int i2, int i3) throws zzd {
            zzz(i2, 5);
            zzgc(i3);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final int zzayu() {
            return this.limit - this.position;
        }

        public final int zzayx() {
            return this.position - this.offset;
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzb(int i2, zzdpm zzdpmVar) throws zzd {
            zzz(1, 3);
            zzab(2, i2);
            zza(3, zzdpmVar);
            zzz(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzb(int i2, zzdsg zzdsgVar) throws zzd {
            zzz(1, 3);
            zzab(2, i2);
            zza(3, zzdsgVar);
            zzz(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzcz(zzdpm zzdpmVar) throws zzd {
            zzga(zzdpmVar.size());
            zzdpmVar.zza(this);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzd(byte b2) throws zzd {
            try {
                byte[] bArr = this.buffer;
                int i2 = this.position;
                this.position = i2 + 1;
                bArr[i2] = b2;
            } catch (IndexOutOfBoundsException e2) {
                throw new zzd(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzfa(long j2) throws zzd {
            if (zzdqf.zzhgx && zzayu() >= 10) {
                while ((j2 & (-128)) != 0) {
                    byte[] bArr = this.buffer;
                    int i2 = this.position;
                    this.position = i2 + 1;
                    zzdtt.zza(bArr, i2, (byte) ((((int) j2) & 127) | 128));
                    j2 >>>= 7;
                }
                byte[] bArr2 = this.buffer;
                int i3 = this.position;
                this.position = i3 + 1;
                zzdtt.zza(bArr2, i3, (byte) j2);
                return;
            }
            while ((j2 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.buffer;
                    int i4 = this.position;
                    this.position = i4 + 1;
                    bArr3[i4] = (byte) ((((int) j2) & 127) | 128);
                    j2 >>>= 7;
                } catch (IndexOutOfBoundsException e2) {
                    throw new zzd(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e2);
                }
            }
            byte[] bArr4 = this.buffer;
            int i5 = this.position;
            this.position = i5 + 1;
            bArr4[i5] = (byte) j2;
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzfc(long j2) throws zzd {
            try {
                byte[] bArr = this.buffer;
                int i2 = this.position;
                this.position = i2 + 1;
                bArr[i2] = (byte) j2;
                byte[] bArr2 = this.buffer;
                int i3 = this.position;
                this.position = i3 + 1;
                bArr2[i3] = (byte) (j2 >> 8);
                byte[] bArr3 = this.buffer;
                int i4 = this.position;
                this.position = i4 + 1;
                bArr3[i4] = (byte) (j2 >> 16);
                byte[] bArr4 = this.buffer;
                int i5 = this.position;
                this.position = i5 + 1;
                bArr4[i5] = (byte) (j2 >> 24);
                byte[] bArr5 = this.buffer;
                int i6 = this.position;
                this.position = i6 + 1;
                bArr5[i6] = (byte) (j2 >> 32);
                byte[] bArr6 = this.buffer;
                int i7 = this.position;
                this.position = i7 + 1;
                bArr6[i7] = (byte) (j2 >> 40);
                byte[] bArr7 = this.buffer;
                int i8 = this.position;
                this.position = i8 + 1;
                bArr7[i8] = (byte) (j2 >> 48);
                byte[] bArr8 = this.buffer;
                int i9 = this.position;
                this.position = i9 + 1;
                bArr8[i9] = (byte) (j2 >> 56);
            } catch (IndexOutOfBoundsException e2) {
                throw new zzd(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzfz(int i2) throws zzd {
            if (i2 >= 0) {
                zzga(i2);
            } else {
                zzfa(i2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzg(int i2, long j2) throws zzd {
            zzz(i2, 0);
            zzfa(j2);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzg(int i2, String str) throws zzd {
            zzz(i2, 2);
            zzhi(str);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzg(int i2, boolean z) throws zzd {
            zzz(i2, 0);
            zzd(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzga(int i2) throws zzd {
            if (!zzdqf.zzhgx || zzdpj.zzaxl() || zzayu() < 5) {
                while ((i2 & (-128)) != 0) {
                    try {
                        byte[] bArr = this.buffer;
                        int i3 = this.position;
                        this.position = i3 + 1;
                        bArr[i3] = (byte) ((i2 & 127) | 128);
                        i2 >>>= 7;
                    } catch (IndexOutOfBoundsException e2) {
                        throw new zzd(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e2);
                    }
                }
                byte[] bArr2 = this.buffer;
                int i4 = this.position;
                this.position = i4 + 1;
                bArr2[i4] = (byte) i2;
                return;
            }
            if ((i2 & (-128)) == 0) {
                byte[] bArr3 = this.buffer;
                int i5 = this.position;
                this.position = i5 + 1;
                zzdtt.zza(bArr3, i5, (byte) i2);
                return;
            }
            byte[] bArr4 = this.buffer;
            int i6 = this.position;
            this.position = i6 + 1;
            zzdtt.zza(bArr4, i6, (byte) (i2 | 128));
            int i7 = i2 >>> 7;
            if ((i7 & (-128)) == 0) {
                byte[] bArr5 = this.buffer;
                int i8 = this.position;
                this.position = i8 + 1;
                zzdtt.zza(bArr5, i8, (byte) i7);
                return;
            }
            byte[] bArr6 = this.buffer;
            int i9 = this.position;
            this.position = i9 + 1;
            zzdtt.zza(bArr6, i9, (byte) (i7 | 128));
            int i10 = i7 >>> 7;
            if ((i10 & (-128)) == 0) {
                byte[] bArr7 = this.buffer;
                int i11 = this.position;
                this.position = i11 + 1;
                zzdtt.zza(bArr7, i11, (byte) i10);
                return;
            }
            byte[] bArr8 = this.buffer;
            int i12 = this.position;
            this.position = i12 + 1;
            zzdtt.zza(bArr8, i12, (byte) (i10 | 128));
            int i13 = i10 >>> 7;
            if ((i13 & (-128)) == 0) {
                byte[] bArr9 = this.buffer;
                int i14 = this.position;
                this.position = i14 + 1;
                zzdtt.zza(bArr9, i14, (byte) i13);
                return;
            }
            byte[] bArr10 = this.buffer;
            int i15 = this.position;
            this.position = i15 + 1;
            zzdtt.zza(bArr10, i15, (byte) (i13 | 128));
            byte[] bArr11 = this.buffer;
            int i16 = this.position;
            this.position = i16 + 1;
            zzdtt.zza(bArr11, i16, (byte) (i13 >>> 7));
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzgc(int i2) throws zzd {
            try {
                byte[] bArr = this.buffer;
                int i3 = this.position;
                this.position = i3 + 1;
                bArr[i3] = (byte) i2;
                byte[] bArr2 = this.buffer;
                int i4 = this.position;
                this.position = i4 + 1;
                bArr2[i4] = (byte) (i2 >> 8);
                byte[] bArr3 = this.buffer;
                int i5 = this.position;
                this.position = i5 + 1;
                bArr3[i5] = (byte) (i2 >> 16);
                byte[] bArr4 = this.buffer;
                int i6 = this.position;
                this.position = i6 + 1;
                bArr4[i6] = (byte) (i2 >>> 24);
            } catch (IndexOutOfBoundsException e2) {
                throw new zzd(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzhi(String str) throws zzd {
            int i2 = this.position;
            try {
                int iZzgf = zzdqf.zzgf(str.length() * 3);
                int iZzgf2 = zzdqf.zzgf(str.length());
                if (iZzgf2 != iZzgf) {
                    zzga(zzdtw.zza(str));
                    this.position = zzdtw.zza(str, this.buffer, this.position, zzayu());
                    return;
                }
                this.position = i2 + iZzgf2;
                int iZza = zzdtw.zza(str, this.buffer, this.position, zzayu());
                this.position = i2;
                zzga((iZza - i2) - iZzgf2);
                this.position = iZza;
            } catch (zzdtz e2) {
                this.position = i2;
                zza(str, e2);
            } catch (IndexOutOfBoundsException e3) {
                throw new zzd(e3);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzi(int i2, long j2) throws zzd {
            zzz(i2, 1);
            zzfc(j2);
        }

        @Override // com.google.android.gms.internal.ads.zzdpn
        public final void zzi(byte[] bArr, int i2, int i3) throws zzd {
            write(bArr, i2, i3);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzj(zzdsg zzdsgVar) throws zzd {
            zzga(zzdsgVar.zzazu());
            zzdsgVar.zzb(this);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzk(byte[] bArr, int i2, int i3) throws zzd {
            zzga(i3);
            write(bArr, 0, i3);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzz(int i2, int i3) throws zzd {
            zzga((i2 << 3) | i3);
        }
    }

    static final class zzc extends zzdqf {
        private final ByteBuffer zzakm;
        private final int zzhha;
        private final ByteBuffer zzhhb;

        zzc(ByteBuffer byteBuffer) {
            super();
            this.zzhhb = byteBuffer;
            this.zzakm = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.zzhha = byteBuffer.position();
        }

        private final void zzhk(String str) throws zzd {
            try {
                zzdtw.zza(str, this.zzakm);
            } catch (IndexOutOfBoundsException e2) {
                throw new zzd(e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void flush() {
            this.zzhhb.position(this.zzakm.position());
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void write(byte[] bArr, int i2, int i3) throws zzd {
            try {
                this.zzakm.put(bArr, i2, i3);
            } catch (IndexOutOfBoundsException e2) {
                throw new zzd(e2);
            } catch (BufferOverflowException e3) {
                throw new zzd(e3);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zza(int i2, zzdpm zzdpmVar) throws zzd {
            zzz(i2, 2);
            zzcz(zzdpmVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zza(int i2, zzdsg zzdsgVar) throws zzd {
            zzz(i2, 2);
            zzj(zzdsgVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        final void zza(int i2, zzdsg zzdsgVar, zzdsv zzdsvVar) throws zzd {
            zzz(i2, 2);
            zza(zzdsgVar, zzdsvVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        final void zza(zzdsg zzdsgVar, zzdsv zzdsvVar) throws zzd {
            zzdpf zzdpfVar = (zzdpf) zzdsgVar;
            int iZzaxh = zzdpfVar.zzaxh();
            if (iZzaxh == -1) {
                iZzaxh = zzdsvVar.zzau(zzdpfVar);
                zzdpfVar.zzfi(iZzaxh);
            }
            zzga(iZzaxh);
            zzdsvVar.zza(zzdsgVar, this.zzhgy);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzaa(int i2, int i3) throws zzd {
            zzz(i2, 0);
            zzfz(i3);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzab(int i2, int i3) throws zzd {
            zzz(i2, 0);
            zzga(i3);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzad(int i2, int i3) throws zzd {
            zzz(i2, 5);
            zzgc(i3);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final int zzayu() {
            return this.zzakm.remaining();
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzb(int i2, zzdpm zzdpmVar) throws zzd {
            zzz(1, 3);
            zzab(2, i2);
            zza(3, zzdpmVar);
            zzz(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzb(int i2, zzdsg zzdsgVar) throws zzd {
            zzz(1, 3);
            zzab(2, i2);
            zza(3, zzdsgVar);
            zzz(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzcz(zzdpm zzdpmVar) throws zzd {
            zzga(zzdpmVar.size());
            zzdpmVar.zza(this);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzd(byte b2) throws zzd {
            try {
                this.zzakm.put(b2);
            } catch (BufferOverflowException e2) {
                throw new zzd(e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzfa(long j2) throws zzd {
            while (((-128) & j2) != 0) {
                try {
                    this.zzakm.put((byte) ((((int) j2) & 127) | 128));
                    j2 >>>= 7;
                } catch (BufferOverflowException e2) {
                    throw new zzd(e2);
                }
            }
            this.zzakm.put((byte) j2);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzfc(long j2) throws zzd {
            try {
                this.zzakm.putLong(j2);
            } catch (BufferOverflowException e2) {
                throw new zzd(e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzfz(int i2) throws zzd {
            if (i2 >= 0) {
                zzga(i2);
            } else {
                zzfa(i2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzg(int i2, long j2) throws zzd {
            zzz(i2, 0);
            zzfa(j2);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzg(int i2, String str) throws zzd {
            zzz(i2, 2);
            zzhi(str);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzg(int i2, boolean z) throws zzd {
            zzz(i2, 0);
            zzd(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzga(int i2) throws zzd {
            while ((i2 & (-128)) != 0) {
                try {
                    this.zzakm.put((byte) ((i2 & 127) | 128));
                    i2 >>>= 7;
                } catch (BufferOverflowException e2) {
                    throw new zzd(e2);
                }
            }
            this.zzakm.put((byte) i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzgc(int i2) throws zzd {
            try {
                this.zzakm.putInt(i2);
            } catch (BufferOverflowException e2) {
                throw new zzd(e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzhi(String str) throws zzd {
            int iPosition = this.zzakm.position();
            try {
                int iZzgf = zzdqf.zzgf(str.length() * 3);
                int iZzgf2 = zzdqf.zzgf(str.length());
                if (iZzgf2 != iZzgf) {
                    zzga(zzdtw.zza(str));
                    zzhk(str);
                    return;
                }
                int iPosition2 = this.zzakm.position() + iZzgf2;
                this.zzakm.position(iPosition2);
                zzhk(str);
                int iPosition3 = this.zzakm.position();
                this.zzakm.position(iPosition);
                zzga(iPosition3 - iPosition2);
                this.zzakm.position(iPosition3);
            } catch (zzdtz e2) {
                this.zzakm.position(iPosition);
                zza(str, e2);
            } catch (IllegalArgumentException e3) {
                throw new zzd(e3);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzi(int i2, long j2) throws zzd {
            zzz(i2, 1);
            zzfc(j2);
        }

        @Override // com.google.android.gms.internal.ads.zzdpn
        public final void zzi(byte[] bArr, int i2, int i3) throws zzd {
            write(bArr, i2, i3);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzj(zzdsg zzdsgVar) throws zzd {
            zzga(zzdsgVar.zzazu());
            zzdsgVar.zzb(this);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzk(byte[] bArr, int i2, int i3) throws zzd {
            zzga(i3);
            write(bArr, 0, i3);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzz(int i2, int i3) throws zzd {
            zzga((i2 << 3) | i3);
        }
    }

    public static class zzd extends IOException {
        zzd() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        zzd(String str) {
            String strValueOf = String.valueOf(str);
            super(strValueOf.length() != 0 ? "CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(strValueOf) : new String("CodedOutputStream was writing to a flat byte array and ran out of space.: "));
        }

        /* JADX WARN: Illegal instructions before constructor call */
        zzd(String str, Throwable th) {
            String strValueOf = String.valueOf(str);
            super(strValueOf.length() != 0 ? "CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(strValueOf) : new String("CodedOutputStream was writing to a flat byte array and ran out of space.: "), th);
        }

        zzd(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    static final class zze extends zzdqf {
        private final ByteBuffer zzakm;
        private long zzamq;
        private final ByteBuffer zzhhb;
        private final long zzhhc;
        private final long zzhhd;
        private final long zzhhe;
        private final long zzhhf;

        zze(ByteBuffer byteBuffer) {
            super();
            this.zzhhb = byteBuffer;
            this.zzakm = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.zzhhc = zzdtt.zzn(byteBuffer);
            this.zzhhd = this.zzhhc + ((long) byteBuffer.position());
            this.zzhhe = this.zzhhc + ((long) byteBuffer.limit());
            this.zzhhf = this.zzhhe - 10;
            this.zzamq = this.zzhhd;
        }

        private final void zzfj(long j2) {
            this.zzakm.position((int) (j2 - this.zzhhc));
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void flush() {
            this.zzhhb.position((int) (this.zzamq - this.zzhhc));
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void write(byte[] bArr, int i2, int i3) throws zzd {
            if (bArr != null && i2 >= 0 && i3 >= 0 && bArr.length - i3 >= i2) {
                long j2 = i3;
                long j3 = this.zzhhe - j2;
                long j4 = this.zzamq;
                if (j3 >= j4) {
                    zzdtt.zza(bArr, i2, j4, j2);
                    this.zzamq += j2;
                    return;
                }
            }
            if (bArr != null) {
                throw new zzd(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.zzamq), Long.valueOf(this.zzhhe), Integer.valueOf(i3)));
            }
            throw new NullPointerException("value");
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zza(int i2, zzdpm zzdpmVar) throws zzd {
            zzz(i2, 2);
            zzcz(zzdpmVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zza(int i2, zzdsg zzdsgVar) throws zzd {
            zzz(i2, 2);
            zzj(zzdsgVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        final void zza(int i2, zzdsg zzdsgVar, zzdsv zzdsvVar) throws zzd {
            zzz(i2, 2);
            zza(zzdsgVar, zzdsvVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        final void zza(zzdsg zzdsgVar, zzdsv zzdsvVar) throws zzd {
            zzdpf zzdpfVar = (zzdpf) zzdsgVar;
            int iZzaxh = zzdpfVar.zzaxh();
            if (iZzaxh == -1) {
                iZzaxh = zzdsvVar.zzau(zzdpfVar);
                zzdpfVar.zzfi(iZzaxh);
            }
            zzga(iZzaxh);
            zzdsvVar.zza(zzdsgVar, this.zzhgy);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzaa(int i2, int i3) throws zzd {
            zzz(i2, 0);
            zzfz(i3);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzab(int i2, int i3) throws zzd {
            zzz(i2, 0);
            zzga(i3);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzad(int i2, int i3) throws zzd {
            zzz(i2, 5);
            zzgc(i3);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final int zzayu() {
            return (int) (this.zzhhe - this.zzamq);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzb(int i2, zzdpm zzdpmVar) throws zzd {
            zzz(1, 3);
            zzab(2, i2);
            zza(3, zzdpmVar);
            zzz(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzb(int i2, zzdsg zzdsgVar) throws zzd {
            zzz(1, 3);
            zzab(2, i2);
            zza(3, zzdsgVar);
            zzz(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzcz(zzdpm zzdpmVar) throws zzd {
            zzga(zzdpmVar.size());
            zzdpmVar.zza(this);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzd(byte b2) throws zzd {
            long j2 = this.zzamq;
            if (j2 >= this.zzhhe) {
                throw new zzd(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j2), Long.valueOf(this.zzhhe), 1));
            }
            this.zzamq = 1 + j2;
            zzdtt.zza(j2, b2);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzfa(long j2) throws zzd {
            long j3;
            if (this.zzamq <= this.zzhhf) {
                while (true) {
                    long j4 = j2 & (-128);
                    j3 = this.zzamq;
                    if (j4 == 0) {
                        break;
                    }
                    this.zzamq = j3 + 1;
                    zzdtt.zza(j3, (byte) ((((int) j2) & 127) | 128));
                    j2 >>>= 7;
                }
            } else {
                while (true) {
                    j3 = this.zzamq;
                    if (j3 >= this.zzhhe) {
                        throw new zzd(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j3), Long.valueOf(this.zzhhe), 1));
                    }
                    if ((j2 & (-128)) == 0) {
                        break;
                    }
                    this.zzamq = j3 + 1;
                    zzdtt.zza(j3, (byte) ((((int) j2) & 127) | 128));
                    j2 >>>= 7;
                }
            }
            this.zzamq = 1 + j3;
            zzdtt.zza(j3, (byte) j2);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzfc(long j2) {
            this.zzakm.putLong((int) (this.zzamq - this.zzhhc), j2);
            this.zzamq += 8;
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzfz(int i2) throws zzd {
            if (i2 >= 0) {
                zzga(i2);
            } else {
                zzfa(i2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzg(int i2, long j2) throws zzd {
            zzz(i2, 0);
            zzfa(j2);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzg(int i2, String str) throws zzd {
            zzz(i2, 2);
            zzhi(str);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzg(int i2, boolean z) throws zzd {
            zzz(i2, 0);
            zzd(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzga(int i2) throws zzd {
            long j2;
            if (this.zzamq <= this.zzhhf) {
                while ((i2 & (-128)) != 0) {
                    long j3 = this.zzamq;
                    this.zzamq = j3 + 1;
                    zzdtt.zza(j3, (byte) ((i2 & 127) | 128));
                    i2 >>>= 7;
                }
                j2 = this.zzamq;
            } else {
                while (true) {
                    j2 = this.zzamq;
                    if (j2 >= this.zzhhe) {
                        throw new zzd(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j2), Long.valueOf(this.zzhhe), 1));
                    }
                    if ((i2 & (-128)) == 0) {
                        break;
                    }
                    this.zzamq = j2 + 1;
                    zzdtt.zza(j2, (byte) ((i2 & 127) | 128));
                    i2 >>>= 7;
                }
            }
            this.zzamq = 1 + j2;
            zzdtt.zza(j2, (byte) i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzgc(int i2) {
            this.zzakm.putInt((int) (this.zzamq - this.zzhhc), i2);
            this.zzamq += 4;
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzhi(String str) throws zzd {
            long j2 = this.zzamq;
            try {
                int iZzgf = zzdqf.zzgf(str.length() * 3);
                int iZzgf2 = zzdqf.zzgf(str.length());
                if (iZzgf2 != iZzgf) {
                    int iZza = zzdtw.zza(str);
                    zzga(iZza);
                    zzfj(this.zzamq);
                    zzdtw.zza(str, this.zzakm);
                    this.zzamq += (long) iZza;
                    return;
                }
                int i2 = ((int) (this.zzamq - this.zzhhc)) + iZzgf2;
                this.zzakm.position(i2);
                zzdtw.zza(str, this.zzakm);
                int iPosition = this.zzakm.position() - i2;
                zzga(iPosition);
                this.zzamq += (long) iPosition;
            } catch (zzdtz e2) {
                this.zzamq = j2;
                zzfj(this.zzamq);
                zza(str, e2);
            } catch (IllegalArgumentException e3) {
                throw new zzd(e3);
            } catch (IndexOutOfBoundsException e4) {
                throw new zzd(e4);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzi(int i2, long j2) throws zzd {
            zzz(i2, 1);
            zzfc(j2);
        }

        @Override // com.google.android.gms.internal.ads.zzdpn
        public final void zzi(byte[] bArr, int i2, int i3) throws zzd {
            write(bArr, i2, i3);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzj(zzdsg zzdsgVar) throws zzd {
            zzga(zzdsgVar.zzazu());
            zzdsgVar.zzb(this);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzk(byte[] bArr, int i2, int i3) throws zzd {
            zzga(i3);
            write(bArr, 0, i3);
        }

        @Override // com.google.android.gms.internal.ads.zzdqf
        public final void zzz(int i2, int i3) throws zzd {
            zzga((i2 << 3) | i3);
        }
    }

    private zzdqf() {
    }

    public static int zza(int i2, zzdrl zzdrlVar) {
        int iZzgd = zzgd(i2);
        int iZzazu = zzdrlVar.zzazu();
        return iZzgd + zzgf(iZzazu) + iZzazu;
    }

    public static int zza(zzdrl zzdrlVar) {
        int iZzazu = zzdrlVar.zzazu();
        return zzgf(iZzazu) + iZzazu;
    }

    public static zzdqf zzaa(byte[] bArr) {
        return new zzb(bArr, 0, bArr.length);
    }

    public static int zzab(byte[] bArr) {
        int length = bArr.length;
        return zzgf(length) + length;
    }

    public static int zzae(int i2, int i3) {
        return zzgd(i2) + zzge(i3);
    }

    public static int zzaf(int i2, int i3) {
        return zzgd(i2) + zzgf(i3);
    }

    public static int zzag(int i2, int i3) {
        return zzgd(i2) + zzgf(zzgk(i3));
    }

    public static int zzah(int i2, int i3) {
        return zzgd(i2) + 4;
    }

    public static int zzai(int i2, int i3) {
        return zzgd(i2) + 4;
    }

    public static int zzaj(int i2, int i3) {
        return zzgd(i2) + zzge(i3);
    }

    public static int zzb(int i2, float f2) {
        return zzgd(i2) + 4;
    }

    public static int zzb(int i2, zzdrl zzdrlVar) {
        return (zzgd(1) << 1) + zzaf(2, i2) + zza(3, zzdrlVar);
    }

    static int zzb(int i2, zzdsg zzdsgVar, zzdsv zzdsvVar) {
        return zzgd(i2) + zzb(zzdsgVar, zzdsvVar);
    }

    static int zzb(zzdsg zzdsgVar, zzdsv zzdsvVar) {
        zzdpf zzdpfVar = (zzdpf) zzdsgVar;
        int iZzaxh = zzdpfVar.zzaxh();
        if (iZzaxh == -1) {
            iZzaxh = zzdsvVar.zzau(zzdpfVar);
            zzdpfVar.zzfi(iZzaxh);
        }
        return zzgf(iZzaxh) + iZzaxh;
    }

    public static int zzbi(boolean z) {
        return 1;
    }

    public static int zzc(double d2) {
        return 8;
    }

    public static int zzc(int i2, double d2) {
        return zzgd(i2) + 8;
    }

    public static int zzc(int i2, zzdpm zzdpmVar) {
        int iZzgd = zzgd(i2);
        int size = zzdpmVar.size();
        return iZzgd + zzgf(size) + size;
    }

    public static int zzc(int i2, zzdsg zzdsgVar) {
        return zzgd(i2) + zzk(zzdsgVar);
    }

    @Deprecated
    static int zzc(int i2, zzdsg zzdsgVar, zzdsv zzdsvVar) {
        int iZzgd = zzgd(i2) << 1;
        zzdpf zzdpfVar = (zzdpf) zzdsgVar;
        int iZzaxh = zzdpfVar.zzaxh();
        if (iZzaxh == -1) {
            iZzaxh = zzdsvVar.zzau(zzdpfVar);
            zzdpfVar.zzfi(iZzaxh);
        }
        return iZzgd + iZzaxh;
    }

    public static int zzd(int i2, zzdpm zzdpmVar) {
        return (zzgd(1) << 1) + zzaf(2, i2) + zzc(3, zzdpmVar);
    }

    public static int zzd(int i2, zzdsg zzdsgVar) {
        return (zzgd(1) << 1) + zzaf(2, i2) + zzc(3, zzdsgVar);
    }

    public static int zzda(zzdpm zzdpmVar) {
        int size = zzdpmVar.size();
        return zzgf(size) + size;
    }

    public static int zzfd(long j2) {
        return zzfe(j2);
    }

    public static int zzfe(long j2) {
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

    public static int zzff(long j2) {
        return zzfe(zzfi(j2));
    }

    public static int zzfg(long j2) {
        return 8;
    }

    public static int zzfh(long j2) {
        return 8;
    }

    private static long zzfi(long j2) {
        return (j2 >> 63) ^ (j2 << 1);
    }

    public static int zzg(float f2) {
        return 4;
    }

    public static int zzgd(int i2) {
        return zzgf(i2 << 3);
    }

    public static int zzge(int i2) {
        if (i2 >= 0) {
            return zzgf(i2);
        }
        return 10;
    }

    public static int zzgf(int i2) {
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

    public static int zzgg(int i2) {
        return zzgf(zzgk(i2));
    }

    public static int zzgh(int i2) {
        return 4;
    }

    public static int zzgi(int i2) {
        return 4;
    }

    public static int zzgj(int i2) {
        return zzge(i2);
    }

    private static int zzgk(int i2) {
        return (i2 >> 31) ^ (i2 << 1);
    }

    @Deprecated
    public static int zzgl(int i2) {
        return zzgf(i2);
    }

    public static int zzh(int i2, String str) {
        return zzgd(i2) + zzhj(str);
    }

    public static int zzh(int i2, boolean z) {
        return zzgd(i2) + 1;
    }

    public static int zzhj(String str) {
        int length;
        try {
            length = zzdtw.zza(str);
        } catch (zzdtz unused) {
            length = str.getBytes(zzdqx.UTF_8).length;
        }
        return zzgf(length) + length;
    }

    public static int zzj(int i2, long j2) {
        return zzgd(i2) + zzfe(j2);
    }

    public static int zzk(int i2, long j2) {
        return zzgd(i2) + zzfe(j2);
    }

    public static int zzk(zzdsg zzdsgVar) {
        int iZzazu = zzdsgVar.zzazu();
        return zzgf(iZzazu) + iZzazu;
    }

    public static int zzl(int i2, long j2) {
        return zzgd(i2) + zzfe(zzfi(j2));
    }

    @Deprecated
    public static int zzl(zzdsg zzdsgVar) {
        return zzdsgVar.zzazu();
    }

    public static int zzm(int i2, long j2) {
        return zzgd(i2) + 8;
    }

    public static zzdqf zzm(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            return new zza(byteBuffer);
        }
        if (!byteBuffer.isDirect() || byteBuffer.isReadOnly()) {
            throw new IllegalArgumentException("ByteBuffer is read-only");
        }
        return zzdtt.zzbcb() ? new zze(byteBuffer) : new zzc(byteBuffer);
    }

    public static int zzn(int i2, long j2) {
        return zzgd(i2) + 8;
    }

    public abstract void flush();

    public abstract void write(byte[] bArr, int i2, int i3);

    public final void zza(int i2, float f2) {
        zzad(i2, Float.floatToRawIntBits(f2));
    }

    public abstract void zza(int i2, zzdpm zzdpmVar);

    public abstract void zza(int i2, zzdsg zzdsgVar);

    abstract void zza(int i2, zzdsg zzdsgVar, zzdsv zzdsvVar);

    abstract void zza(zzdsg zzdsgVar, zzdsv zzdsvVar);

    final void zza(String str, zzdtz zzdtzVar) throws zzd {
        logger.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzdtzVar);
        byte[] bytes = str.getBytes(zzdqx.UTF_8);
        try {
            zzga(bytes.length);
            zzi(bytes, 0, bytes.length);
        } catch (zzd e2) {
            throw e2;
        } catch (IndexOutOfBoundsException e3) {
            throw new zzd(e3);
        }
    }

    public abstract void zzaa(int i2, int i3);

    public abstract void zzab(int i2, int i3);

    public final void zzac(int i2, int i3) {
        zzab(i2, zzgk(i3));
    }

    public abstract void zzad(int i2, int i3);

    public abstract int zzayu();

    public final void zzayv() {
        if (zzayu() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public final void zzb(double d2) {
        zzfc(Double.doubleToRawLongBits(d2));
    }

    public final void zzb(int i2, double d2) {
        zzi(i2, Double.doubleToRawLongBits(d2));
    }

    public abstract void zzb(int i2, zzdpm zzdpmVar);

    public abstract void zzb(int i2, zzdsg zzdsgVar);

    public final void zzbh(boolean z) {
        zzd(z ? (byte) 1 : (byte) 0);
    }

    public abstract void zzcz(zzdpm zzdpmVar);

    public abstract void zzd(byte b2);

    public final void zzf(float f2) {
        zzgc(Float.floatToRawIntBits(f2));
    }

    public abstract void zzfa(long j2);

    public final void zzfb(long j2) {
        zzfa(zzfi(j2));
    }

    public abstract void zzfc(long j2);

    public abstract void zzfz(int i2);

    public abstract void zzg(int i2, long j2);

    public abstract void zzg(int i2, String str);

    public abstract void zzg(int i2, boolean z);

    public abstract void zzga(int i2);

    public final void zzgb(int i2) {
        zzga(zzgk(i2));
    }

    public abstract void zzgc(int i2);

    public final void zzh(int i2, long j2) {
        zzg(i2, zzfi(j2));
    }

    public abstract void zzhi(String str);

    public abstract void zzi(int i2, long j2);

    public abstract void zzj(zzdsg zzdsgVar);

    abstract void zzk(byte[] bArr, int i2, int i3);

    public abstract void zzz(int i2, int i3);
}
