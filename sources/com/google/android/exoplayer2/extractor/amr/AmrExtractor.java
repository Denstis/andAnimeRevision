package com.google.android.exoplayer2.extractor.amr;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.ConstantBitrateSeekMap;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.io.EOFException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class AmrExtractor implements Extractor {
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING = 1;
    private static final int NUM_SAME_SIZE_CONSTANT_BIT_RATE_THRESHOLD = 20;
    private static final int SAMPLE_RATE_NB = 8000;
    private static final int SAMPLE_RATE_WB = 16000;
    private static final int SAMPLE_TIME_PER_FRAME_US = 20000;
    private int currentSampleBytesRemaining;
    private int currentSampleSize;
    private long currentSampleTimeUs;
    private ExtractorOutput extractorOutput;
    private long firstSamplePosition;
    private int firstSampleSize;
    private final int flags;
    private boolean hasOutputFormat;
    private boolean hasOutputSeekMap;
    private boolean isWideBand;
    private int numSamplesWithSameSize;
    private final byte[] scratch;
    private SeekMap seekMap;
    private long timeOffsetUs;
    private TrackOutput trackOutput;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: com.google.android.exoplayer2.extractor.amr.a
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return AmrExtractor.a();
        }
    };
    private static final int[] frameSizeBytesByTypeNb = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
    private static final int[] frameSizeBytesByTypeWb = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
    private static final byte[] amrSignatureNb = Util.getUtf8Bytes("#!AMR\n");
    private static final byte[] amrSignatureWb = Util.getUtf8Bytes("#!AMR-WB\n");
    private static final int MAX_FRAME_SIZE_BYTES = frameSizeBytesByTypeWb[8];

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public AmrExtractor() {
        this(0);
    }

    public AmrExtractor(int i2) {
        this.flags = i2;
        this.scratch = new byte[1];
        this.firstSampleSize = -1;
    }

    static /* synthetic */ Extractor[] a() {
        return new Extractor[]{new AmrExtractor()};
    }

    static byte[] amrSignatureNb() {
        byte[] bArr = amrSignatureNb;
        return Arrays.copyOf(bArr, bArr.length);
    }

    static byte[] amrSignatureWb() {
        byte[] bArr = amrSignatureWb;
        return Arrays.copyOf(bArr, bArr.length);
    }

    static int frameSizeBytesByTypeNb(int i2) {
        return frameSizeBytesByTypeNb[i2];
    }

    static int frameSizeBytesByTypeWb(int i2) {
        return frameSizeBytesByTypeWb[i2];
    }

    private static int getBitrateFromFrameSize(int i2, long j2) {
        return (int) ((((long) (i2 * 8)) * 1000000) / j2);
    }

    private SeekMap getConstantBitrateSeekMap(long j2) {
        return new ConstantBitrateSeekMap(j2, this.firstSamplePosition, getBitrateFromFrameSize(this.firstSampleSize, 20000L), this.firstSampleSize);
    }

    private int getFrameSizeInBytes(int i2) throws ParserException {
        if (isValidFrameType(i2)) {
            return this.isWideBand ? frameSizeBytesByTypeWb[i2] : frameSizeBytesByTypeNb[i2];
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Illegal AMR ");
        sb.append(this.isWideBand ? "WB" : "NB");
        sb.append(" frame type ");
        sb.append(i2);
        throw new ParserException(sb.toString());
    }

    private boolean isNarrowBandValidFrameType(int i2) {
        return !this.isWideBand && (i2 < 12 || i2 > 14);
    }

    private boolean isValidFrameType(int i2) {
        return i2 >= 0 && i2 <= 15 && (isWideBandValidFrameType(i2) || isNarrowBandValidFrameType(i2));
    }

    private boolean isWideBandValidFrameType(int i2) {
        return this.isWideBand && (i2 < 10 || i2 > 13);
    }

    private void maybeOutputFormat() {
        if (this.hasOutputFormat) {
            return;
        }
        this.hasOutputFormat = true;
        this.trackOutput.format(Format.createAudioSampleFormat(null, this.isWideBand ? MimeTypes.AUDIO_AMR_WB : MimeTypes.AUDIO_AMR_NB, null, -1, MAX_FRAME_SIZE_BYTES, 1, this.isWideBand ? SAMPLE_RATE_WB : 8000, -1, null, null, 0, null));
    }

    private void maybeOutputSeekMap(long j2, int i2) {
        SeekMap unseekable;
        int i3;
        if (this.hasOutputSeekMap) {
            return;
        }
        if ((this.flags & 1) == 0 || j2 == -1 || !((i3 = this.firstSampleSize) == -1 || i3 == this.currentSampleSize)) {
            unseekable = new SeekMap.Unseekable(C.TIME_UNSET);
        } else if (this.numSamplesWithSameSize < 20 && i2 != -1) {
            return;
        } else {
            unseekable = getConstantBitrateSeekMap(j2);
        }
        this.seekMap = unseekable;
        this.extractorOutput.seekMap(this.seekMap);
        this.hasOutputSeekMap = true;
    }

    private boolean peekAmrSignature(ExtractorInput extractorInput, byte[] bArr) {
        extractorInput.resetPeekPosition();
        byte[] bArr2 = new byte[bArr.length];
        extractorInput.peekFully(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    private int peekNextSampleSize(ExtractorInput extractorInput) throws ParserException {
        extractorInput.resetPeekPosition();
        extractorInput.peekFully(this.scratch, 0, 1);
        byte b2 = this.scratch[0];
        if ((b2 & 131) <= 0) {
            return getFrameSizeInBytes((b2 >> 3) & 15);
        }
        throw new ParserException("Invalid padding bits for frame header " + ((int) b2));
    }

    private boolean readAmrHeader(ExtractorInput extractorInput) {
        int length;
        if (peekAmrSignature(extractorInput, amrSignatureNb)) {
            this.isWideBand = false;
            length = amrSignatureNb.length;
        } else {
            if (!peekAmrSignature(extractorInput, amrSignatureWb)) {
                return false;
            }
            this.isWideBand = true;
            length = amrSignatureWb.length;
        }
        extractorInput.skipFully(length);
        return true;
    }

    private int readSample(ExtractorInput extractorInput) {
        if (this.currentSampleBytesRemaining == 0) {
            try {
                this.currentSampleSize = peekNextSampleSize(extractorInput);
                this.currentSampleBytesRemaining = this.currentSampleSize;
                if (this.firstSampleSize == -1) {
                    this.firstSamplePosition = extractorInput.getPosition();
                    this.firstSampleSize = this.currentSampleSize;
                }
                if (this.firstSampleSize == this.currentSampleSize) {
                    this.numSamplesWithSameSize++;
                }
            } catch (EOFException unused) {
                return -1;
            }
        }
        int iSampleData = this.trackOutput.sampleData(extractorInput, this.currentSampleBytesRemaining, true);
        if (iSampleData == -1) {
            return -1;
        }
        this.currentSampleBytesRemaining -= iSampleData;
        if (this.currentSampleBytesRemaining > 0) {
            return 0;
        }
        this.trackOutput.sampleMetadata(this.timeOffsetUs + this.currentSampleTimeUs, 1, this.currentSampleSize, 0, null);
        this.currentSampleTimeUs += 20000;
        return 0;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        this.trackOutput = extractorOutput.track(0, 1);
        extractorOutput.endTracks();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws ParserException {
        if (extractorInput.getPosition() == 0 && !readAmrHeader(extractorInput)) {
            throw new ParserException("Could not find AMR header.");
        }
        maybeOutputFormat();
        int sample = readSample(extractorInput);
        maybeOutputSeekMap(extractorInput.getLength(), sample);
        return sample;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j2, long j3) {
        this.currentSampleTimeUs = 0L;
        this.currentSampleSize = 0;
        this.currentSampleBytesRemaining = 0;
        if (j2 != 0) {
            SeekMap seekMap = this.seekMap;
            if (seekMap instanceof ConstantBitrateSeekMap) {
                this.timeOffsetUs = ((ConstantBitrateSeekMap) seekMap).getTimeUsAtPosition(j2);
                return;
            }
        }
        this.timeOffsetUs = 0L;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) {
        return readAmrHeader(extractorInput);
    }
}
