package com.google.android.exoplayer2.text.dvb;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Region;
import android.util.SparseArray;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class DvbParser {
    private static final int DATA_TYPE_24_TABLE_DATA = 32;
    private static final int DATA_TYPE_28_TABLE_DATA = 33;
    private static final int DATA_TYPE_2BP_CODE_STRING = 16;
    private static final int DATA_TYPE_48_TABLE_DATA = 34;
    private static final int DATA_TYPE_4BP_CODE_STRING = 17;
    private static final int DATA_TYPE_8BP_CODE_STRING = 18;
    private static final int DATA_TYPE_END_LINE = 240;
    private static final int OBJECT_CODING_PIXELS = 0;
    private static final int OBJECT_CODING_STRING = 1;
    private static final int PAGE_STATE_NORMAL = 0;
    private static final int REGION_DEPTH_4_BIT = 2;
    private static final int REGION_DEPTH_8_BIT = 3;
    private static final int SEGMENT_TYPE_CLUT_DEFINITION = 18;
    private static final int SEGMENT_TYPE_DISPLAY_DEFINITION = 20;
    private static final int SEGMENT_TYPE_OBJECT_DATA = 19;
    private static final int SEGMENT_TYPE_PAGE_COMPOSITION = 16;
    private static final int SEGMENT_TYPE_REGION_COMPOSITION = 17;
    private static final String TAG = "DvbParser";
    private static final byte[] defaultMap2To4 = {0, 7, 8, 15};
    private static final byte[] defaultMap2To8 = {0, 119, -120, -1};
    private static final byte[] defaultMap4To8 = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    private Bitmap bitmap;
    private final Canvas canvas;
    private final ClutDefinition defaultClutDefinition;
    private final DisplayDefinition defaultDisplayDefinition;
    private final Paint defaultPaint = new Paint();
    private final Paint fillRegionPaint;
    private final SubtitleService subtitleService;

    private static final class ClutDefinition {
        public final int[] clutEntries2Bit;
        public final int[] clutEntries4Bit;
        public final int[] clutEntries8Bit;
        public final int id;

        public ClutDefinition(int i2, int[] iArr, int[] iArr2, int[] iArr3) {
            this.id = i2;
            this.clutEntries2Bit = iArr;
            this.clutEntries4Bit = iArr2;
            this.clutEntries8Bit = iArr3;
        }
    }

    private static final class DisplayDefinition {
        public final int height;
        public final int horizontalPositionMaximum;
        public final int horizontalPositionMinimum;
        public final int verticalPositionMaximum;
        public final int verticalPositionMinimum;
        public final int width;

        public DisplayDefinition(int i2, int i3, int i4, int i5, int i6, int i7) {
            this.width = i2;
            this.height = i3;
            this.horizontalPositionMinimum = i4;
            this.horizontalPositionMaximum = i5;
            this.verticalPositionMinimum = i6;
            this.verticalPositionMaximum = i7;
        }
    }

    private static final class ObjectData {
        public final byte[] bottomFieldData;
        public final int id;
        public final boolean nonModifyingColorFlag;
        public final byte[] topFieldData;

        public ObjectData(int i2, boolean z, byte[] bArr, byte[] bArr2) {
            this.id = i2;
            this.nonModifyingColorFlag = z;
            this.topFieldData = bArr;
            this.bottomFieldData = bArr2;
        }
    }

    private static final class PageComposition {
        public final SparseArray<PageRegion> regions;
        public final int state;
        public final int timeOutSecs;
        public final int version;

        public PageComposition(int i2, int i3, int i4, SparseArray<PageRegion> sparseArray) {
            this.timeOutSecs = i2;
            this.version = i3;
            this.state = i4;
            this.regions = sparseArray;
        }
    }

    private static final class PageRegion {
        public final int horizontalAddress;
        public final int verticalAddress;

        public PageRegion(int i2, int i3) {
            this.horizontalAddress = i2;
            this.verticalAddress = i3;
        }
    }

    private static final class RegionComposition {
        public final int clutId;
        public final int depth;
        public final boolean fillFlag;
        public final int height;
        public final int id;
        public final int levelOfCompatibility;
        public final int pixelCode2Bit;
        public final int pixelCode4Bit;
        public final int pixelCode8Bit;
        public final SparseArray<RegionObject> regionObjects;
        public final int width;

        public RegionComposition(int i2, boolean z, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, SparseArray<RegionObject> sparseArray) {
            this.id = i2;
            this.fillFlag = z;
            this.width = i3;
            this.height = i4;
            this.levelOfCompatibility = i5;
            this.depth = i6;
            this.clutId = i7;
            this.pixelCode8Bit = i8;
            this.pixelCode4Bit = i9;
            this.pixelCode2Bit = i10;
            this.regionObjects = sparseArray;
        }

        public void mergeFrom(RegionComposition regionComposition) {
            if (regionComposition == null) {
                return;
            }
            SparseArray<RegionObject> sparseArray = regionComposition.regionObjects;
            for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                this.regionObjects.put(sparseArray.keyAt(i2), sparseArray.valueAt(i2));
            }
        }
    }

    private static final class RegionObject {
        public final int backgroundPixelCode;
        public final int foregroundPixelCode;
        public final int horizontalPosition;
        public final int provider;
        public final int type;
        public final int verticalPosition;

        public RegionObject(int i2, int i3, int i4, int i5, int i6, int i7) {
            this.type = i2;
            this.provider = i3;
            this.horizontalPosition = i4;
            this.verticalPosition = i5;
            this.foregroundPixelCode = i6;
            this.backgroundPixelCode = i7;
        }
    }

    private static final class SubtitleService {
        public final int ancillaryPageId;
        public DisplayDefinition displayDefinition;
        public PageComposition pageComposition;
        public final int subtitlePageId;
        public final SparseArray<RegionComposition> regions = new SparseArray<>();
        public final SparseArray<ClutDefinition> cluts = new SparseArray<>();
        public final SparseArray<ObjectData> objects = new SparseArray<>();
        public final SparseArray<ClutDefinition> ancillaryCluts = new SparseArray<>();
        public final SparseArray<ObjectData> ancillaryObjects = new SparseArray<>();

        public SubtitleService(int i2, int i3) {
            this.subtitlePageId = i2;
            this.ancillaryPageId = i3;
        }

        public void reset() {
            this.regions.clear();
            this.cluts.clear();
            this.objects.clear();
            this.ancillaryCluts.clear();
            this.ancillaryObjects.clear();
            this.displayDefinition = null;
            this.pageComposition = null;
        }
    }

    public DvbParser(int i2, int i3) {
        this.defaultPaint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.defaultPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        this.defaultPaint.setPathEffect(null);
        this.fillRegionPaint = new Paint();
        this.fillRegionPaint.setStyle(Paint.Style.FILL);
        this.fillRegionPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        this.fillRegionPaint.setPathEffect(null);
        this.canvas = new Canvas();
        this.defaultDisplayDefinition = new DisplayDefinition(719, 575, 0, 719, 0, 575);
        this.defaultClutDefinition = new ClutDefinition(0, generateDefault2BitClutEntries(), generateDefault4BitClutEntries(), generateDefault8BitClutEntries());
        this.subtitleService = new SubtitleService(i2, i3);
    }

    private static byte[] buildClutMapTable(int i2, int i3, ParsableBitArray parsableBitArray) {
        byte[] bArr = new byte[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            bArr[i4] = (byte) parsableBitArray.readBits(i3);
        }
        return bArr;
    }

    private static int[] generateDefault2BitClutEntries() {
        return new int[]{0, -1, -16777216, -8421505};
    }

    private static int[] generateDefault4BitClutEntries() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (i2 < 8) {
                iArr[i2] = getColor(255, (i2 & 1) != 0 ? 255 : 0, (i2 & 2) != 0 ? 255 : 0, (i2 & 4) != 0 ? 255 : 0);
            } else {
                iArr[i2] = getColor(255, (i2 & 1) != 0 ? 127 : 0, (i2 & 2) != 0 ? 127 : 0, (i2 & 4) == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    private static int[] generateDefault8BitClutEntries() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (i2 < 8) {
                iArr[i2] = getColor(63, (i2 & 1) != 0 ? 255 : 0, (i2 & 2) != 0 ? 255 : 0, (i2 & 4) == 0 ? 0 : 255);
            } else {
                int i3 = i2 & 136;
                if (i3 == 0) {
                    iArr[i2] = getColor(255, ((i2 & 1) != 0 ? 85 : 0) + ((i2 & 16) != 0 ? 170 : 0), ((i2 & 2) != 0 ? 85 : 0) + ((i2 & 32) != 0 ? 170 : 0), ((i2 & 4) == 0 ? 0 : 85) + ((i2 & 64) == 0 ? 0 : 170));
                } else if (i3 == 8) {
                    iArr[i2] = getColor(127, ((i2 & 1) != 0 ? 85 : 0) + ((i2 & 16) != 0 ? 170 : 0), ((i2 & 2) != 0 ? 85 : 0) + ((i2 & 32) != 0 ? 170 : 0), ((i2 & 4) == 0 ? 0 : 85) + ((i2 & 64) == 0 ? 0 : 170));
                } else if (i3 == 128) {
                    iArr[i2] = getColor(255, ((i2 & 1) != 0 ? 43 : 0) + 127 + ((i2 & 16) != 0 ? 85 : 0), ((i2 & 2) != 0 ? 43 : 0) + 127 + ((i2 & 32) != 0 ? 85 : 0), ((i2 & 4) == 0 ? 0 : 43) + 127 + ((i2 & 64) == 0 ? 0 : 85));
                } else if (i3 == 136) {
                    iArr[i2] = getColor(255, ((i2 & 1) != 0 ? 43 : 0) + ((i2 & 16) != 0 ? 85 : 0), ((i2 & 2) != 0 ? 43 : 0) + ((i2 & 32) != 0 ? 85 : 0), ((i2 & 4) == 0 ? 0 : 43) + ((i2 & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    private static int getColor(int i2, int i3, int i4, int i5) {
        return (i2 << 24) | (i3 << 16) | (i4 << 8) | i5;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007b A[LOOP:0: B:3:0x0009->B:32:0x007b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int paint2BitPixelCodeString(com.google.android.exoplayer2.util.ParsableBitArray r13, int[] r14, byte[] r15, int r16, int r17, android.graphics.Paint r18, android.graphics.Canvas r19) {
        /*
            r0 = r13
            r1 = r17
            r8 = r18
            r9 = 0
            r10 = r16
            r2 = 0
        L9:
            r3 = 2
            int r4 = r13.readBits(r3)
            r5 = 1
            if (r4 == 0) goto L15
            r12 = r2
            r3 = r4
        L13:
            r11 = 1
            goto L59
        L15:
            boolean r4 = r13.readBit()
            r6 = 3
            if (r4 == 0) goto L28
            int r4 = r13.readBits(r6)
            int r4 = r4 + r6
        L21:
            int r3 = r13.readBits(r3)
            r12 = r2
            r11 = r4
            goto L59
        L28:
            boolean r4 = r13.readBit()
            if (r4 == 0) goto L31
            r12 = r2
            r3 = 0
            goto L13
        L31:
            int r4 = r13.readBits(r3)
            if (r4 == 0) goto L56
            if (r4 == r5) goto L52
            if (r4 == r3) goto L4a
            if (r4 == r6) goto L41
            r12 = r2
            r3 = 0
            r11 = 0
            goto L59
        L41:
            r4 = 8
            int r4 = r13.readBits(r4)
            int r4 = r4 + 29
            goto L21
        L4a:
            r4 = 4
            int r4 = r13.readBits(r4)
            int r4 = r4 + 12
            goto L21
        L52:
            r12 = r2
            r3 = 0
            r11 = 2
            goto L59
        L56:
            r3 = 0
            r11 = 0
            r12 = 1
        L59:
            if (r11 == 0) goto L77
            if (r8 == 0) goto L77
            if (r15 == 0) goto L61
            r3 = r15[r3]
        L61:
            r2 = r14[r3]
            r8.setColor(r2)
            float r3 = (float) r10
            float r4 = (float) r1
            int r2 = r10 + r11
            float r6 = (float) r2
            int r2 = r1 + 1
            float r7 = (float) r2
            r2 = r19
            r5 = r6
            r6 = r7
            r7 = r18
            r2.drawRect(r3, r4, r5, r6, r7)
        L77:
            int r10 = r10 + r11
            if (r12 == 0) goto L7b
            return r10
        L7b:
            r2 = r12
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.dvb.DvbParser.paint2BitPixelCodeString(com.google.android.exoplayer2.util.ParsableBitArray, int[], byte[], int, int, android.graphics.Paint, android.graphics.Canvas):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0086 A[LOOP:0: B:3:0x0009->B:35:0x0086, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0085 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int paint4BitPixelCodeString(com.google.android.exoplayer2.util.ParsableBitArray r13, int[] r14, byte[] r15, int r16, int r17, android.graphics.Paint r18, android.graphics.Canvas r19) {
        /*
            r0 = r13
            r1 = r17
            r8 = r18
            r9 = 0
            r10 = r16
            r2 = 0
        L9:
            r3 = 4
            int r4 = r13.readBits(r3)
            r5 = 2
            r6 = 1
            if (r4 == 0) goto L16
            r12 = r2
            r3 = r4
        L14:
            r11 = 1
            goto L66
        L16:
            boolean r4 = r13.readBit()
            r7 = 3
            if (r4 != 0) goto L2d
            int r3 = r13.readBits(r7)
            if (r3 == 0) goto L29
            int r3 = r3 + 2
            r12 = r2
            r11 = r3
            r3 = 0
            goto L66
        L29:
            r3 = 0
            r11 = 0
            r12 = 1
            goto L66
        L2d:
            boolean r4 = r13.readBit()
            if (r4 != 0) goto L3f
            int r4 = r13.readBits(r5)
            int r4 = r4 + r3
        L38:
            int r3 = r13.readBits(r3)
            r12 = r2
            r11 = r4
            goto L66
        L3f:
            int r4 = r13.readBits(r5)
            if (r4 == 0) goto L63
            if (r4 == r6) goto L5f
            if (r4 == r5) goto L58
            if (r4 == r7) goto L4f
            r12 = r2
            r3 = 0
            r11 = 0
            goto L66
        L4f:
            r4 = 8
            int r4 = r13.readBits(r4)
            int r4 = r4 + 25
            goto L38
        L58:
            int r4 = r13.readBits(r3)
            int r4 = r4 + 9
            goto L38
        L5f:
            r12 = r2
            r3 = 0
            r11 = 2
            goto L66
        L63:
            r12 = r2
            r3 = 0
            goto L14
        L66:
            if (r11 == 0) goto L82
            if (r8 == 0) goto L82
            if (r15 == 0) goto L6e
            r3 = r15[r3]
        L6e:
            r2 = r14[r3]
            r8.setColor(r2)
            float r3 = (float) r10
            float r4 = (float) r1
            int r2 = r10 + r11
            float r5 = (float) r2
            int r2 = r1 + 1
            float r6 = (float) r2
            r2 = r19
            r7 = r18
            r2.drawRect(r3, r4, r5, r6, r7)
        L82:
            int r10 = r10 + r11
            if (r12 == 0) goto L86
            return r10
        L86:
            r2 = r12
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.dvb.DvbParser.paint4BitPixelCodeString(com.google.android.exoplayer2.util.ParsableBitArray, int[], byte[], int, int, android.graphics.Paint, android.graphics.Canvas):int");
    }

    private static int paint8BitPixelCodeString(ParsableBitArray parsableBitArray, int[] iArr, byte[] bArr, int i2, int i3, Paint paint, Canvas canvas) {
        int bits;
        boolean z;
        int i4;
        int i5 = i2;
        boolean z2 = false;
        while (true) {
            int bits2 = parsableBitArray.readBits(8);
            if (bits2 != 0) {
                z = z2;
                bits = bits2;
                i4 = 1;
            } else if (parsableBitArray.readBit()) {
                int bits3 = parsableBitArray.readBits(7);
                bits = parsableBitArray.readBits(8);
                z = z2;
                i4 = bits3;
            } else {
                int bits4 = parsableBitArray.readBits(7);
                if (bits4 != 0) {
                    z = z2;
                    i4 = bits4;
                    bits = 0;
                } else {
                    bits = 0;
                    i4 = 0;
                    z = true;
                }
            }
            if (i4 != 0 && paint != null) {
                if (bArr != null) {
                    bits = bArr[bits];
                }
                paint.setColor(iArr[bits]);
                canvas.drawRect(i5, i3, i5 + i4, i3 + 1, paint);
            }
            i5 += i4;
            if (z) {
                return i5;
            }
            z2 = z;
        }
    }

    private static void paintPixelDataSubBlock(byte[] bArr, int[] iArr, int i2, int i3, int i4, Paint paint, Canvas canvas) {
        byte[] bArrBuildClutMapTable;
        byte[] bArr2;
        byte[] bArr3;
        int iPaint2BitPixelCodeString;
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
        int i5 = i3;
        int i6 = i4;
        byte[] bArr4 = null;
        byte[] bArrBuildClutMapTable2 = null;
        while (parsableBitArray.bitsLeft() != 0) {
            int bits = parsableBitArray.readBits(8);
            if (bits != 240) {
                switch (bits) {
                    case 16:
                        if (i2 == 3) {
                            bArr3 = bArr4 == null ? defaultMap2To8 : bArr4;
                        } else if (i2 != 2) {
                            bArr2 = null;
                            iPaint2BitPixelCodeString = paint2BitPixelCodeString(parsableBitArray, iArr, bArr2, i5, i6, paint, canvas);
                            parsableBitArray.byteAlign();
                            i5 = iPaint2BitPixelCodeString;
                        } else {
                            bArr3 = bArrBuildClutMapTable2 == null ? defaultMap2To4 : bArrBuildClutMapTable2;
                        }
                        bArr2 = bArr3;
                        iPaint2BitPixelCodeString = paint2BitPixelCodeString(parsableBitArray, iArr, bArr2, i5, i6, paint, canvas);
                        parsableBitArray.byteAlign();
                        i5 = iPaint2BitPixelCodeString;
                        break;
                    case 17:
                        iPaint2BitPixelCodeString = paint4BitPixelCodeString(parsableBitArray, iArr, i2 == 3 ? defaultMap4To8 : null, i5, i6, paint, canvas);
                        parsableBitArray.byteAlign();
                        i5 = iPaint2BitPixelCodeString;
                        break;
                    case 18:
                        iPaint2BitPixelCodeString = paint8BitPixelCodeString(parsableBitArray, iArr, null, i5, i6, paint, canvas);
                        i5 = iPaint2BitPixelCodeString;
                        break;
                    default:
                        switch (bits) {
                            case 32:
                                bArrBuildClutMapTable2 = buildClutMapTable(4, 4, parsableBitArray);
                                continue;
                            case 33:
                                bArrBuildClutMapTable = buildClutMapTable(4, 8, parsableBitArray);
                                break;
                            case 34:
                                bArrBuildClutMapTable = buildClutMapTable(16, 8, parsableBitArray);
                                break;
                        }
                        bArr4 = bArrBuildClutMapTable;
                        break;
                }
            } else {
                i6 += 2;
                i5 = i3;
            }
        }
    }

    private static void paintPixelDataSubBlocks(ObjectData objectData, ClutDefinition clutDefinition, int i2, int i3, int i4, Paint paint, Canvas canvas) {
        int[] iArr = i2 == 3 ? clutDefinition.clutEntries8Bit : i2 == 2 ? clutDefinition.clutEntries4Bit : clutDefinition.clutEntries2Bit;
        paintPixelDataSubBlock(objectData.topFieldData, iArr, i2, i3, i4, paint, canvas);
        paintPixelDataSubBlock(objectData.bottomFieldData, iArr, i2, i3, i4 + 1, paint, canvas);
    }

    private static ClutDefinition parseClutDefinition(ParsableBitArray parsableBitArray, int i2) {
        int bits;
        int i3;
        int bits2;
        int bits3;
        int bits4;
        int i4 = 8;
        int bits5 = parsableBitArray.readBits(8);
        parsableBitArray.skipBits(8);
        int i5 = 2;
        int i6 = i2 - 2;
        int[] iArrGenerateDefault2BitClutEntries = generateDefault2BitClutEntries();
        int[] iArrGenerateDefault4BitClutEntries = generateDefault4BitClutEntries();
        int[] iArrGenerateDefault8BitClutEntries = generateDefault8BitClutEntries();
        while (i6 > 0) {
            int bits6 = parsableBitArray.readBits(i4);
            int bits7 = parsableBitArray.readBits(i4);
            int i7 = i6 - 2;
            int[] iArr = (bits7 & 128) != 0 ? iArrGenerateDefault2BitClutEntries : (bits7 & 64) != 0 ? iArrGenerateDefault4BitClutEntries : iArrGenerateDefault8BitClutEntries;
            if ((bits7 & 1) != 0) {
                bits3 = parsableBitArray.readBits(i4);
                bits4 = parsableBitArray.readBits(i4);
                bits = parsableBitArray.readBits(i4);
                bits2 = parsableBitArray.readBits(i4);
                i3 = i7 - 4;
            } else {
                int bits8 = parsableBitArray.readBits(6) << i5;
                int bits9 = parsableBitArray.readBits(4) << 4;
                bits = parsableBitArray.readBits(4) << 4;
                i3 = i7 - 2;
                bits2 = parsableBitArray.readBits(i5) << 6;
                bits3 = bits8;
                bits4 = bits9;
            }
            if (bits3 == 0) {
                bits4 = 0;
                bits = 0;
                bits2 = 255;
            }
            double d2 = bits3;
            double d3 = bits4 - 128;
            Double.isNaN(d3);
            Double.isNaN(d2);
            double d4 = bits - 128;
            Double.isNaN(d4);
            Double.isNaN(d2);
            Double.isNaN(d3);
            Double.isNaN(d4);
            Double.isNaN(d2);
            iArr[bits6] = getColor((byte) (255 - (bits2 & 255)), Util.constrainValue((int) (d2 + (1.402d * d3)), 0, 255), Util.constrainValue((int) ((d2 - (0.34414d * d4)) - (d3 * 0.71414d)), 0, 255), Util.constrainValue((int) (d2 + (d4 * 1.772d)), 0, 255));
            i6 = i3;
            bits5 = bits5;
            i4 = 8;
            i5 = 2;
        }
        return new ClutDefinition(bits5, iArrGenerateDefault2BitClutEntries, iArrGenerateDefault4BitClutEntries, iArrGenerateDefault8BitClutEntries);
    }

    private static DisplayDefinition parseDisplayDefinition(ParsableBitArray parsableBitArray) {
        int i2;
        int bits;
        int i3;
        int i4;
        parsableBitArray.skipBits(4);
        boolean bit = parsableBitArray.readBit();
        parsableBitArray.skipBits(3);
        int bits2 = parsableBitArray.readBits(16);
        int bits3 = parsableBitArray.readBits(16);
        if (bit) {
            int bits4 = parsableBitArray.readBits(16);
            int bits5 = parsableBitArray.readBits(16);
            int bits6 = parsableBitArray.readBits(16);
            bits = parsableBitArray.readBits(16);
            i2 = bits5;
            i4 = bits6;
            i3 = bits4;
        } else {
            i2 = bits2;
            bits = bits3;
            i3 = 0;
            i4 = 0;
        }
        return new DisplayDefinition(bits2, bits3, i3, i2, i4, bits);
    }

    private static ObjectData parseObjectData(ParsableBitArray parsableBitArray) {
        byte[] bArr;
        int bits = parsableBitArray.readBits(16);
        parsableBitArray.skipBits(4);
        int bits2 = parsableBitArray.readBits(2);
        boolean bit = parsableBitArray.readBit();
        parsableBitArray.skipBits(1);
        byte[] bArr2 = null;
        if (bits2 != 1) {
            if (bits2 == 0) {
                int bits3 = parsableBitArray.readBits(16);
                int bits4 = parsableBitArray.readBits(16);
                if (bits3 > 0) {
                    bArr2 = new byte[bits3];
                    parsableBitArray.readBytes(bArr2, 0, bits3);
                }
                if (bits4 > 0) {
                    bArr = new byte[bits4];
                    parsableBitArray.readBytes(bArr, 0, bits4);
                }
            }
            return new ObjectData(bits, bit, bArr2, bArr);
        }
        parsableBitArray.skipBits(parsableBitArray.readBits(8) * 16);
        bArr = bArr2;
        return new ObjectData(bits, bit, bArr2, bArr);
    }

    private static PageComposition parsePageComposition(ParsableBitArray parsableBitArray, int i2) {
        int bits = parsableBitArray.readBits(8);
        int bits2 = parsableBitArray.readBits(4);
        int bits3 = parsableBitArray.readBits(2);
        parsableBitArray.skipBits(2);
        int i3 = i2 - 2;
        SparseArray sparseArray = new SparseArray();
        while (i3 > 0) {
            int bits4 = parsableBitArray.readBits(8);
            parsableBitArray.skipBits(8);
            i3 -= 6;
            sparseArray.put(bits4, new PageRegion(parsableBitArray.readBits(16), parsableBitArray.readBits(16)));
        }
        return new PageComposition(bits, bits2, bits3, sparseArray);
    }

    private static RegionComposition parseRegionComposition(ParsableBitArray parsableBitArray, int i2) {
        int bits;
        int bits2;
        int bits3 = parsableBitArray.readBits(8);
        parsableBitArray.skipBits(4);
        boolean bit = parsableBitArray.readBit();
        parsableBitArray.skipBits(3);
        int i3 = 16;
        int bits4 = parsableBitArray.readBits(16);
        int bits5 = parsableBitArray.readBits(16);
        int bits6 = parsableBitArray.readBits(3);
        int bits7 = parsableBitArray.readBits(3);
        int i4 = 2;
        parsableBitArray.skipBits(2);
        int bits8 = parsableBitArray.readBits(8);
        int bits9 = parsableBitArray.readBits(8);
        int bits10 = parsableBitArray.readBits(4);
        int bits11 = parsableBitArray.readBits(2);
        parsableBitArray.skipBits(2);
        int i5 = i2 - 10;
        SparseArray sparseArray = new SparseArray();
        while (i5 > 0) {
            int bits12 = parsableBitArray.readBits(i3);
            int bits13 = parsableBitArray.readBits(i4);
            int bits14 = parsableBitArray.readBits(i4);
            int bits15 = parsableBitArray.readBits(12);
            int i6 = bits11;
            parsableBitArray.skipBits(4);
            int bits16 = parsableBitArray.readBits(12);
            i5 -= 6;
            if (bits13 == 1 || bits13 == 2) {
                i5 -= 2;
                bits = parsableBitArray.readBits(8);
                bits2 = parsableBitArray.readBits(8);
            } else {
                bits = 0;
                bits2 = 0;
            }
            sparseArray.put(bits12, new RegionObject(bits13, bits14, bits15, bits16, bits, bits2));
            bits11 = i6;
            i4 = 2;
            i3 = 16;
        }
        return new RegionComposition(bits3, bit, bits4, bits5, bits6, bits7, bits8, bits9, bits10, bits11, sparseArray);
    }

    private static void parseSubtitlingSegment(ParsableBitArray parsableBitArray, SubtitleService subtitleService) {
        SparseArray sparseArray;
        ClutDefinition clutDefinition;
        int i2;
        Object obj;
        ObjectData objectData;
        int bits = parsableBitArray.readBits(8);
        int bits2 = parsableBitArray.readBits(16);
        int bits3 = parsableBitArray.readBits(16);
        int bytePosition = parsableBitArray.getBytePosition() + bits3;
        if (bits3 * 8 > parsableBitArray.bitsLeft()) {
            Log.w(TAG, "Data field length exceeds limit");
            parsableBitArray.skipBits(parsableBitArray.bitsLeft());
            return;
        }
        switch (bits) {
            case 16:
                if (bits2 == subtitleService.subtitlePageId) {
                    PageComposition pageComposition = subtitleService.pageComposition;
                    PageComposition pageComposition2 = parsePageComposition(parsableBitArray, bits3);
                    if (pageComposition2.state != 0) {
                        subtitleService.pageComposition = pageComposition2;
                        subtitleService.regions.clear();
                        subtitleService.cluts.clear();
                        subtitleService.objects.clear();
                    } else if (pageComposition != null && pageComposition.version != pageComposition2.version) {
                        subtitleService.pageComposition = pageComposition2;
                    }
                }
                break;
            case 17:
                PageComposition pageComposition3 = subtitleService.pageComposition;
                if (bits2 == subtitleService.subtitlePageId && pageComposition3 != null) {
                    RegionComposition regionComposition = parseRegionComposition(parsableBitArray, bits3);
                    if (pageComposition3.state == 0) {
                        regionComposition.mergeFrom(subtitleService.regions.get(regionComposition.id));
                    }
                    subtitleService.regions.put(regionComposition.id, regionComposition);
                }
                break;
            case 18:
                if (bits2 == subtitleService.subtitlePageId) {
                    ClutDefinition clutDefinition2 = parseClutDefinition(parsableBitArray, bits3);
                    sparseArray = subtitleService.cluts;
                    clutDefinition = clutDefinition2;
                } else if (bits2 == subtitleService.ancillaryPageId) {
                    ClutDefinition clutDefinition3 = parseClutDefinition(parsableBitArray, bits3);
                    sparseArray = subtitleService.ancillaryCluts;
                    clutDefinition = clutDefinition3;
                }
                i2 = clutDefinition.id;
                obj = clutDefinition;
                sparseArray.put(i2, obj);
                break;
            case 19:
                if (bits2 == subtitleService.subtitlePageId) {
                    ObjectData objectData2 = parseObjectData(parsableBitArray);
                    sparseArray = subtitleService.objects;
                    objectData = objectData2;
                } else if (bits2 == subtitleService.ancillaryPageId) {
                    ObjectData objectData3 = parseObjectData(parsableBitArray);
                    sparseArray = subtitleService.ancillaryObjects;
                    objectData = objectData3;
                }
                i2 = objectData.id;
                obj = objectData;
                sparseArray.put(i2, obj);
                break;
            case 20:
                if (bits2 == subtitleService.subtitlePageId) {
                    subtitleService.displayDefinition = parseDisplayDefinition(parsableBitArray);
                }
                break;
        }
        parsableBitArray.skipBytes(bytePosition - parsableBitArray.getBytePosition());
    }

    public List<Cue> decode(byte[] bArr, int i2) {
        int i3;
        SparseArray<RegionObject> sparseArray;
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr, i2);
        while (parsableBitArray.bitsLeft() >= 48 && parsableBitArray.readBits(8) == 15) {
            parseSubtitlingSegment(parsableBitArray, this.subtitleService);
        }
        SubtitleService subtitleService = this.subtitleService;
        if (subtitleService.pageComposition == null) {
            return Collections.emptyList();
        }
        DisplayDefinition displayDefinition = subtitleService.displayDefinition;
        if (displayDefinition == null) {
            displayDefinition = this.defaultDisplayDefinition;
        }
        Bitmap bitmap = this.bitmap;
        if (bitmap == null || displayDefinition.width + 1 != bitmap.getWidth() || displayDefinition.height + 1 != this.bitmap.getHeight()) {
            this.bitmap = Bitmap.createBitmap(displayDefinition.width + 1, displayDefinition.height + 1, Bitmap.Config.ARGB_8888);
            this.canvas.setBitmap(this.bitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray<PageRegion> sparseArray2 = this.subtitleService.pageComposition.regions;
        for (int i4 = 0; i4 < sparseArray2.size(); i4++) {
            PageRegion pageRegionValueAt = sparseArray2.valueAt(i4);
            RegionComposition regionComposition = this.subtitleService.regions.get(sparseArray2.keyAt(i4));
            int i5 = pageRegionValueAt.horizontalAddress + displayDefinition.horizontalPositionMinimum;
            int i6 = pageRegionValueAt.verticalAddress + displayDefinition.verticalPositionMinimum;
            float f2 = i5;
            float f3 = i6;
            this.canvas.clipRect(f2, f3, Math.min(regionComposition.width + i5, displayDefinition.horizontalPositionMaximum), Math.min(regionComposition.height + i6, displayDefinition.verticalPositionMaximum), Region.Op.REPLACE);
            ClutDefinition clutDefinition = this.subtitleService.cluts.get(regionComposition.clutId);
            if (clutDefinition == null && (clutDefinition = this.subtitleService.ancillaryCluts.get(regionComposition.clutId)) == null) {
                clutDefinition = this.defaultClutDefinition;
            }
            SparseArray<RegionObject> sparseArray3 = regionComposition.regionObjects;
            int i7 = 0;
            while (i7 < sparseArray3.size()) {
                int iKeyAt = sparseArray3.keyAt(i7);
                RegionObject regionObjectValueAt = sparseArray3.valueAt(i7);
                ObjectData objectData = this.subtitleService.objects.get(iKeyAt);
                ObjectData objectData2 = objectData == null ? this.subtitleService.ancillaryObjects.get(iKeyAt) : objectData;
                if (objectData2 != null) {
                    i3 = i7;
                    sparseArray = sparseArray3;
                    paintPixelDataSubBlocks(objectData2, clutDefinition, regionComposition.depth, regionObjectValueAt.horizontalPosition + i5, i6 + regionObjectValueAt.verticalPosition, objectData2.nonModifyingColorFlag ? null : this.defaultPaint, this.canvas);
                } else {
                    i3 = i7;
                    sparseArray = sparseArray3;
                }
                i7 = i3 + 1;
                sparseArray3 = sparseArray;
            }
            if (regionComposition.fillFlag) {
                int i8 = regionComposition.depth;
                this.fillRegionPaint.setColor(i8 == 3 ? clutDefinition.clutEntries8Bit[regionComposition.pixelCode8Bit] : i8 == 2 ? clutDefinition.clutEntries4Bit[regionComposition.pixelCode4Bit] : clutDefinition.clutEntries2Bit[regionComposition.pixelCode2Bit]);
                this.canvas.drawRect(f2, f3, regionComposition.width + i5, regionComposition.height + i6, this.fillRegionPaint);
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.bitmap, i5, i6, regionComposition.width, regionComposition.height);
            int i9 = displayDefinition.width;
            int i10 = displayDefinition.height;
            arrayList.add(new Cue(bitmapCreateBitmap, f2 / i9, 0, f3 / i10, 0, regionComposition.width / i9, regionComposition.height / i10));
            this.canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        return arrayList;
    }

    public void reset() {
        this.subtitleService.reset();
    }
}
