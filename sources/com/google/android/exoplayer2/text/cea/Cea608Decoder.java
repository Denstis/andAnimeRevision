package com.google.android.exoplayer2.text.cea;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.text.SubtitleInputBuffer;
import com.google.android.exoplayer2.text.SubtitleOutputBuffer;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.material.R;
import com.google.firebase.storage.internal.ExponentialBackoffSender;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Cea608Decoder extends CeaDecoder {
    private static final int CC_FIELD_FLAG = 1;
    private static final byte CC_IMPLICIT_DATA_HEADER = -4;
    private static final int CC_MODE_PAINT_ON = 3;
    private static final int CC_MODE_POP_ON = 2;
    private static final int CC_MODE_ROLL_UP = 1;
    private static final int CC_MODE_UNKNOWN = 0;
    private static final int CC_TYPE_FLAG = 2;
    private static final int CC_VALID_608_ID = 4;
    private static final int CC_VALID_FLAG = 4;
    private static final byte CTRL_BACKSPACE = 33;
    private static final byte CTRL_CARRIAGE_RETURN = 45;
    private static final byte CTRL_DELETE_TO_END_OF_ROW = 36;
    private static final byte CTRL_END_OF_CAPTION = 47;
    private static final byte CTRL_ERASE_DISPLAYED_MEMORY = 44;
    private static final byte CTRL_ERASE_NON_DISPLAYED_MEMORY = 46;
    private static final byte CTRL_RESUME_CAPTION_LOADING = 32;
    private static final byte CTRL_RESUME_DIRECT_CAPTIONING = 41;
    private static final byte CTRL_ROLL_UP_CAPTIONS_2_ROWS = 37;
    private static final byte CTRL_ROLL_UP_CAPTIONS_3_ROWS = 38;
    private static final byte CTRL_ROLL_UP_CAPTIONS_4_ROWS = 39;
    private static final int DEFAULT_CAPTIONS_ROW_COUNT = 4;
    private static final int NTSC_CC_FIELD_1 = 0;
    private static final int NTSC_CC_FIELD_2 = 1;
    private static final int STYLE_ITALICS = 7;
    private static final int STYLE_UNCHANGED = 8;
    private int captionMode;
    private int captionRowCount;
    private List<Cue> cues;
    private List<Cue> lastCues;
    private final int packetLength;
    private byte repeatableControlCc1;
    private byte repeatableControlCc2;
    private boolean repeatableControlSet;
    private final int selectedField;
    private static final int[] ROW_INDICES = {11, 1, 3, 12, 14, 5, 7, 9};
    private static final int[] COLUMN_INDICES = {0, 4, 8, 12, 16, 20, 24, 28};
    private static final int[] STYLE_COLORS = {-1, -16711936, -16776961, -16711681, -65536, -256, -65281};
    private static final int[] BASIC_CHARACTER_SET = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, ExponentialBackoffSender.RND_MAX, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, R.styleable.AppCompatTheme_viewInflaterClass, R.styleable.AppCompatTheme_windowActionBar, R.styleable.AppCompatTheme_windowActionBarOverlay, R.styleable.AppCompatTheme_windowActionModeOverlay, R.styleable.AppCompatTheme_windowFixedHeightMajor, R.styleable.AppCompatTheme_windowFixedHeightMinor, R.styleable.AppCompatTheme_windowFixedWidthMajor, R.styleable.AppCompatTheme_windowFixedWidthMinor, R.styleable.AppCompatTheme_windowMinWidthMajor, R.styleable.AppCompatTheme_windowMinWidthMinor, R.styleable.AppCompatTheme_windowNoTitle, 121, 122, 231, 247, 209, 241, 9632};
    private static final int[] SPECIAL_CHARACTER_SET = {174, 176, PsExtractor.PRIVATE_STREAM_1, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};
    private static final int[] SPECIAL_ES_FR_CHARACTER_SET = {193, 201, 211, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, PsExtractor.AUDIO_STREAM, 194, 199, 200, 202, 203, 235, 206, 207, 239, 212, 217, 249, 219, 171, 187};
    private static final int[] SPECIAL_PT_DE_CHARACTER_SET = {195, 227, 205, 204, 236, 210, 242, 213, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};
    private final ParsableByteArray ccData = new ParsableByteArray();
    private final ArrayList<CueBuilder> cueBuilders = new ArrayList<>();
    private CueBuilder currentCueBuilder = new CueBuilder(0, 4);

    private static class CueBuilder {
        private static final int BASE_ROW = 15;
        private static final int SCREEN_CHARWIDTH = 32;
        private int captionMode;
        private int captionRowCount;
        private int indent;
        private int row;
        private int tabOffset;
        private final List<CueStyle> cueStyles = new ArrayList();
        private final List<SpannableString> rolledUpCaptions = new ArrayList();
        private final StringBuilder captionStringBuilder = new StringBuilder();

        private static class CueStyle {
            public int start;
            public final int style;
            public final boolean underline;

            public CueStyle(int i2, boolean z, int i3) {
                this.style = i2;
                this.underline = z;
                this.start = i3;
            }
        }

        public CueBuilder(int i2, int i3) {
            reset(i2);
            setCaptionRowCount(i3);
        }

        private static void setColorSpan(SpannableStringBuilder spannableStringBuilder, int i2, int i3, int i4) {
            if (i4 == -1) {
                return;
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i4), i2, i3, 33);
        }

        private static void setItalicSpan(SpannableStringBuilder spannableStringBuilder, int i2, int i3) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i2, i3, 33);
        }

        private static void setUnderlineSpan(SpannableStringBuilder spannableStringBuilder, int i2, int i3) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i2, i3, 33);
        }

        public void append(char c2) {
            this.captionStringBuilder.append(c2);
        }

        public void backspace() {
            int length = this.captionStringBuilder.length();
            if (length > 0) {
                this.captionStringBuilder.delete(length - 1, length);
                for (int size = this.cueStyles.size() - 1; size >= 0; size--) {
                    CueStyle cueStyle = this.cueStyles.get(size);
                    int i2 = cueStyle.start;
                    if (i2 != length) {
                        return;
                    }
                    cueStyle.start = i2 - 1;
                }
            }
        }

        public Cue build() {
            float f2;
            int i2;
            int i3;
            int i4;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i5 = 0; i5 < this.rolledUpCaptions.size(); i5++) {
                spannableStringBuilder.append((CharSequence) this.rolledUpCaptions.get(i5));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) buildSpannableString());
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int i6 = this.indent + this.tabOffset;
            int length = (32 - i6) - spannableStringBuilder.length();
            int i7 = i6 - length;
            if (this.captionMode == 2 && (Math.abs(i7) < 3 || length < 0)) {
                f2 = 0.5f;
                i2 = 1;
            } else if (this.captionMode != 2 || i7 <= 0) {
                f2 = ((i6 / 32.0f) * 0.8f) + 0.1f;
                i2 = 0;
            } else {
                f2 = (((32 - length) / 32.0f) * 0.8f) + 0.1f;
                i2 = 2;
            }
            if (this.captionMode == 1 || (i3 = this.row) > 7) {
                i3 = (this.row - 15) - 2;
                i4 = 2;
            } else {
                i4 = 0;
            }
            return new Cue(spannableStringBuilder, Layout.Alignment.ALIGN_NORMAL, i3, 1, i4, f2, i2, Float.MIN_VALUE);
        }

        public SpannableString buildSpannableString() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.captionStringBuilder);
            int length = spannableStringBuilder.length();
            int i2 = 0;
            int i3 = -1;
            int i4 = -1;
            int i5 = 0;
            int i6 = -1;
            int i7 = -1;
            boolean z = false;
            while (i2 < this.cueStyles.size()) {
                CueStyle cueStyle = this.cueStyles.get(i2);
                boolean z2 = cueStyle.underline;
                int i8 = cueStyle.style;
                if (i8 != 8) {
                    boolean z3 = i8 == 7;
                    if (i8 != 7) {
                        i7 = Cea608Decoder.STYLE_COLORS[i8];
                    }
                    z = z3;
                }
                int i9 = cueStyle.start;
                i2++;
                if (i9 != (i2 < this.cueStyles.size() ? this.cueStyles.get(i2).start : length)) {
                    if (i3 != -1 && !z2) {
                        setUnderlineSpan(spannableStringBuilder, i3, i9);
                        i3 = -1;
                    } else if (i3 == -1 && z2) {
                        i3 = i9;
                    }
                    if (i4 != -1 && !z) {
                        setItalicSpan(spannableStringBuilder, i4, i9);
                        i4 = -1;
                    } else if (i4 == -1 && z) {
                        i4 = i9;
                    }
                    if (i7 != i6) {
                        setColorSpan(spannableStringBuilder, i5, i9, i6);
                        i6 = i7;
                        i5 = i9;
                    }
                }
            }
            if (i3 != -1 && i3 != length) {
                setUnderlineSpan(spannableStringBuilder, i3, length);
            }
            if (i4 != -1 && i4 != length) {
                setItalicSpan(spannableStringBuilder, i4, length);
            }
            if (i5 != length) {
                setColorSpan(spannableStringBuilder, i5, length, i6);
            }
            return new SpannableString(spannableStringBuilder);
        }

        public int getRow() {
            return this.row;
        }

        public boolean isEmpty() {
            return this.cueStyles.isEmpty() && this.rolledUpCaptions.isEmpty() && this.captionStringBuilder.length() == 0;
        }

        public void reset(int i2) {
            this.captionMode = i2;
            this.cueStyles.clear();
            this.rolledUpCaptions.clear();
            this.captionStringBuilder.setLength(0);
            this.row = 15;
            this.indent = 0;
            this.tabOffset = 0;
        }

        public void rollUp() {
            this.rolledUpCaptions.add(buildSpannableString());
            this.captionStringBuilder.setLength(0);
            this.cueStyles.clear();
            int iMin = Math.min(this.captionRowCount, this.row);
            while (this.rolledUpCaptions.size() >= iMin) {
                this.rolledUpCaptions.remove(0);
            }
        }

        public void setCaptionRowCount(int i2) {
            this.captionRowCount = i2;
        }

        public void setIndent(int i2) {
            this.indent = i2;
        }

        public void setRow(int i2) {
            this.row = i2;
        }

        public void setStyle(int i2, boolean z) {
            this.cueStyles.add(new CueStyle(i2, z, this.captionStringBuilder.length()));
        }

        public void setTab(int i2) {
            this.tabOffset = i2;
        }

        public String toString() {
            return this.captionStringBuilder.toString();
        }
    }

    public Cea608Decoder(String str, int i2) {
        this.packetLength = MimeTypes.APPLICATION_MP4CEA608.equals(str) ? 2 : 3;
        if (i2 == 3 || i2 == 4) {
            this.selectedField = 2;
        } else {
            this.selectedField = 1;
        }
        setCaptionMode(0);
        resetCueBuilders();
    }

    private static char getChar(byte b2) {
        return (char) BASIC_CHARACTER_SET[(b2 & 127) - 32];
    }

    private List<Cue> getDisplayCues() {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < this.cueBuilders.size(); i2++) {
            Cue cueBuild = this.cueBuilders.get(i2).build();
            if (cueBuild != null) {
                arrayList.add(cueBuild);
            }
        }
        return arrayList;
    }

    private static char getExtendedEsFrChar(byte b2) {
        return (char) SPECIAL_ES_FR_CHARACTER_SET[b2 & 31];
    }

    private static char getExtendedPtDeChar(byte b2) {
        return (char) SPECIAL_PT_DE_CHARACTER_SET[b2 & 31];
    }

    private static char getSpecialChar(byte b2) {
        return (char) SPECIAL_CHARACTER_SET[b2 & 15];
    }

    private boolean handleCtrl(byte b2, byte b3) {
        boolean zIsRepeatable = isRepeatable(b2);
        if (zIsRepeatable) {
            if (this.repeatableControlSet && this.repeatableControlCc1 == b2 && this.repeatableControlCc2 == b3) {
                this.repeatableControlSet = false;
                return true;
            }
            this.repeatableControlSet = true;
            this.repeatableControlCc1 = b2;
            this.repeatableControlCc2 = b3;
        }
        if (isMidrowCtrlCode(b2, b3)) {
            handleMidrowCtrl(b3);
        } else if (isPreambleAddressCode(b2, b3)) {
            handlePreambleAddressCode(b2, b3);
        } else if (isTabCtrlCode(b2, b3)) {
            this.currentCueBuilder.setTab(b3 - 32);
        } else if (isMiscCode(b2, b3)) {
            handleMiscCode(b3);
        }
        return zIsRepeatable;
    }

    private void handleMidrowCtrl(byte b2) {
        this.currentCueBuilder.append(' ');
        this.currentCueBuilder.setStyle((b2 >> 1) & 7, (b2 & 1) == 1);
    }

    private void handleMiscCode(byte b2) {
        if (b2 == 32) {
            setCaptionMode(2);
            return;
        }
        if (b2 == 41) {
            setCaptionMode(3);
            return;
        }
        switch (b2) {
            case 37:
                setCaptionMode(1);
                setCaptionRowCount(2);
                break;
            case 38:
                setCaptionMode(1);
                setCaptionRowCount(3);
                break;
            case 39:
                setCaptionMode(1);
                setCaptionRowCount(4);
                break;
            default:
                int i2 = this.captionMode;
                if (i2 != 0) {
                    if (b2 == 33) {
                        this.currentCueBuilder.backspace();
                    } else if (b2 != 36) {
                        switch (b2) {
                            case 44:
                                this.cues = Collections.emptyList();
                                int i3 = this.captionMode;
                                if (i3 != 1 && i3 != 3) {
                                }
                                break;
                            case 45:
                                if (i2 == 1 && !this.currentCueBuilder.isEmpty()) {
                                    this.currentCueBuilder.rollUp();
                                    break;
                                }
                                break;
                            case 47:
                                this.cues = getDisplayCues();
                                break;
                        }
                        resetCueBuilders();
                    }
                    break;
                }
                break;
        }
    }

    private void handlePreambleAddressCode(byte b2, byte b3) {
        int i2 = ROW_INDICES[b2 & 7];
        if ((b3 & CTRL_RESUME_CAPTION_LOADING) != 0) {
            i2++;
        }
        if (i2 != this.currentCueBuilder.getRow()) {
            if (this.captionMode != 1 && !this.currentCueBuilder.isEmpty()) {
                this.currentCueBuilder = new CueBuilder(this.captionMode, this.captionRowCount);
                this.cueBuilders.add(this.currentCueBuilder);
            }
            this.currentCueBuilder.setRow(i2);
        }
        boolean z = (b3 & 16) == 16;
        boolean z2 = (b3 & 1) == 1;
        int i3 = (b3 >> 1) & 7;
        this.currentCueBuilder.setStyle(z ? 8 : i3, z2);
        if (z) {
            this.currentCueBuilder.setIndent(COLUMN_INDICES[i3]);
        }
    }

    private static boolean isMidrowCtrlCode(byte b2, byte b3) {
        return (b2 & 247) == 17 && (b3 & 240) == 32;
    }

    private static boolean isMiscCode(byte b2, byte b3) {
        return (b2 & 247) == 20 && (b3 & 240) == 32;
    }

    private static boolean isPreambleAddressCode(byte b2, byte b3) {
        return (b2 & 240) == 16 && (b3 & 192) == 64;
    }

    private static boolean isRepeatable(byte b2) {
        return (b2 & 240) == 16;
    }

    private static boolean isTabCtrlCode(byte b2, byte b3) {
        return (b2 & 247) == 23 && b3 >= 33 && b3 <= 35;
    }

    private void resetCueBuilders() {
        this.currentCueBuilder.reset(this.captionMode);
        this.cueBuilders.clear();
        this.cueBuilders.add(this.currentCueBuilder);
    }

    private void setCaptionMode(int i2) {
        int i3 = this.captionMode;
        if (i3 == i2) {
            return;
        }
        this.captionMode = i2;
        resetCueBuilders();
        if (i3 == 3 || i2 == 1 || i2 == 0) {
            this.cues = Collections.emptyList();
        }
    }

    private void setCaptionRowCount(int i2) {
        this.captionRowCount = i2;
        this.currentCueBuilder.setCaptionRowCount(i2);
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder
    protected Subtitle createSubtitle() {
        List<Cue> list = this.cues;
        this.lastCues = list;
        return new CeaSubtitle(list);
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder
    protected void decode(SubtitleInputBuffer subtitleInputBuffer) {
        CueBuilder cueBuilder;
        char extendedPtDeChar;
        this.ccData.reset(subtitleInputBuffer.data.array(), subtitleInputBuffer.data.limit());
        boolean z = false;
        boolean zHandleCtrl = false;
        while (true) {
            int iBytesLeft = this.ccData.bytesLeft();
            int i2 = this.packetLength;
            if (iBytesLeft < i2) {
                break;
            }
            byte unsignedByte = i2 == 2 ? CC_IMPLICIT_DATA_HEADER : (byte) this.ccData.readUnsignedByte();
            byte unsignedByte2 = (byte) (this.ccData.readUnsignedByte() & 127);
            byte unsignedByte3 = (byte) (this.ccData.readUnsignedByte() & 127);
            if ((unsignedByte & 6) == 4 && (this.selectedField != 1 || (unsignedByte & 1) == 0)) {
                if (this.selectedField != 2 || (unsignedByte & 1) == 1) {
                    if (unsignedByte2 != 0 || unsignedByte3 != 0) {
                        if ((unsignedByte2 & 247) == 17 && (unsignedByte3 & 240) == 48) {
                            cueBuilder = this.currentCueBuilder;
                            extendedPtDeChar = getSpecialChar(unsignedByte3);
                        } else if ((unsignedByte2 & 246) == 18 && (unsignedByte3 & 224) == 32) {
                            this.currentCueBuilder.backspace();
                            if ((unsignedByte2 & 1) == 0) {
                                cueBuilder = this.currentCueBuilder;
                                extendedPtDeChar = getExtendedEsFrChar(unsignedByte3);
                            } else {
                                cueBuilder = this.currentCueBuilder;
                                extendedPtDeChar = getExtendedPtDeChar(unsignedByte3);
                            }
                        } else {
                            if ((unsignedByte2 & 224) == 0) {
                                zHandleCtrl = handleCtrl(unsignedByte2, unsignedByte3);
                            } else {
                                this.currentCueBuilder.append(getChar(unsignedByte2));
                                if ((unsignedByte3 & 224) != 0) {
                                    cueBuilder = this.currentCueBuilder;
                                    extendedPtDeChar = getChar(unsignedByte3);
                                }
                            }
                            z = true;
                        }
                        cueBuilder.append(extendedPtDeChar);
                        z = true;
                    }
                }
            }
        }
        if (z) {
            if (!zHandleCtrl) {
                this.repeatableControlSet = false;
            }
            int i3 = this.captionMode;
            if (i3 == 1 || i3 == 3) {
                this.cues = getDisplayCues();
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
        setCaptionMode(0);
        setCaptionRowCount(4);
        resetCueBuilders();
        this.repeatableControlSet = false;
        this.repeatableControlCc1 = (byte) 0;
        this.repeatableControlCc2 = (byte) 0;
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder, com.google.android.exoplayer2.decoder.Decoder
    public String getName() {
        return "Cea608Decoder";
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
    public void release() {
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder, com.google.android.exoplayer2.text.SubtitleDecoder
    public /* bridge */ /* synthetic */ void setPositionUs(long j2) {
        super.setPositionUs(j2);
    }
}
