package com.google.android.exoplayer2.text.cea;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.text.SubtitleInputBuffer;
import com.google.android.exoplayer2.text.SubtitleOutputBuffer;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Cea708Decoder extends CeaDecoder {
    private static final int CC_VALID_FLAG = 4;
    private static final int CHARACTER_BIG_CARONS = 42;
    private static final int CHARACTER_BIG_OE = 44;
    private static final int CHARACTER_BOLD_BULLET = 53;
    private static final int CHARACTER_CLOSE_DOUBLE_QUOTE = 52;
    private static final int CHARACTER_CLOSE_SINGLE_QUOTE = 50;
    private static final int CHARACTER_DIAERESIS_Y = 63;
    private static final int CHARACTER_ELLIPSIS = 37;
    private static final int CHARACTER_FIVE_EIGHTHS = 120;
    private static final int CHARACTER_HORIZONTAL_BORDER = 125;
    private static final int CHARACTER_LOWER_LEFT_BORDER = 124;
    private static final int CHARACTER_LOWER_RIGHT_BORDER = 126;
    private static final int CHARACTER_MN = 127;
    private static final int CHARACTER_NBTSP = 33;
    private static final int CHARACTER_ONE_EIGHTH = 118;
    private static final int CHARACTER_OPEN_DOUBLE_QUOTE = 51;
    private static final int CHARACTER_OPEN_SINGLE_QUOTE = 49;
    private static final int CHARACTER_SEVEN_EIGHTHS = 121;
    private static final int CHARACTER_SM = 61;
    private static final int CHARACTER_SMALL_CARONS = 58;
    private static final int CHARACTER_SMALL_OE = 60;
    private static final int CHARACTER_SOLID_BLOCK = 48;
    private static final int CHARACTER_THREE_EIGHTHS = 119;
    private static final int CHARACTER_TM = 57;
    private static final int CHARACTER_TSP = 32;
    private static final int CHARACTER_UPPER_LEFT_BORDER = 127;
    private static final int CHARACTER_UPPER_RIGHT_BORDER = 123;
    private static final int CHARACTER_VERTICAL_BORDER = 122;
    private static final int COMMAND_BS = 8;
    private static final int COMMAND_CLW = 136;
    private static final int COMMAND_CR = 13;
    private static final int COMMAND_CW0 = 128;
    private static final int COMMAND_CW1 = 129;
    private static final int COMMAND_CW2 = 130;
    private static final int COMMAND_CW3 = 131;
    private static final int COMMAND_CW4 = 132;
    private static final int COMMAND_CW5 = 133;
    private static final int COMMAND_CW6 = 134;
    private static final int COMMAND_CW7 = 135;
    private static final int COMMAND_DF0 = 152;
    private static final int COMMAND_DF1 = 153;
    private static final int COMMAND_DF2 = 154;
    private static final int COMMAND_DF3 = 155;
    private static final int COMMAND_DF4 = 156;
    private static final int COMMAND_DF5 = 157;
    private static final int COMMAND_DF6 = 158;
    private static final int COMMAND_DF7 = 159;
    private static final int COMMAND_DLC = 142;
    private static final int COMMAND_DLW = 140;
    private static final int COMMAND_DLY = 141;
    private static final int COMMAND_DSW = 137;
    private static final int COMMAND_ETX = 3;
    private static final int COMMAND_EXT1 = 16;
    private static final int COMMAND_EXT1_END = 23;
    private static final int COMMAND_EXT1_START = 17;
    private static final int COMMAND_FF = 12;
    private static final int COMMAND_HCR = 14;
    private static final int COMMAND_HDW = 138;
    private static final int COMMAND_NUL = 0;
    private static final int COMMAND_P16_END = 31;
    private static final int COMMAND_P16_START = 24;
    private static final int COMMAND_RST = 143;
    private static final int COMMAND_SPA = 144;
    private static final int COMMAND_SPC = 145;
    private static final int COMMAND_SPL = 146;
    private static final int COMMAND_SWA = 151;
    private static final int COMMAND_TGW = 139;
    private static final int DTVCC_PACKET_DATA = 2;
    private static final int DTVCC_PACKET_START = 3;
    private static final int GROUP_C0_END = 31;
    private static final int GROUP_C1_END = 159;
    private static final int GROUP_C2_END = 31;
    private static final int GROUP_C3_END = 159;
    private static final int GROUP_G0_END = 127;
    private static final int GROUP_G1_END = 255;
    private static final int GROUP_G2_END = 127;
    private static final int GROUP_G3_END = 255;
    private static final int NUM_WINDOWS = 8;
    private static final String TAG = "Cea708Decoder";
    private final CueBuilder[] cueBuilders;
    private List<Cue> cues;
    private CueBuilder currentCueBuilder;
    private DtvCcPacket currentDtvCcPacket;
    private int currentWindow;
    private List<Cue> lastCues;
    private final int selectedServiceNumber;
    private final ParsableByteArray ccData = new ParsableByteArray();
    private final ParsableBitArray serviceBlockPacket = new ParsableBitArray();

    private static final class CueBuilder {
        private static final int BORDER_AND_EDGE_TYPE_NONE = 0;
        private static final int BORDER_AND_EDGE_TYPE_UNIFORM = 3;
        private static final int DEFAULT_PRIORITY = 4;
        private static final int DIRECTION_BOTTOM_TO_TOP = 3;
        private static final int DIRECTION_LEFT_TO_RIGHT = 0;
        private static final int DIRECTION_RIGHT_TO_LEFT = 1;
        private static final int DIRECTION_TOP_TO_BOTTOM = 2;
        private static final int HORIZONTAL_SIZE = 209;
        private static final int JUSTIFICATION_CENTER = 2;
        private static final int JUSTIFICATION_FULL = 3;
        private static final int JUSTIFICATION_LEFT = 0;
        private static final int JUSTIFICATION_RIGHT = 1;
        private static final int MAXIMUM_ROW_COUNT = 15;
        private static final int PEN_FONT_STYLE_DEFAULT = 0;
        private static final int PEN_FONT_STYLE_MONOSPACED_WITHOUT_SERIFS = 3;
        private static final int PEN_FONT_STYLE_MONOSPACED_WITH_SERIFS = 1;
        private static final int PEN_FONT_STYLE_PROPORTIONALLY_SPACED_WITHOUT_SERIFS = 4;
        private static final int PEN_FONT_STYLE_PROPORTIONALLY_SPACED_WITH_SERIFS = 2;
        private static final int PEN_OFFSET_NORMAL = 1;
        private static final int PEN_SIZE_STANDARD = 1;
        private static final int[] PEN_STYLE_BACKGROUND;
        private static final int[] PEN_STYLE_EDGE_TYPE;
        private static final int[] PEN_STYLE_FONT_STYLE;
        private static final int RELATIVE_CUE_SIZE = 99;
        private static final int VERTICAL_SIZE = 74;
        private static final int[] WINDOW_STYLE_FILL;
        private int anchorId;
        private int backgroundColor;
        private int backgroundColorStartPosition;
        private boolean defined;
        private int foregroundColor;
        private int foregroundColorStartPosition;
        private int horizontalAnchor;
        private int italicsStartPosition;
        private int justification;
        private int penStyleId;
        private int priority;
        private boolean relativePositioning;
        private int row;
        private int rowCount;
        private boolean rowLock;
        private int underlineStartPosition;
        private int verticalAnchor;
        private boolean visible;
        private int windowFillColor;
        private int windowStyleId;
        public static final int COLOR_SOLID_WHITE = getArgbColorFromCeaColor(2, 2, 2, 0);
        public static final int COLOR_SOLID_BLACK = getArgbColorFromCeaColor(0, 0, 0, 0);
        public static final int COLOR_TRANSPARENT = getArgbColorFromCeaColor(0, 0, 0, 3);
        private static final int[] WINDOW_STYLE_JUSTIFICATION = {0, 0, 0, 0, 0, 2, 0};
        private static final int[] WINDOW_STYLE_PRINT_DIRECTION = {0, 0, 0, 0, 0, 0, 2};
        private static final int[] WINDOW_STYLE_SCROLL_DIRECTION = {3, 3, 3, 3, 3, 3, 1};
        private static final boolean[] WINDOW_STYLE_WORD_WRAP = {false, false, false, true, true, true, false};
        private final List<SpannableString> rolledUpCaptions = new ArrayList();
        private final SpannableStringBuilder captionStringBuilder = new SpannableStringBuilder();

        static {
            int i2 = COLOR_SOLID_BLACK;
            int i3 = COLOR_TRANSPARENT;
            WINDOW_STYLE_FILL = new int[]{i2, i3, i2, i2, i3, i2, i2};
            PEN_STYLE_FONT_STYLE = new int[]{0, 1, 2, 3, 4, 3, 4};
            PEN_STYLE_EDGE_TYPE = new int[]{0, 0, 0, 0, 0, 3, 3};
            PEN_STYLE_BACKGROUND = new int[]{i2, i2, i2, i2, i2, i3, i3};
        }

        public CueBuilder() {
            reset();
        }

        public static int getArgbColorFromCeaColor(int i2, int i3, int i4) {
            return getArgbColorFromCeaColor(i2, i3, i4, 0);
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x001b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public static int getArgbColorFromCeaColor(int r4, int r5, int r6, int r7) {
            /*
                r0 = 4
                r1 = 0
                com.google.android.exoplayer2.util.Assertions.checkIndex(r4, r1, r0)
                com.google.android.exoplayer2.util.Assertions.checkIndex(r5, r1, r0)
                com.google.android.exoplayer2.util.Assertions.checkIndex(r6, r1, r0)
                com.google.android.exoplayer2.util.Assertions.checkIndex(r7, r1, r0)
                r0 = 1
                r2 = 255(0xff, float:3.57E-43)
                if (r7 == 0) goto L1b
                if (r7 == r0) goto L1b
                r3 = 2
                if (r7 == r3) goto L20
                r3 = 3
                if (r7 == r3) goto L1e
            L1b:
                r7 = 255(0xff, float:3.57E-43)
                goto L22
            L1e:
                r7 = 0
                goto L22
            L20:
                r7 = 127(0x7f, float:1.78E-43)
            L22:
                if (r4 <= r0) goto L27
                r4 = 255(0xff, float:3.57E-43)
                goto L28
            L27:
                r4 = 0
            L28:
                if (r5 <= r0) goto L2d
                r5 = 255(0xff, float:3.57E-43)
                goto L2e
            L2d:
                r5 = 0
            L2e:
                if (r6 <= r0) goto L32
                r1 = 255(0xff, float:3.57E-43)
            L32:
                int r4 = android.graphics.Color.argb(r7, r4, r5, r1)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.cea.Cea708Decoder.CueBuilder.getArgbColorFromCeaColor(int, int, int, int):int");
        }

        public void append(char c2) {
            if (c2 != '\n') {
                this.captionStringBuilder.append(c2);
                return;
            }
            this.rolledUpCaptions.add(buildSpannableString());
            this.captionStringBuilder.clear();
            if (this.italicsStartPosition != -1) {
                this.italicsStartPosition = 0;
            }
            if (this.underlineStartPosition != -1) {
                this.underlineStartPosition = 0;
            }
            if (this.foregroundColorStartPosition != -1) {
                this.foregroundColorStartPosition = 0;
            }
            if (this.backgroundColorStartPosition != -1) {
                this.backgroundColorStartPosition = 0;
            }
            while (true) {
                if ((!this.rowLock || this.rolledUpCaptions.size() < this.rowCount) && this.rolledUpCaptions.size() < 15) {
                    return;
                } else {
                    this.rolledUpCaptions.remove(0);
                }
            }
        }

        public void backspace() {
            int length = this.captionStringBuilder.length();
            if (length > 0) {
                this.captionStringBuilder.delete(length - 1, length);
            }
        }

        public Cea708Cue build() {
            Layout.Alignment alignment;
            float f2;
            float f3;
            if (isEmpty()) {
                return null;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i2 = 0; i2 < this.rolledUpCaptions.size(); i2++) {
                spannableStringBuilder.append((CharSequence) this.rolledUpCaptions.get(i2));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) buildSpannableString());
            int i3 = this.justification;
            if (i3 == 0) {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else if (i3 == 1) {
                alignment = Layout.Alignment.ALIGN_OPPOSITE;
            } else if (i3 != 2) {
                if (i3 != 3) {
                    throw new IllegalArgumentException("Unexpected justification value: " + this.justification);
                }
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else {
                alignment = Layout.Alignment.ALIGN_CENTER;
            }
            Layout.Alignment alignment2 = alignment;
            if (this.relativePositioning) {
                f2 = this.horizontalAnchor / 99.0f;
                f3 = this.verticalAnchor / 99.0f;
            } else {
                f2 = this.horizontalAnchor / 209.0f;
                f3 = this.verticalAnchor / 74.0f;
            }
            float f4 = (f2 * 0.9f) + 0.05f;
            float f5 = (f3 * 0.9f) + 0.05f;
            int i4 = this.anchorId;
            int i5 = i4 % 3 == 0 ? 0 : i4 % 3 == 1 ? 1 : 2;
            int i6 = this.anchorId;
            return new Cea708Cue(spannableStringBuilder, alignment2, f5, 0, i5, f4, i6 / 3 == 0 ? 0 : i6 / 3 == 1 ? 1 : 2, Float.MIN_VALUE, this.windowFillColor != COLOR_SOLID_BLACK, this.windowFillColor, this.priority);
        }

        public SpannableString buildSpannableString() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.captionStringBuilder);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.italicsStartPosition != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.italicsStartPosition, length, 33);
                }
                if (this.underlineStartPosition != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.underlineStartPosition, length, 33);
                }
                if (this.foregroundColorStartPosition != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.foregroundColor), this.foregroundColorStartPosition, length, 33);
                }
                if (this.backgroundColorStartPosition != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.backgroundColor), this.backgroundColorStartPosition, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        public void clear() {
            this.rolledUpCaptions.clear();
            this.captionStringBuilder.clear();
            this.italicsStartPosition = -1;
            this.underlineStartPosition = -1;
            this.foregroundColorStartPosition = -1;
            this.backgroundColorStartPosition = -1;
            this.row = 0;
        }

        public void defineWindow(boolean z, boolean z2, boolean z3, int i2, boolean z4, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            this.defined = true;
            this.visible = z;
            this.rowLock = z2;
            this.priority = i2;
            this.relativePositioning = z4;
            this.verticalAnchor = i3;
            this.horizontalAnchor = i4;
            this.anchorId = i7;
            int i10 = i5 + 1;
            if (this.rowCount != i10) {
                this.rowCount = i10;
                while (true) {
                    if ((!z2 || this.rolledUpCaptions.size() < this.rowCount) && this.rolledUpCaptions.size() < 15) {
                        break;
                    } else {
                        this.rolledUpCaptions.remove(0);
                    }
                }
            }
            if (i8 != 0 && this.windowStyleId != i8) {
                this.windowStyleId = i8;
                int i11 = i8 - 1;
                setWindowAttributes(WINDOW_STYLE_FILL[i11], COLOR_TRANSPARENT, WINDOW_STYLE_WORD_WRAP[i11], 0, WINDOW_STYLE_PRINT_DIRECTION[i11], WINDOW_STYLE_SCROLL_DIRECTION[i11], WINDOW_STYLE_JUSTIFICATION[i11]);
            }
            if (i9 == 0 || this.penStyleId == i9) {
                return;
            }
            this.penStyleId = i9;
            int i12 = i9 - 1;
            setPenAttributes(0, 1, 1, false, false, PEN_STYLE_EDGE_TYPE[i12], PEN_STYLE_FONT_STYLE[i12]);
            setPenColor(COLOR_SOLID_WHITE, PEN_STYLE_BACKGROUND[i12], COLOR_SOLID_BLACK);
        }

        public boolean isDefined() {
            return this.defined;
        }

        public boolean isEmpty() {
            return !isDefined() || (this.rolledUpCaptions.isEmpty() && this.captionStringBuilder.length() == 0);
        }

        public boolean isVisible() {
            return this.visible;
        }

        public void reset() {
            clear();
            this.defined = false;
            this.visible = false;
            this.priority = 4;
            this.relativePositioning = false;
            this.verticalAnchor = 0;
            this.horizontalAnchor = 0;
            this.anchorId = 0;
            this.rowCount = 15;
            this.rowLock = true;
            this.justification = 0;
            this.windowStyleId = 0;
            this.penStyleId = 0;
            int i2 = COLOR_SOLID_BLACK;
            this.windowFillColor = i2;
            this.foregroundColor = COLOR_SOLID_WHITE;
            this.backgroundColor = i2;
        }

        public void setPenAttributes(int i2, int i3, int i4, boolean z, boolean z2, int i5, int i6) {
            if (this.italicsStartPosition != -1) {
                if (!z) {
                    this.captionStringBuilder.setSpan(new StyleSpan(2), this.italicsStartPosition, this.captionStringBuilder.length(), 33);
                    this.italicsStartPosition = -1;
                }
            } else if (z) {
                this.italicsStartPosition = this.captionStringBuilder.length();
            }
            if (this.underlineStartPosition == -1) {
                if (z2) {
                    this.underlineStartPosition = this.captionStringBuilder.length();
                }
            } else {
                if (z2) {
                    return;
                }
                this.captionStringBuilder.setSpan(new UnderlineSpan(), this.underlineStartPosition, this.captionStringBuilder.length(), 33);
                this.underlineStartPosition = -1;
            }
        }

        public void setPenColor(int i2, int i3, int i4) {
            int i5;
            int i6;
            if (this.foregroundColorStartPosition != -1 && (i6 = this.foregroundColor) != i2) {
                this.captionStringBuilder.setSpan(new ForegroundColorSpan(i6), this.foregroundColorStartPosition, this.captionStringBuilder.length(), 33);
            }
            if (i2 != COLOR_SOLID_WHITE) {
                this.foregroundColorStartPosition = this.captionStringBuilder.length();
                this.foregroundColor = i2;
            }
            if (this.backgroundColorStartPosition != -1 && (i5 = this.backgroundColor) != i3) {
                this.captionStringBuilder.setSpan(new BackgroundColorSpan(i5), this.backgroundColorStartPosition, this.captionStringBuilder.length(), 33);
            }
            if (i3 != COLOR_SOLID_BLACK) {
                this.backgroundColorStartPosition = this.captionStringBuilder.length();
                this.backgroundColor = i3;
            }
        }

        public void setPenLocation(int i2, int i3) {
            if (this.row != i2) {
                append('\n');
            }
            this.row = i2;
        }

        public void setVisibility(boolean z) {
            this.visible = z;
        }

        public void setWindowAttributes(int i2, int i3, boolean z, int i4, int i5, int i6, int i7) {
            this.windowFillColor = i2;
            this.justification = i7;
        }
    }

    private static final class DtvCcPacket {
        int currentIndex = 0;
        public final byte[] packetData;
        public final int packetSize;
        public final int sequenceNumber;

        public DtvCcPacket(int i2, int i3) {
            this.sequenceNumber = i2;
            this.packetSize = i3;
            this.packetData = new byte[(i3 * 2) - 1];
        }
    }

    public Cea708Decoder(int i2, List<byte[]> list) {
        this.selectedServiceNumber = i2 == -1 ? 1 : i2;
        this.cueBuilders = new CueBuilder[8];
        for (int i3 = 0; i3 < 8; i3++) {
            this.cueBuilders[i3] = new CueBuilder();
        }
        this.currentCueBuilder = this.cueBuilders[0];
        resetCueBuilders();
    }

    private void finalizeCurrentPacket() {
        if (this.currentDtvCcPacket == null) {
            return;
        }
        processCurrentPacket();
        this.currentDtvCcPacket = null;
    }

    private List<Cue> getDisplayCues() {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < 8; i2++) {
            if (!this.cueBuilders[i2].isEmpty() && this.cueBuilders[i2].isVisible()) {
                arrayList.add(this.cueBuilders[i2].build());
            }
        }
        Collections.sort(arrayList);
        return Collections.unmodifiableList(arrayList);
    }

    private void handleC0Command(int i2) {
        ParsableBitArray parsableBitArray;
        if (i2 != 0) {
            if (i2 == 3) {
                this.cues = getDisplayCues();
            }
            int i3 = 8;
            if (i2 == 8) {
                this.currentCueBuilder.backspace();
                return;
            }
            switch (i2) {
                case 12:
                    resetCueBuilders();
                    break;
                case 13:
                    this.currentCueBuilder.append('\n');
                    break;
                case 14:
                    break;
                default:
                    if (i2 >= 17 && i2 <= 23) {
                        Log.w(TAG, "Currently unsupported COMMAND_EXT1 Command: " + i2);
                        parsableBitArray = this.serviceBlockPacket;
                    } else if (i2 < 24 || i2 > 31) {
                        Log.w(TAG, "Invalid C0 command: " + i2);
                    } else {
                        Log.w(TAG, "Currently unsupported COMMAND_P16 Command: " + i2);
                        parsableBitArray = this.serviceBlockPacket;
                        i3 = 16;
                    }
                    parsableBitArray.skipBits(i3);
                    break;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void handleC1Command(int i2) {
        CueBuilder cueBuilder;
        ParsableBitArray parsableBitArray;
        int i3 = 16;
        int i4 = 1;
        switch (i2) {
            case COMMAND_CW0 /* 128 */:
            case 129:
            case 130:
            case COMMAND_CW3 /* 131 */:
            case COMMAND_CW4 /* 132 */:
            case COMMAND_CW5 /* 133 */:
            case 134:
            case 135:
                int i5 = i2 - 128;
                if (this.currentWindow != i5) {
                    this.currentWindow = i5;
                    cueBuilder = this.cueBuilders[i5];
                    this.currentCueBuilder = cueBuilder;
                }
                break;
            case COMMAND_CLW /* 136 */:
                while (i4 <= 8) {
                    if (this.serviceBlockPacket.readBit()) {
                        this.cueBuilders[8 - i4].clear();
                    }
                    i4++;
                }
                break;
            case COMMAND_DSW /* 137 */:
                for (int i6 = 1; i6 <= 8; i6++) {
                    if (this.serviceBlockPacket.readBit()) {
                        this.cueBuilders[8 - i6].setVisibility(true);
                    }
                }
                break;
            case 138:
                while (i4 <= 8) {
                    if (this.serviceBlockPacket.readBit()) {
                        this.cueBuilders[8 - i4].setVisibility(false);
                    }
                    i4++;
                }
                break;
            case COMMAND_TGW /* 139 */:
                for (int i7 = 1; i7 <= 8; i7++) {
                    if (this.serviceBlockPacket.readBit()) {
                        this.cueBuilders[8 - i7].setVisibility(!r0.isVisible());
                    }
                }
                break;
            case COMMAND_DLW /* 140 */:
                while (i4 <= 8) {
                    if (this.serviceBlockPacket.readBit()) {
                        this.cueBuilders[8 - i4].reset();
                    }
                    i4++;
                }
                break;
            case COMMAND_DLY /* 141 */:
                this.serviceBlockPacket.skipBits(8);
                break;
            case COMMAND_DLC /* 142 */:
                break;
            case COMMAND_RST /* 143 */:
                resetCueBuilders();
                break;
            case COMMAND_SPA /* 144 */:
                if (this.currentCueBuilder.isDefined()) {
                    handleSetPenAttributes();
                }
                parsableBitArray = this.serviceBlockPacket;
                parsableBitArray.skipBits(i3);
                break;
            case COMMAND_SPC /* 145 */:
                if (this.currentCueBuilder.isDefined()) {
                    handleSetPenColor();
                } else {
                    parsableBitArray = this.serviceBlockPacket;
                    i3 = 24;
                    parsableBitArray.skipBits(i3);
                }
                break;
            case COMMAND_SPL /* 146 */:
                if (this.currentCueBuilder.isDefined()) {
                    handleSetPenLocation();
                }
                parsableBitArray = this.serviceBlockPacket;
                parsableBitArray.skipBits(i3);
                break;
            case 147:
            case 148:
            case 149:
            case 150:
            default:
                Log.w(TAG, "Invalid C1 command: " + i2);
                break;
            case COMMAND_SWA /* 151 */:
                if (this.currentCueBuilder.isDefined()) {
                    handleSetWindowAttributes();
                } else {
                    parsableBitArray = this.serviceBlockPacket;
                    i3 = 32;
                    parsableBitArray.skipBits(i3);
                }
                break;
            case COMMAND_DF0 /* 152 */:
            case COMMAND_DF1 /* 153 */:
            case COMMAND_DF2 /* 154 */:
            case COMMAND_DF3 /* 155 */:
            case COMMAND_DF4 /* 156 */:
            case COMMAND_DF5 /* 157 */:
            case COMMAND_DF6 /* 158 */:
            case 159:
                int i8 = i2 - 152;
                handleDefineWindow(i8);
                if (this.currentWindow != i8) {
                    this.currentWindow = i8;
                    cueBuilder = this.cueBuilders[i8];
                    this.currentCueBuilder = cueBuilder;
                }
                break;
        }
    }

    private void handleC2Command(int i2) {
        ParsableBitArray parsableBitArray;
        int i3;
        if (i2 <= 7) {
            return;
        }
        if (i2 <= 15) {
            parsableBitArray = this.serviceBlockPacket;
            i3 = 8;
        } else if (i2 <= 23) {
            parsableBitArray = this.serviceBlockPacket;
            i3 = 16;
        } else {
            if (i2 > 31) {
                return;
            }
            parsableBitArray = this.serviceBlockPacket;
            i3 = 24;
        }
        parsableBitArray.skipBits(i3);
    }

    private void handleC3Command(int i2) {
        ParsableBitArray parsableBitArray;
        int i3;
        if (i2 <= 135) {
            parsableBitArray = this.serviceBlockPacket;
            i3 = 32;
        } else {
            if (i2 > COMMAND_RST) {
                if (i2 <= 159) {
                    this.serviceBlockPacket.skipBits(2);
                    this.serviceBlockPacket.skipBits(this.serviceBlockPacket.readBits(6) * 8);
                    return;
                }
                return;
            }
            parsableBitArray = this.serviceBlockPacket;
            i3 = 40;
        }
        parsableBitArray.skipBits(i3);
    }

    private void handleDefineWindow(int i2) {
        CueBuilder cueBuilder = this.cueBuilders[i2];
        this.serviceBlockPacket.skipBits(2);
        boolean bit = this.serviceBlockPacket.readBit();
        boolean bit2 = this.serviceBlockPacket.readBit();
        boolean bit3 = this.serviceBlockPacket.readBit();
        int bits = this.serviceBlockPacket.readBits(3);
        boolean bit4 = this.serviceBlockPacket.readBit();
        int bits2 = this.serviceBlockPacket.readBits(7);
        int bits3 = this.serviceBlockPacket.readBits(8);
        int bits4 = this.serviceBlockPacket.readBits(4);
        int bits5 = this.serviceBlockPacket.readBits(4);
        this.serviceBlockPacket.skipBits(2);
        int bits6 = this.serviceBlockPacket.readBits(6);
        this.serviceBlockPacket.skipBits(2);
        cueBuilder.defineWindow(bit, bit2, bit3, bits, bit4, bits2, bits3, bits5, bits6, bits4, this.serviceBlockPacket.readBits(3), this.serviceBlockPacket.readBits(3));
    }

    private void handleG0Character(int i2) {
        if (i2 == 127) {
            this.currentCueBuilder.append((char) 9835);
        } else {
            this.currentCueBuilder.append((char) (i2 & 255));
        }
    }

    private void handleG1Character(int i2) {
        this.currentCueBuilder.append((char) (i2 & 255));
    }

    private void handleG2Character(int i2) {
        CueBuilder cueBuilder;
        char c2 = ' ';
        if (i2 == 32) {
            cueBuilder = this.currentCueBuilder;
        } else if (i2 == 33) {
            cueBuilder = this.currentCueBuilder;
            c2 = 160;
        } else if (i2 == 37) {
            cueBuilder = this.currentCueBuilder;
            c2 = 8230;
        } else if (i2 == 42) {
            cueBuilder = this.currentCueBuilder;
            c2 = 352;
        } else if (i2 == 44) {
            cueBuilder = this.currentCueBuilder;
            c2 = 338;
        } else if (i2 == 63) {
            cueBuilder = this.currentCueBuilder;
            c2 = 376;
        } else if (i2 == 57) {
            cueBuilder = this.currentCueBuilder;
            c2 = 8482;
        } else if (i2 == 58) {
            cueBuilder = this.currentCueBuilder;
            c2 = 353;
        } else if (i2 == 60) {
            cueBuilder = this.currentCueBuilder;
            c2 = 339;
        } else if (i2 != 61) {
            switch (i2) {
                case 48:
                    cueBuilder = this.currentCueBuilder;
                    c2 = 9608;
                    break;
                case 49:
                    cueBuilder = this.currentCueBuilder;
                    c2 = 8216;
                    break;
                case 50:
                    cueBuilder = this.currentCueBuilder;
                    c2 = 8217;
                    break;
                case 51:
                    cueBuilder = this.currentCueBuilder;
                    c2 = 8220;
                    break;
                case 52:
                    cueBuilder = this.currentCueBuilder;
                    c2 = 8221;
                    break;
                case 53:
                    cueBuilder = this.currentCueBuilder;
                    c2 = 8226;
                    break;
                default:
                    switch (i2) {
                        case 118:
                            cueBuilder = this.currentCueBuilder;
                            c2 = 8539;
                            break;
                        case 119:
                            cueBuilder = this.currentCueBuilder;
                            c2 = 8540;
                            break;
                        case 120:
                            cueBuilder = this.currentCueBuilder;
                            c2 = 8541;
                            break;
                        case CHARACTER_SEVEN_EIGHTHS /* 121 */:
                            cueBuilder = this.currentCueBuilder;
                            c2 = 8542;
                            break;
                        case CHARACTER_VERTICAL_BORDER /* 122 */:
                            cueBuilder = this.currentCueBuilder;
                            c2 = 9474;
                            break;
                        case CHARACTER_UPPER_RIGHT_BORDER /* 123 */:
                            cueBuilder = this.currentCueBuilder;
                            c2 = 9488;
                            break;
                        case CHARACTER_LOWER_LEFT_BORDER /* 124 */:
                            cueBuilder = this.currentCueBuilder;
                            c2 = 9492;
                            break;
                        case CHARACTER_HORIZONTAL_BORDER /* 125 */:
                            cueBuilder = this.currentCueBuilder;
                            c2 = 9472;
                            break;
                        case CHARACTER_LOWER_RIGHT_BORDER /* 126 */:
                            cueBuilder = this.currentCueBuilder;
                            c2 = 9496;
                            break;
                        case 127:
                            cueBuilder = this.currentCueBuilder;
                            c2 = 9484;
                            break;
                        default:
                            Log.w(TAG, "Invalid G2 character: " + i2);
                            return;
                    }
                    break;
            }
        } else {
            cueBuilder = this.currentCueBuilder;
            c2 = 8480;
        }
        cueBuilder.append(c2);
    }

    private void handleG3Character(int i2) {
        CueBuilder cueBuilder;
        char c2;
        if (i2 == 160) {
            cueBuilder = this.currentCueBuilder;
            c2 = 13252;
        } else {
            Log.w(TAG, "Invalid G3 character: " + i2);
            cueBuilder = this.currentCueBuilder;
            c2 = '_';
        }
        cueBuilder.append(c2);
    }

    private void handleSetPenAttributes() {
        this.currentCueBuilder.setPenAttributes(this.serviceBlockPacket.readBits(4), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBit(), this.serviceBlockPacket.readBit(), this.serviceBlockPacket.readBits(3), this.serviceBlockPacket.readBits(3));
    }

    private void handleSetPenColor() {
        int argbColorFromCeaColor = CueBuilder.getArgbColorFromCeaColor(this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2));
        int argbColorFromCeaColor2 = CueBuilder.getArgbColorFromCeaColor(this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2));
        this.serviceBlockPacket.skipBits(2);
        this.currentCueBuilder.setPenColor(argbColorFromCeaColor, argbColorFromCeaColor2, CueBuilder.getArgbColorFromCeaColor(this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2)));
    }

    private void handleSetPenLocation() {
        this.serviceBlockPacket.skipBits(4);
        int bits = this.serviceBlockPacket.readBits(4);
        this.serviceBlockPacket.skipBits(2);
        this.currentCueBuilder.setPenLocation(bits, this.serviceBlockPacket.readBits(6));
    }

    private void handleSetWindowAttributes() {
        int argbColorFromCeaColor = CueBuilder.getArgbColorFromCeaColor(this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2));
        int bits = this.serviceBlockPacket.readBits(2);
        int argbColorFromCeaColor2 = CueBuilder.getArgbColorFromCeaColor(this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2));
        if (this.serviceBlockPacket.readBit()) {
            bits |= 4;
        }
        boolean bit = this.serviceBlockPacket.readBit();
        int bits2 = this.serviceBlockPacket.readBits(2);
        int bits3 = this.serviceBlockPacket.readBits(2);
        int bits4 = this.serviceBlockPacket.readBits(2);
        this.serviceBlockPacket.skipBits(8);
        this.currentCueBuilder.setWindowAttributes(argbColorFromCeaColor, argbColorFromCeaColor2, bit, bits, bits2, bits3, bits4);
    }

    private void processCurrentPacket() {
        StringBuilder sb;
        String str;
        DtvCcPacket dtvCcPacket = this.currentDtvCcPacket;
        int i2 = dtvCcPacket.currentIndex;
        if (i2 != (dtvCcPacket.packetSize * 2) - 1) {
            Log.w(TAG, "DtvCcPacket ended prematurely; size is " + ((this.currentDtvCcPacket.packetSize * 2) - 1) + ", but current index is " + this.currentDtvCcPacket.currentIndex + " (sequence number " + this.currentDtvCcPacket.sequenceNumber + "); ignoring packet");
            return;
        }
        this.serviceBlockPacket.reset(dtvCcPacket.packetData, i2);
        int bits = this.serviceBlockPacket.readBits(3);
        int bits2 = this.serviceBlockPacket.readBits(5);
        if (bits == 7) {
            this.serviceBlockPacket.skipBits(2);
            bits = this.serviceBlockPacket.readBits(6);
            if (bits < 7) {
                Log.w(TAG, "Invalid extended service number: " + bits);
            }
        }
        if (bits2 == 0) {
            if (bits != 0) {
                Log.w(TAG, "serviceNumber is non-zero (" + bits + ") when blockSize is 0");
                return;
            }
            return;
        }
        if (bits != this.selectedServiceNumber) {
            return;
        }
        boolean z = false;
        while (this.serviceBlockPacket.bitsLeft() > 0) {
            int bits3 = this.serviceBlockPacket.readBits(8);
            if (bits3 == 16) {
                bits3 = this.serviceBlockPacket.readBits(8);
                if (bits3 <= 31) {
                    handleC2Command(bits3);
                } else {
                    if (bits3 <= 127) {
                        handleG2Character(bits3);
                    } else if (bits3 <= 159) {
                        handleC3Command(bits3);
                    } else if (bits3 <= 255) {
                        handleG3Character(bits3);
                    } else {
                        sb = new StringBuilder();
                        str = "Invalid extended command: ";
                        sb.append(str);
                        sb.append(bits3);
                        Log.w(TAG, sb.toString());
                    }
                    z = true;
                }
            } else if (bits3 <= 31) {
                handleC0Command(bits3);
            } else {
                if (bits3 <= 127) {
                    handleG0Character(bits3);
                } else if (bits3 <= 159) {
                    handleC1Command(bits3);
                } else if (bits3 <= 255) {
                    handleG1Character(bits3);
                } else {
                    sb = new StringBuilder();
                    str = "Invalid base command: ";
                    sb.append(str);
                    sb.append(bits3);
                    Log.w(TAG, sb.toString());
                }
                z = true;
            }
        }
        if (z) {
            this.cues = getDisplayCues();
        }
    }

    private void resetCueBuilders() {
        for (int i2 = 0; i2 < 8; i2++) {
            this.cueBuilders[i2].reset();
        }
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder
    protected Subtitle createSubtitle() {
        List<Cue> list = this.cues;
        this.lastCues = list;
        return new CeaSubtitle(list);
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder
    protected void decode(SubtitleInputBuffer subtitleInputBuffer) {
        this.ccData.reset(subtitleInputBuffer.data.array(), subtitleInputBuffer.data.limit());
        while (this.ccData.bytesLeft() >= 3) {
            int unsignedByte = this.ccData.readUnsignedByte() & 7;
            int i2 = unsignedByte & 3;
            boolean z = (unsignedByte & 4) == 4;
            byte unsignedByte2 = (byte) this.ccData.readUnsignedByte();
            byte unsignedByte3 = (byte) this.ccData.readUnsignedByte();
            if (i2 == 2 || i2 == 3) {
                if (z) {
                    if (i2 == 3) {
                        finalizeCurrentPacket();
                        int i3 = (unsignedByte2 & 192) >> 6;
                        int i4 = unsignedByte2 & 63;
                        if (i4 == 0) {
                            i4 = 64;
                        }
                        this.currentDtvCcPacket = new DtvCcPacket(i3, i4);
                        DtvCcPacket dtvCcPacket = this.currentDtvCcPacket;
                        byte[] bArr = dtvCcPacket.packetData;
                        int i5 = dtvCcPacket.currentIndex;
                        dtvCcPacket.currentIndex = i5 + 1;
                        bArr[i5] = unsignedByte3;
                    } else {
                        Assertions.checkArgument(i2 == 2);
                        DtvCcPacket dtvCcPacket2 = this.currentDtvCcPacket;
                        if (dtvCcPacket2 == null) {
                            Log.e(TAG, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = dtvCcPacket2.packetData;
                            int i6 = dtvCcPacket2.currentIndex;
                            dtvCcPacket2.currentIndex = i6 + 1;
                            bArr2[i6] = unsignedByte2;
                            int i7 = dtvCcPacket2.currentIndex;
                            dtvCcPacket2.currentIndex = i7 + 1;
                            bArr2[i7] = unsignedByte3;
                        }
                    }
                    DtvCcPacket dtvCcPacket3 = this.currentDtvCcPacket;
                    if (dtvCcPacket3.currentIndex == (dtvCcPacket3.packetSize * 2) - 1) {
                        finalizeCurrentPacket();
                    }
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder, com.google.android.exoplayer2.decoder.Decoder
    public /* bridge */ /* synthetic */ SubtitleInputBuffer dequeueInputBuffer() {
        return super.dequeueInputBuffer();
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder, com.google.android.exoplayer2.decoder.Decoder
    public /* bridge */ /* synthetic */ SubtitleOutputBuffer dequeueOutputBuffer() {
        return super.dequeueOutputBuffer();
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder, com.google.android.exoplayer2.decoder.Decoder
    public void flush() {
        super.flush();
        this.cues = null;
        this.lastCues = null;
        this.currentWindow = 0;
        this.currentCueBuilder = this.cueBuilders[this.currentWindow];
        resetCueBuilders();
        this.currentDtvCcPacket = null;
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder, com.google.android.exoplayer2.decoder.Decoder
    public String getName() {
        return TAG;
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder
    protected boolean isNewSubtitleDataAvailable() {
        return this.cues != this.lastCues;
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder
    public /* bridge */ /* synthetic */ void queueInputBuffer(SubtitleInputBuffer subtitleInputBuffer) {
        super.queueInputBuffer(subtitleInputBuffer);
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder, com.google.android.exoplayer2.decoder.Decoder
    public /* bridge */ /* synthetic */ void release() {
        super.release();
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder, com.google.android.exoplayer2.text.SubtitleDecoder
    public /* bridge */ /* synthetic */ void setPositionUs(long j2) {
        super.setPositionUs(j2);
    }
}
