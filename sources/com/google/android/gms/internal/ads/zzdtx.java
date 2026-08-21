package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
abstract class zzdtx {
    zzdtx() {
    }

    static void zzc(CharSequence charSequence, ByteBuffer byteBuffer) {
        int length = charSequence.length();
        int iPosition = byteBuffer.position();
        int i2 = 0;
        while (i2 < length) {
            try {
                char cCharAt = charSequence.charAt(i2);
                if (cCharAt >= 128) {
                    break;
                }
                byteBuffer.put(iPosition + i2, (byte) cCharAt);
                i2++;
            } catch (IndexOutOfBoundsException unused) {
                int iPosition2 = byteBuffer.position() + Math.max(i2, (iPosition - byteBuffer.position()) + 1);
                char cCharAt2 = charSequence.charAt(i2);
                StringBuilder sb = new StringBuilder(37);
                sb.append("Failed writing ");
                sb.append(cCharAt2);
                sb.append(" at index ");
                sb.append(iPosition2);
                throw new ArrayIndexOutOfBoundsException(sb.toString());
            }
        }
        if (i2 == length) {
            byteBuffer.position(iPosition + i2);
            return;
        }
        iPosition += i2;
        while (i2 < length) {
            char cCharAt3 = charSequence.charAt(i2);
            if (cCharAt3 < 128) {
                byteBuffer.put(iPosition, (byte) cCharAt3);
            } else if (cCharAt3 < 2048) {
                int i3 = iPosition + 1;
                try {
                    byteBuffer.put(iPosition, (byte) ((cCharAt3 >>> 6) | PsExtractor.AUDIO_STREAM));
                    byteBuffer.put(i3, (byte) ((cCharAt3 & '?') | 128));
                    iPosition = i3;
                } catch (IndexOutOfBoundsException unused2) {
                    iPosition = i3;
                    int iPosition22 = byteBuffer.position() + Math.max(i2, (iPosition - byteBuffer.position()) + 1);
                    char cCharAt22 = charSequence.charAt(i2);
                    StringBuilder sb2 = new StringBuilder(37);
                    sb2.append("Failed writing ");
                    sb2.append(cCharAt22);
                    sb2.append(" at index ");
                    sb2.append(iPosition22);
                    throw new ArrayIndexOutOfBoundsException(sb2.toString());
                }
            } else {
                if (cCharAt3 >= 55296 && 57343 >= cCharAt3) {
                    int i4 = i2 + 1;
                    if (i4 != length) {
                        try {
                            char cCharAt4 = charSequence.charAt(i4);
                            if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                                int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                                int i5 = iPosition + 1;
                                try {
                                    byteBuffer.put(iPosition, (byte) ((codePoint >>> 18) | PsExtractor.VIDEO_STREAM_MASK));
                                    int i6 = i5 + 1;
                                    byteBuffer.put(i5, (byte) (((codePoint >>> 12) & 63) | 128));
                                    int i7 = i6 + 1;
                                    byteBuffer.put(i6, (byte) (((codePoint >>> 6) & 63) | 128));
                                    byteBuffer.put(i7, (byte) ((codePoint & 63) | 128));
                                    iPosition = i7;
                                    i2 = i4;
                                } catch (IndexOutOfBoundsException unused3) {
                                    iPosition = i5;
                                    i2 = i4;
                                    int iPosition222 = byteBuffer.position() + Math.max(i2, (iPosition - byteBuffer.position()) + 1);
                                    char cCharAt222 = charSequence.charAt(i2);
                                    StringBuilder sb22 = new StringBuilder(37);
                                    sb22.append("Failed writing ");
                                    sb22.append(cCharAt222);
                                    sb22.append(" at index ");
                                    sb22.append(iPosition222);
                                    throw new ArrayIndexOutOfBoundsException(sb22.toString());
                                }
                            } else {
                                i2 = i4;
                            }
                        } catch (IndexOutOfBoundsException unused4) {
                        }
                    }
                    throw new zzdtz(i2, length);
                }
                int i8 = iPosition + 1;
                byteBuffer.put(iPosition, (byte) ((cCharAt3 >>> '\f') | 224));
                iPosition = i8 + 1;
                byteBuffer.put(i8, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                byteBuffer.put(iPosition, (byte) ((cCharAt3 & '?') | 128));
            }
            i2++;
            iPosition++;
        }
        byteBuffer.position(iPosition);
    }

    abstract int zzb(int i2, byte[] bArr, int i3, int i4);

    abstract int zzb(CharSequence charSequence, byte[] bArr, int i2, int i3);

    abstract void zzb(CharSequence charSequence, ByteBuffer byteBuffer);

    final boolean zzl(byte[] bArr, int i2, int i3) {
        return zzb(0, bArr, i2, i3) == 0;
    }

    abstract String zzn(byte[] bArr, int i2, int i3);
}
