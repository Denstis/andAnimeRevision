package com.google.android.exoplayer2.text.webvtt;

import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.SimpleSubtitleDecoder;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.webvtt.WebvttCue;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class Mp4WebvttDecoder extends SimpleSubtitleDecoder {
    private static final int BOX_HEADER_SIZE = 8;
    private static final int TYPE_payl = Util.getIntegerCodeForString("payl");
    private static final int TYPE_sttg = Util.getIntegerCodeForString("sttg");
    private static final int TYPE_vttc = Util.getIntegerCodeForString("vttc");
    private final WebvttCue.Builder builder;
    private final ParsableByteArray sampleData;

    public Mp4WebvttDecoder() {
        super("Mp4WebvttDecoder");
        this.sampleData = new ParsableByteArray();
        this.builder = new WebvttCue.Builder();
    }

    private static Cue parseVttCueBox(ParsableByteArray parsableByteArray, WebvttCue.Builder builder, int i2) throws SubtitleDecoderException {
        builder.reset();
        while (i2 > 0) {
            if (i2 < 8) {
                throw new SubtitleDecoderException("Incomplete vtt cue box header found.");
            }
            int i3 = parsableByteArray.readInt();
            int i4 = parsableByteArray.readInt();
            int i5 = i3 - 8;
            String strFromUtf8Bytes = Util.fromUtf8Bytes(parsableByteArray.data, parsableByteArray.getPosition(), i5);
            parsableByteArray.skipBytes(i5);
            i2 = (i2 - 8) - i5;
            if (i4 == TYPE_sttg) {
                WebvttCueParser.parseCueSettingsList(strFromUtf8Bytes, builder);
            } else if (i4 == TYPE_payl) {
                WebvttCueParser.parseCueText(null, strFromUtf8Bytes.trim(), builder, Collections.emptyList());
            }
        }
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.text.SimpleSubtitleDecoder
    public Mp4WebvttSubtitle decode(byte[] bArr, int i2, boolean z) throws SubtitleDecoderException {
        this.sampleData.reset(bArr, i2);
        ArrayList arrayList = new ArrayList();
        while (this.sampleData.bytesLeft() > 0) {
            if (this.sampleData.bytesLeft() < 8) {
                throw new SubtitleDecoderException("Incomplete Mp4Webvtt Top Level box header found.");
            }
            int i3 = this.sampleData.readInt();
            if (this.sampleData.readInt() == TYPE_vttc) {
                arrayList.add(parseVttCueBox(this.sampleData, this.builder, i3 - 8));
            } else {
                this.sampleData.skipBytes(i3 - 8);
            }
        }
        return new Mp4WebvttSubtitle(arrayList);
    }
}
