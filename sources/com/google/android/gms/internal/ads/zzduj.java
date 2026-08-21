package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

/* JADX INFO: loaded from: classes.dex */
public final class zzduj {
    private final ByteBuffer zzakm;
    private zzdqf zzhqw;
    private int zzhqx;

    private zzduj(ByteBuffer byteBuffer) {
        this.zzakm = byteBuffer;
        this.zzakm.order(ByteOrder.LITTLE_ENDIAN);
    }

    private zzduj(byte[] bArr, int i2, int i3) {
        this(ByteBuffer.wrap(bArr, i2, i3));
    }

    private static int zza(CharSequence charSequence) {
        int length = charSequence.length();
        int i2 = 0;
        int i3 = 0;
        while (i3 < length && charSequence.charAt(i3) < 128) {
            i3++;
        }
        int i4 = length;
        while (true) {
            if (i3 >= length) {
                break;
            }
            char cCharAt = charSequence.charAt(i3);
            if (cCharAt < 2048) {
                i4 += (127 - cCharAt) >>> 31;
                i3++;
            } else {
                int length2 = charSequence.length();
                while (i3 < length2) {
                    char cCharAt2 = charSequence.charAt(i3);
                    if (cCharAt2 < 2048) {
                        i2 += (127 - cCharAt2) >>> 31;
                    } else {
                        i2 += 2;
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i3) < 65536) {
                                StringBuilder sb = new StringBuilder(39);
                                sb.append("Unpaired surrogate at index ");
                                sb.append(i3);
                                throw new IllegalArgumentException(sb.toString());
                            }
                            i3++;
                        }
                    }
                    i3++;
                }
                i4 += i2;
            }
        }
        if (i4 >= length) {
            return i4;
        }
        long j2 = ((long) i4) + 4294967296L;
        StringBuilder sb2 = new StringBuilder(54);
        sb2.append("UTF-8 length does not fit in int: ");
        sb2.append(j2);
        throw new IllegalArgumentException(sb2.toString());
    }

    public static int zzae(int i2, int i3) {
        return zzgd(i2) + zzge(i3);
    }

    public static zzduj zzae(byte[] bArr) {
        return zzp(bArr, 0, bArr.length);
    }

    public static int zzb(int i2, zzdus zzdusVar) {
        int iZzgd = zzgd(i2);
        int iZzazu = zzdusVar.zzazu();
        return iZzgd + zzgl(iZzazu) + iZzazu;
    }

    private static void zzd(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i2;
        int i3;
        char cCharAt;
        int i4;
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        int i5 = 0;
        if (!byteBuffer.hasArray()) {
            int length = charSequence.length();
            while (i5 < length) {
                char cCharAt2 = charSequence.charAt(i5);
                int i6 = cCharAt2;
                if (cCharAt2 >= 128) {
                    if (cCharAt2 < 2048) {
                        i4 = (cCharAt2 >>> 6) | 960;
                    } else {
                        if (cCharAt2 >= 55296 && 57343 >= cCharAt2) {
                            int i7 = i5 + 1;
                            if (i7 != charSequence.length()) {
                                char cCharAt3 = charSequence.charAt(i7);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    byteBuffer.put((byte) ((codePoint >>> 18) | PsExtractor.VIDEO_STREAM_MASK));
                                    byteBuffer.put((byte) (((codePoint >>> 12) & 63) | 128));
                                    byteBuffer.put((byte) (((codePoint >>> 6) & 63) | 128));
                                    byteBuffer.put((byte) ((codePoint & 63) | 128));
                                    i5 = i7;
                                } else {
                                    i5 = i7;
                                }
                            }
                            StringBuilder sb = new StringBuilder(39);
                            sb.append("Unpaired surrogate at index ");
                            sb.append(i5 - 1);
                            throw new IllegalArgumentException(sb.toString());
                        }
                        byteBuffer.put((byte) ((cCharAt2 >>> '\f') | 480));
                        i4 = ((cCharAt2 >>> 6) & 63) | 128;
                    }
                    byteBuffer.put((byte) i4);
                    i6 = (cCharAt2 & '?') | 128;
                    byteBuffer.put((byte) i6);
                } else {
                    byteBuffer.put((byte) i6);
                }
                i5++;
            }
            return;
        }
        try {
            byte[] bArrArray = byteBuffer.array();
            int iArrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
            int iRemaining = byteBuffer.remaining();
            int length2 = charSequence.length();
            int i8 = iRemaining + iArrayOffset;
            while (i5 < length2) {
                int i9 = i5 + iArrayOffset;
                if (i9 >= i8 || (cCharAt = charSequence.charAt(i5)) >= 128) {
                    break;
                }
                bArrArray[i9] = (byte) cCharAt;
                i5++;
            }
            if (i5 == length2) {
                i2 = iArrayOffset + length2;
            } else {
                i2 = iArrayOffset + i5;
                while (i5 < length2) {
                    char cCharAt4 = charSequence.charAt(i5);
                    if (cCharAt4 >= 128 || i2 >= i8) {
                        if (cCharAt4 < 2048 && i2 <= i8 - 2) {
                            int i10 = i2 + 1;
                            bArrArray[i2] = (byte) ((cCharAt4 >>> 6) | 960);
                            i2 = i10 + 1;
                            bArrArray[i10] = (byte) ((cCharAt4 & '?') | 128);
                        } else {
                            if ((cCharAt4 >= 55296 && 57343 >= cCharAt4) || i2 > i8 - 3) {
                                if (i2 > i8 - 4) {
                                    StringBuilder sb2 = new StringBuilder(37);
                                    sb2.append("Failed writing ");
                                    sb2.append(cCharAt4);
                                    sb2.append(" at index ");
                                    sb2.append(i2);
                                    throw new ArrayIndexOutOfBoundsException(sb2.toString());
                                }
                                int i11 = i5 + 1;
                                if (i11 != charSequence.length()) {
                                    char cCharAt5 = charSequence.charAt(i11);
                                    if (Character.isSurrogatePair(cCharAt4, cCharAt5)) {
                                        int codePoint2 = Character.toCodePoint(cCharAt4, cCharAt5);
                                        int i12 = i2 + 1;
                                        bArrArray[i2] = (byte) ((codePoint2 >>> 18) | PsExtractor.VIDEO_STREAM_MASK);
                                        int i13 = i12 + 1;
                                        bArrArray[i12] = (byte) (((codePoint2 >>> 12) & 63) | 128);
                                        int i14 = i13 + 1;
                                        bArrArray[i13] = (byte) (((codePoint2 >>> 6) & 63) | 128);
                                        i2 = i14 + 1;
                                        bArrArray[i14] = (byte) ((codePoint2 & 63) | 128);
                                        i5 = i11;
                                    } else {
                                        i5 = i11;
                                    }
                                }
                                StringBuilder sb3 = new StringBuilder(39);
                                sb3.append("Unpaired surrogate at index ");
                                sb3.append(i5 - 1);
                                throw new IllegalArgumentException(sb3.toString());
                            }
                            int i15 = i2 + 1;
                            bArrArray[i2] = (byte) ((cCharAt4 >>> '\f') | 480);
                            int i16 = i15 + 1;
                            bArrArray[i15] = (byte) (((cCharAt4 >>> 6) & 63) | 128);
                            i3 = i16 + 1;
                            bArrArray[i16] = (byte) ((cCharAt4 & '?') | 128);
                        }
                        i5++;
                    } else {
                        i3 = i2 + 1;
                        bArrArray[i2] = (byte) cCharAt4;
                    }
                    i2 = i3;
                    i5++;
                }
            }
            byteBuffer.position(i2 - byteBuffer.arrayOffset());
        } catch (ArrayIndexOutOfBoundsException e2) {
            BufferOverflowException bufferOverflowException = new BufferOverflowException();
            bufferOverflowException.initCause(e2);
            throw bufferOverflowException;
        }
    }

    public static int zzgd(int i2) {
        return zzgl(i2 << 3);
    }

    public static int zzge(int i2) {
        if (i2 >= 0) {
            return zzgl(i2);
        }
        return 10;
    }

    public static int zzgl(int i2) {
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

    public static int zzh(int i2, String str) {
        return zzgd(i2) + zzhj(str);
    }

    private final void zzhd(int i2) throws zzdum {
        byte b2 = (byte) i2;
        if (!this.zzakm.hasRemaining()) {
            throw new zzdum(this.zzakm.position(), this.zzakm.limit());
        }
        this.zzakm.put(b2);
    }

    private final void zzhe(int i2) throws zzdum {
        while ((i2 & (-128)) != 0) {
            zzhd((i2 & 127) | 128);
            i2 >>>= 7;
        }
        zzhd(i2);
    }

    public static int zzhj(String str) {
        int iZza = zza(str);
        return zzgl(iZza) + iZza;
    }

    public static zzduj zzp(byte[] bArr, int i2, int i3) {
        return new zzduj(bArr, 0, i3);
    }

    public final void zza(int i2, zzdus zzdusVar) throws zzdum {
        zzz(i2, 2);
        if (zzdusVar.zzhrh < 0) {
            zzdusVar.zzazu();
        }
        zzhe(zzdusVar.zzhrh);
        zzdusVar.zza(this);
    }

    public final void zza(int i2, byte[] bArr) throws zzdum {
        zzz(3, 2);
        zzhe(bArr.length);
        int length = bArr.length;
        if (this.zzakm.remaining() < length) {
            throw new zzdum(this.zzakm.position(), this.zzakm.limit());
        }
        this.zzakm.put(bArr, 0, length);
    }

    public final void zzaa(int i2, int i3) throws zzdum {
        zzz(i2, 0);
        if (i3 >= 0) {
            zzhe(i3);
        } else {
            zzfm(i3);
        }
    }

    public final void zzayv() {
        if (this.zzakm.remaining() != 0) {
            throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", Integer.valueOf(this.zzakm.remaining())));
        }
    }

    public final void zze(int i2, zzdsg zzdsgVar) {
        if (this.zzhqw != null) {
            if (this.zzhqx != this.zzakm.position()) {
                this.zzhqw.write(this.zzakm.array(), this.zzhqx, this.zzakm.position() - this.zzhqx);
            }
            zzdqf zzdqfVar = this.zzhqw;
            zzdqfVar.zza(i2, zzdsgVar);
            zzdqfVar.flush();
            this.zzhqx = this.zzakm.position();
        }
        this.zzhqw = zzdqf.zzm(this.zzakm);
        this.zzhqx = this.zzakm.position();
        zzdqf zzdqfVar2 = this.zzhqw;
        zzdqfVar2.zza(i2, zzdsgVar);
        zzdqfVar2.flush();
        this.zzhqx = this.zzakm.position();
    }

    public final void zzfm(long j2) throws zzdum {
        while (((-128) & j2) != 0) {
            zzhd((((int) j2) & 127) | 128);
            j2 >>>= 7;
        }
        zzhd((int) j2);
    }

    public final void zzg(int i2, String str) throws zzdum {
        zzz(i2, 2);
        try {
            int iZzgl = zzgl(str.length());
            if (iZzgl != zzgl(str.length() * 3)) {
                zzhe(zza(str));
                zzd(str, this.zzakm);
                return;
            }
            int iPosition = this.zzakm.position();
            if (this.zzakm.remaining() < iZzgl) {
                throw new zzdum(iPosition + iZzgl, this.zzakm.limit());
            }
            this.zzakm.position(iPosition + iZzgl);
            zzd(str, this.zzakm);
            int iPosition2 = this.zzakm.position();
            this.zzakm.position(iPosition);
            zzhe((iPosition2 - iPosition) - iZzgl);
            this.zzakm.position(iPosition2);
        } catch (BufferOverflowException e2) {
            zzdum zzdumVar = new zzdum(this.zzakm.position(), this.zzakm.limit());
            zzdumVar.initCause(e2);
            throw zzdumVar;
        }
    }

    public final void zzz(int i2, int i3) throws zzdum {
        zzhe((i2 << 3) | i3);
    }
}
