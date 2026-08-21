package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
final class zzduc extends zzdtx {
    zzduc() {
    }

    private static int zza(byte[] bArr, int i2, long j2, int i3) {
        if (i3 == 0) {
            return zzdtw.zzhb(i2);
        }
        if (i3 == 1) {
            return zzdtw.zzao(i2, zzdtt.zza(bArr, j2));
        }
        if (i3 == 2) {
            return zzdtw.zzi(i2, zzdtt.zza(bArr, j2), zzdtt.zza(bArr, j2 + 1));
        }
        throw new AssertionError();
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0061, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x008e, code lost:
    
        return -1;
     */
    @Override // com.google.android.gms.internal.ads.zzdtx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final int zzb(int r16, byte[] r17, int r18, int r19) {
        /*
            Method dump skipped, instruction units count: 222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzduc.zzb(int, byte[], int, int):int");
    }

    @Override // com.google.android.gms.internal.ads.zzdtx
    final int zzb(CharSequence charSequence, byte[] bArr, int i2, int i3) {
        char c2;
        long j2;
        long j3;
        long j4;
        int i4;
        char cCharAt;
        long j5 = i2;
        long j6 = ((long) i3) + j5;
        int length = charSequence.length();
        if (length > i3 || bArr.length - i3 < i2) {
            char cCharAt2 = charSequence.charAt(length - 1);
            StringBuilder sb = new StringBuilder(37);
            sb.append("Failed writing ");
            sb.append(cCharAt2);
            sb.append(" at index ");
            sb.append(i2 + i3);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        int i5 = 0;
        while (true) {
            c2 = 128;
            j2 = 1;
            if (i5 >= length || (cCharAt = charSequence.charAt(i5)) >= 128) {
                break;
            }
            zzdtt.zza(bArr, j5, (byte) cCharAt);
            i5++;
            j5 = 1 + j5;
        }
        if (i5 == length) {
            return (int) j5;
        }
        while (i5 < length) {
            char cCharAt3 = charSequence.charAt(i5);
            if (cCharAt3 >= c2 || j5 >= j6) {
                if (cCharAt3 < 2048 && j5 <= j6 - 2) {
                    long j7 = j5 + j2;
                    zzdtt.zza(bArr, j5, (byte) ((cCharAt3 >>> 6) | 960));
                    zzdtt.zza(bArr, j7, (byte) ((cCharAt3 & '?') | 128));
                    j3 = j7 + j2;
                    j4 = j2;
                } else {
                    if ((cCharAt3 >= 55296 && 57343 >= cCharAt3) || j5 > j6 - 3) {
                        if (j5 > j6 - 4) {
                            if (55296 <= cCharAt3 && cCharAt3 <= 57343 && ((i4 = i5 + 1) == length || !Character.isSurrogatePair(cCharAt3, charSequence.charAt(i4)))) {
                                throw new zzdtz(i5, length);
                            }
                            StringBuilder sb2 = new StringBuilder(46);
                            sb2.append("Failed writing ");
                            sb2.append(cCharAt3);
                            sb2.append(" at index ");
                            sb2.append(j5);
                            throw new ArrayIndexOutOfBoundsException(sb2.toString());
                        }
                        int i6 = i5 + 1;
                        if (i6 != length) {
                            char cCharAt4 = charSequence.charAt(i6);
                            if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                                int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                                long j8 = j5 + 1;
                                zzdtt.zza(bArr, j5, (byte) ((codePoint >>> 18) | PsExtractor.VIDEO_STREAM_MASK));
                                long j9 = j8 + 1;
                                zzdtt.zza(bArr, j8, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j10 = j9 + 1;
                                zzdtt.zza(bArr, j9, (byte) (((codePoint >>> 6) & 63) | 128));
                                j4 = 1;
                                j3 = j10 + 1;
                                zzdtt.zza(bArr, j10, (byte) ((codePoint & 63) | 128));
                                i5 = i6;
                            } else {
                                i5 = i6;
                            }
                        }
                        throw new zzdtz(i5 - 1, length);
                    }
                    long j11 = j5 + j2;
                    zzdtt.zza(bArr, j5, (byte) ((cCharAt3 >>> '\f') | 480));
                    long j12 = j11 + j2;
                    zzdtt.zza(bArr, j11, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                    zzdtt.zza(bArr, j12, (byte) ((cCharAt3 & '?') | 128));
                    j3 = j12 + 1;
                    j4 = 1;
                }
                i5++;
                c2 = 128;
                long j13 = j4;
                j5 = j3;
                j2 = j13;
            } else {
                long j14 = j5 + j2;
                zzdtt.zza(bArr, j5, (byte) cCharAt3);
                j4 = j2;
                j3 = j14;
            }
            i5++;
            c2 = 128;
            long j132 = j4;
            j5 = j3;
            j2 = j132;
        }
        return (int) j5;
    }

    @Override // com.google.android.gms.internal.ads.zzdtx
    final void zzb(CharSequence charSequence, ByteBuffer byteBuffer) {
        char c2;
        int i2;
        long j2;
        int i3;
        char cCharAt;
        ByteBuffer byteBuffer2 = byteBuffer;
        long jZzn = zzdtt.zzn(byteBuffer);
        long jPosition = ((long) byteBuffer.position()) + jZzn;
        long jLimit = ((long) byteBuffer.limit()) + jZzn;
        int length = charSequence.length();
        if (length > jLimit - jPosition) {
            char cCharAt2 = charSequence.charAt(length - 1);
            int iLimit = byteBuffer.limit();
            StringBuilder sb = new StringBuilder(37);
            sb.append("Failed writing ");
            sb.append(cCharAt2);
            sb.append(" at index ");
            sb.append(iLimit);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        int i4 = 0;
        while (true) {
            c2 = 128;
            if (i4 >= length || (cCharAt = charSequence.charAt(i4)) >= 128) {
                break;
            }
            zzdtt.zza(jPosition, (byte) cCharAt);
            i4++;
            jPosition = 1 + jPosition;
        }
        if (i4 == length) {
            i2 = (int) (jPosition - jZzn);
        } else {
            while (i4 < length) {
                char cCharAt3 = charSequence.charAt(i4);
                if (cCharAt3 < c2 && jPosition < jLimit) {
                    zzdtt.zza(jPosition, (byte) cCharAt3);
                    jPosition++;
                    j2 = jZzn;
                } else if (cCharAt3 >= 2048 || jPosition > jLimit - 2) {
                    j2 = jZzn;
                    if ((cCharAt3 >= 55296 && 57343 >= cCharAt3) || jPosition > jLimit - 3) {
                        if (jPosition > jLimit - 4) {
                            if (55296 <= cCharAt3 && cCharAt3 <= 57343 && ((i3 = i4 + 1) == length || !Character.isSurrogatePair(cCharAt3, charSequence.charAt(i3)))) {
                                throw new zzdtz(i4, length);
                            }
                            StringBuilder sb2 = new StringBuilder(46);
                            sb2.append("Failed writing ");
                            sb2.append(cCharAt3);
                            sb2.append(" at index ");
                            sb2.append(jPosition);
                            throw new ArrayIndexOutOfBoundsException(sb2.toString());
                        }
                        int i5 = i4 + 1;
                        if (i5 != length) {
                            char cCharAt4 = charSequence.charAt(i5);
                            if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                                int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                                long j3 = jPosition + 1;
                                zzdtt.zza(jPosition, (byte) ((codePoint >>> 18) | PsExtractor.VIDEO_STREAM_MASK));
                                long j4 = j3 + 1;
                                zzdtt.zza(j3, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j5 = j4 + 1;
                                zzdtt.zza(j4, (byte) (((codePoint >>> 6) & 63) | 128));
                                long j6 = j5 + 1;
                                zzdtt.zza(j5, (byte) ((codePoint & 63) | 128));
                                i4 = i5;
                                jPosition = j6;
                            }
                        } else {
                            i5 = i4;
                        }
                        throw new zzdtz(i5 - 1, length);
                    }
                    long j7 = jPosition + 1;
                    zzdtt.zza(jPosition, (byte) ((cCharAt3 >>> '\f') | 480));
                    long j8 = j7 + 1;
                    zzdtt.zza(j7, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                    zzdtt.zza(j8, (byte) ((cCharAt3 & '?') | 128));
                    jPosition = j8 + 1;
                } else {
                    j2 = jZzn;
                    long j9 = jPosition + 1;
                    zzdtt.zza(jPosition, (byte) ((cCharAt3 >>> 6) | 960));
                    zzdtt.zza(j9, (byte) ((cCharAt3 & '?') | 128));
                    jPosition = j9 + 1;
                }
                i4++;
                jZzn = j2;
                c2 = 128;
            }
            i2 = (int) (jPosition - jZzn);
            byteBuffer2 = byteBuffer;
        }
        byteBuffer2.position(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtx
    final String zzn(byte[] bArr, int i2, int i3) throws zzdrg {
        if ((i2 | i3 | ((bArr.length - i2) - i3)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
        int i4 = i2 + i3;
        char[] cArr = new char[i3];
        int i5 = 0;
        while (i2 < i4) {
            byte bZza = zzdtt.zza(bArr, i2);
            if (!zzdty.zze(bZza)) {
                break;
            }
            i2++;
            zzdty.zza(bZza, cArr, i5);
            i5++;
        }
        int i6 = i5;
        while (i2 < i4) {
            int i7 = i2 + 1;
            byte bZza2 = zzdtt.zza(bArr, i2);
            if (zzdty.zze(bZza2)) {
                int i8 = i6 + 1;
                zzdty.zza(bZza2, cArr, i6);
                while (i7 < i4) {
                    byte bZza3 = zzdtt.zza(bArr, i7);
                    if (!zzdty.zze(bZza3)) {
                        break;
                    }
                    i7++;
                    zzdty.zza(bZza3, cArr, i8);
                    i8++;
                }
                i2 = i7;
                i6 = i8;
            } else if (zzdty.zzf(bZza2)) {
                if (i7 >= i4) {
                    throw zzdrg.zzbaj();
                }
                zzdty.zza(bZza2, zzdtt.zza(bArr, i7), cArr, i6);
                i2 = i7 + 1;
                i6++;
            } else if (zzdty.zzg(bZza2)) {
                if (i7 >= i4 - 1) {
                    throw zzdrg.zzbaj();
                }
                int i9 = i7 + 1;
                zzdty.zza(bZza2, zzdtt.zza(bArr, i7), zzdtt.zza(bArr, i9), cArr, i6);
                i2 = i9 + 1;
                i6++;
            } else {
                if (i7 >= i4 - 2) {
                    throw zzdrg.zzbaj();
                }
                int i10 = i7 + 1;
                byte bZza4 = zzdtt.zza(bArr, i7);
                int i11 = i10 + 1;
                zzdty.zza(bZza2, bZza4, zzdtt.zza(bArr, i10), zzdtt.zza(bArr, i11), cArr, i6);
                i2 = i11 + 1;
                i6 = i6 + 1 + 1;
            }
        }
        return new String(cArr, 0, i6);
    }
}
