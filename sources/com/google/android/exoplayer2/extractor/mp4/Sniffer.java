package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes.dex */
final class Sniffer {
    private static final int[] COMPATIBLE_BRANDS = {Util.getIntegerCodeForString("isom"), Util.getIntegerCodeForString("iso2"), Util.getIntegerCodeForString("iso3"), Util.getIntegerCodeForString("iso4"), Util.getIntegerCodeForString("iso5"), Util.getIntegerCodeForString("iso6"), Util.getIntegerCodeForString("avc1"), Util.getIntegerCodeForString("hvc1"), Util.getIntegerCodeForString("hev1"), Util.getIntegerCodeForString("mp41"), Util.getIntegerCodeForString("mp42"), Util.getIntegerCodeForString("3g2a"), Util.getIntegerCodeForString("3g2b"), Util.getIntegerCodeForString("3gr6"), Util.getIntegerCodeForString("3gs6"), Util.getIntegerCodeForString("3ge6"), Util.getIntegerCodeForString("3gg6"), Util.getIntegerCodeForString("M4V "), Util.getIntegerCodeForString("M4A "), Util.getIntegerCodeForString("f4v "), Util.getIntegerCodeForString("kddi"), Util.getIntegerCodeForString("M4VP"), Util.getIntegerCodeForString("qt  "), Util.getIntegerCodeForString("MSNV")};
    private static final int SEARCH_LENGTH = 4096;

    private Sniffer() {
    }

    private static boolean isCompatibleBrand(int i2) {
        if ((i2 >>> 8) == Util.getIntegerCodeForString("3gp")) {
            return true;
        }
        for (int i3 : COMPATIBLE_BRANDS) {
            if (i3 == i2) {
                return true;
            }
        }
        return false;
    }

    public static boolean sniffFragmented(ExtractorInput extractorInput) {
        return sniffInternal(extractorInput, true);
    }

    private static boolean sniffInternal(ExtractorInput extractorInput, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        long length = extractorInput.getLength();
        long j2 = 4096;
        long j3 = -1;
        if (length != -1 && length <= 4096) {
            j2 = length;
        }
        int i2 = (int) j2;
        ParsableByteArray parsableByteArray = new ParsableByteArray(64);
        boolean z5 = false;
        int i3 = i2;
        int i4 = 0;
        boolean z6 = false;
        while (i4 < i3) {
            parsableByteArray.reset(8);
            extractorInput.peekFully(parsableByteArray.data, z5 ? 1 : 0, 8);
            long unsignedInt = parsableByteArray.readUnsignedInt();
            int i5 = parsableByteArray.readInt();
            int i6 = 16;
            if (unsignedInt == 1) {
                extractorInput.peekFully(parsableByteArray.data, 8, 8);
                parsableByteArray.setLimit(16);
                unsignedInt = parsableByteArray.readLong();
            } else {
                if (unsignedInt == 0) {
                    long length2 = extractorInput.getLength();
                    if (length2 != j3) {
                        unsignedInt = ((long) 8) + (length2 - extractorInput.getPeekPosition());
                    }
                }
                i6 = 8;
            }
            if (length != j3 && ((long) i4) + unsignedInt > length) {
                return z5;
            }
            long j4 = i6;
            if (unsignedInt < j4) {
                return z5;
            }
            i4 += i6;
            if (i5 == Atom.TYPE_moov) {
                i3 += (int) unsignedInt;
                if (length != -1 && i3 > length) {
                    i3 = (int) length;
                }
                j3 = -1;
            } else {
                if (i5 == Atom.TYPE_moof || i5 == Atom.TYPE_mvex) {
                    z2 = false;
                    z3 = true;
                    break;
                }
                int i7 = i3;
                long j5 = unsignedInt;
                if ((((long) i4) + unsignedInt) - j4 >= i7) {
                    break;
                }
                int i8 = (int) (j5 - j4);
                i4 += i8;
                if (i5 == Atom.TYPE_ftyp) {
                    if (i8 < 8) {
                        return false;
                    }
                    parsableByteArray.reset(i8);
                    extractorInput.peekFully(parsableByteArray.data, 0, i8);
                    int i9 = i8 / 4;
                    int i10 = 0;
                    while (true) {
                        if (i10 >= i9) {
                            z4 = z6;
                            break;
                        }
                        z4 = true;
                        if (i10 == 1) {
                            parsableByteArray.skipBytes(4);
                        } else if (isCompatibleBrand(parsableByteArray.readInt())) {
                            break;
                        }
                        i10++;
                    }
                    if (!z4) {
                        return false;
                    }
                    z6 = z4;
                } else if (i8 != 0) {
                    extractorInput.advancePeekPosition(i8);
                }
                i3 = i7;
                j3 = -1;
                z5 = false;
            }
        }
        z2 = false;
        z3 = false;
        if (z6 && z == z3) {
            return true;
        }
        return z2;
    }

    public static boolean sniffUnfragmented(ExtractorInput extractorInput) {
        return sniffInternal(extractorInput, false);
    }
}
