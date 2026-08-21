package com.google.android.exoplayer2.extractor.mp3;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.GaplessInfoHolder;
import com.google.android.exoplayer2.extractor.Id3Peeker;
import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.Id3Decoder;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.io.EOFException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class Mp3Extractor implements Extractor {
    public static final int FLAG_DISABLE_ID3_METADATA = 2;
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING = 1;
    private static final int MAX_SNIFF_BYTES = 16384;
    private static final int MAX_SYNC_BYTES = 131072;
    private static final int MPEG_AUDIO_HEADER_MASK = -128000;
    private static final int SCRATCH_LENGTH = 10;
    private static final int SEEK_HEADER_UNSET = 0;
    private long basisTimeUs;
    private ExtractorOutput extractorOutput;
    private final int flags;
    private final long forcedFirstSampleTimestampUs;
    private final GaplessInfoHolder gaplessInfoHolder;
    private final Id3Peeker id3Peeker;
    private Metadata metadata;
    private int sampleBytesRemaining;
    private long samplesRead;
    private final ParsableByteArray scratch;
    private Seeker seeker;
    private final MpegAudioHeader synchronizedHeader;
    private int synchronizedHeaderData;
    private TrackOutput trackOutput;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: com.google.android.exoplayer2.extractor.mp3.a
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return Mp3Extractor.a();
        }
    };
    private static final Id3Decoder.FramePredicate REQUIRED_ID3_FRAME_PREDICATE = new Id3Decoder.FramePredicate() { // from class: com.google.android.exoplayer2.extractor.mp3.b
        @Override // com.google.android.exoplayer2.metadata.id3.Id3Decoder.FramePredicate
        public final boolean evaluate(int i2, int i3, int i4, int i5, int i6) {
            return Mp3Extractor.a(i2, i3, i4, i5, i6);
        }
    };
    private static final int SEEK_HEADER_XING = Util.getIntegerCodeForString("Xing");
    private static final int SEEK_HEADER_INFO = Util.getIntegerCodeForString("Info");
    private static final int SEEK_HEADER_VBRI = Util.getIntegerCodeForString("VBRI");

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    interface Seeker extends SeekMap {
        long getDataEndPosition();

        long getTimeUs(long j2);
    }

    public Mp3Extractor() {
        this(0);
    }

    public Mp3Extractor(int i2) {
        this(i2, C.TIME_UNSET);
    }

    public Mp3Extractor(int i2, long j2) {
        this.flags = i2;
        this.forcedFirstSampleTimestampUs = j2;
        this.scratch = new ParsableByteArray(10);
        this.synchronizedHeader = new MpegAudioHeader();
        this.gaplessInfoHolder = new GaplessInfoHolder();
        this.basisTimeUs = C.TIME_UNSET;
        this.id3Peeker = new Id3Peeker();
    }

    static /* synthetic */ boolean a(int i2, int i3, int i4, int i5, int i6) {
        return (i3 == 67 && i4 == 79 && i5 == 77 && (i6 == 77 || i2 == 2)) || (i3 == 77 && i4 == 76 && i5 == 76 && (i6 == 84 || i2 == 2));
    }

    static /* synthetic */ Extractor[] a() {
        return new Extractor[]{new Mp3Extractor()};
    }

    private Seeker getConstantBitrateSeeker(ExtractorInput extractorInput) {
        extractorInput.peekFully(this.scratch.data, 0, 4);
        this.scratch.setPosition(0);
        MpegAudioHeader.populateHeader(this.scratch.readInt(), this.synchronizedHeader);
        return new ConstantBitrateSeeker(extractorInput.getLength(), extractorInput.getPosition(), this.synchronizedHeader);
    }

    private static int getSeekFrameHeader(ParsableByteArray parsableByteArray, int i2) {
        if (parsableByteArray.limit() >= i2 + 4) {
            parsableByteArray.setPosition(i2);
            int i3 = parsableByteArray.readInt();
            if (i3 == SEEK_HEADER_XING || i3 == SEEK_HEADER_INFO) {
                return i3;
            }
        }
        if (parsableByteArray.limit() < 40) {
            return 0;
        }
        parsableByteArray.setPosition(36);
        int i4 = parsableByteArray.readInt();
        int i5 = SEEK_HEADER_VBRI;
        if (i4 == i5) {
            return i5;
        }
        return 0;
    }

    private static boolean headersMatch(int i2, long j2) {
        return ((long) (i2 & MPEG_AUDIO_HEADER_MASK)) == (j2 & (-128000));
    }

    private static MlltSeeker maybeHandleSeekMetadata(Metadata metadata, long j2) {
        if (metadata == null) {
            return null;
        }
        int length = metadata.length();
        for (int i2 = 0; i2 < length; i2++) {
            Metadata.Entry entry = metadata.get(i2);
            if (entry instanceof MlltFrame) {
                return MlltSeeker.create(j2, (MlltFrame) entry);
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.google.android.exoplayer2.extractor.mp3.Mp3Extractor.Seeker maybeReadSeekFrame(com.google.android.exoplayer2.extractor.ExtractorInput r10) {
        /*
            r9 = this;
            com.google.android.exoplayer2.util.ParsableByteArray r5 = new com.google.android.exoplayer2.util.ParsableByteArray
            com.google.android.exoplayer2.extractor.MpegAudioHeader r0 = r9.synchronizedHeader
            int r0 = r0.frameSize
            r5.<init>(r0)
            byte[] r0 = r5.data
            com.google.android.exoplayer2.extractor.MpegAudioHeader r1 = r9.synchronizedHeader
            int r1 = r1.frameSize
            r6 = 0
            r10.peekFully(r0, r6, r1)
            com.google.android.exoplayer2.extractor.MpegAudioHeader r0 = r9.synchronizedHeader
            int r1 = r0.version
            r2 = 1
            r1 = r1 & r2
            r3 = 21
            int r0 = r0.channels
            if (r1 == 0) goto L26
            if (r0 == r2) goto L28
            r3 = 36
            r7 = 36
            goto L2f
        L26:
            if (r0 == r2) goto L2b
        L28:
            r7 = 21
            goto L2f
        L2b:
            r3 = 13
            r7 = 13
        L2f:
            int r8 = getSeekFrameHeader(r5, r7)
            int r0 = com.google.android.exoplayer2.extractor.mp3.Mp3Extractor.SEEK_HEADER_XING
            if (r8 == r0) goto L5b
            int r0 = com.google.android.exoplayer2.extractor.mp3.Mp3Extractor.SEEK_HEADER_INFO
            if (r8 != r0) goto L3c
            goto L5b
        L3c:
            int r0 = com.google.android.exoplayer2.extractor.mp3.Mp3Extractor.SEEK_HEADER_VBRI
            if (r8 != r0) goto L56
            long r0 = r10.getLength()
            long r2 = r10.getPosition()
            com.google.android.exoplayer2.extractor.MpegAudioHeader r4 = r9.synchronizedHeader
            com.google.android.exoplayer2.extractor.mp3.VbriSeeker r0 = com.google.android.exoplayer2.extractor.mp3.VbriSeeker.create(r0, r2, r4, r5)
            com.google.android.exoplayer2.extractor.MpegAudioHeader r1 = r9.synchronizedHeader
            int r1 = r1.frameSize
            r10.skipFully(r1)
            goto Lab
        L56:
            r0 = 0
            r10.resetPeekPosition()
            goto Lab
        L5b:
            long r0 = r10.getLength()
            long r2 = r10.getPosition()
            com.google.android.exoplayer2.extractor.MpegAudioHeader r4 = r9.synchronizedHeader
            com.google.android.exoplayer2.extractor.mp3.XingSeeker r0 = com.google.android.exoplayer2.extractor.mp3.XingSeeker.create(r0, r2, r4, r5)
            if (r0 == 0) goto L93
            com.google.android.exoplayer2.extractor.GaplessInfoHolder r1 = r9.gaplessInfoHolder
            boolean r1 = r1.hasGaplessInfo()
            if (r1 != 0) goto L93
            r10.resetPeekPosition()
            int r7 = r7 + 141
            r10.advancePeekPosition(r7)
            com.google.android.exoplayer2.util.ParsableByteArray r1 = r9.scratch
            byte[] r1 = r1.data
            r2 = 3
            r10.peekFully(r1, r6, r2)
            com.google.android.exoplayer2.util.ParsableByteArray r1 = r9.scratch
            r1.setPosition(r6)
            com.google.android.exoplayer2.extractor.GaplessInfoHolder r1 = r9.gaplessInfoHolder
            com.google.android.exoplayer2.util.ParsableByteArray r2 = r9.scratch
            int r2 = r2.readUnsignedInt24()
            r1.setFromXingHeaderValue(r2)
        L93:
            com.google.android.exoplayer2.extractor.MpegAudioHeader r1 = r9.synchronizedHeader
            int r1 = r1.frameSize
            r10.skipFully(r1)
            if (r0 == 0) goto Lab
            boolean r1 = r0.isSeekable()
            if (r1 != 0) goto Lab
            int r1 = com.google.android.exoplayer2.extractor.mp3.Mp3Extractor.SEEK_HEADER_INFO
            if (r8 != r1) goto Lab
            com.google.android.exoplayer2.extractor.mp3.Mp3Extractor$Seeker r10 = r9.getConstantBitrateSeeker(r10)
            return r10
        Lab:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp3.Mp3Extractor.maybeReadSeekFrame(com.google.android.exoplayer2.extractor.ExtractorInput):com.google.android.exoplayer2.extractor.mp3.Mp3Extractor$Seeker");
    }

    private boolean peekEndOfStreamOrHeader(ExtractorInput extractorInput) {
        return (this.seeker != null && extractorInput.getPeekPosition() == this.seeker.getDataEndPosition()) || !extractorInput.peekFully(this.scratch.data, 0, 4, true);
    }

    private int readSample(ExtractorInput extractorInput) {
        if (this.sampleBytesRemaining == 0) {
            extractorInput.resetPeekPosition();
            if (peekEndOfStreamOrHeader(extractorInput)) {
                return -1;
            }
            this.scratch.setPosition(0);
            int i2 = this.scratch.readInt();
            if (!headersMatch(i2, this.synchronizedHeaderData) || MpegAudioHeader.getFrameSize(i2) == -1) {
                extractorInput.skipFully(1);
                this.synchronizedHeaderData = 0;
                return 0;
            }
            MpegAudioHeader.populateHeader(i2, this.synchronizedHeader);
            if (this.basisTimeUs == C.TIME_UNSET) {
                this.basisTimeUs = this.seeker.getTimeUs(extractorInput.getPosition());
                if (this.forcedFirstSampleTimestampUs != C.TIME_UNSET) {
                    this.basisTimeUs += this.forcedFirstSampleTimestampUs - this.seeker.getTimeUs(0L);
                }
            }
            this.sampleBytesRemaining = this.synchronizedHeader.frameSize;
        }
        int iSampleData = this.trackOutput.sampleData(extractorInput, this.sampleBytesRemaining, true);
        if (iSampleData == -1) {
            return -1;
        }
        this.sampleBytesRemaining -= iSampleData;
        if (this.sampleBytesRemaining > 0) {
            return 0;
        }
        long j2 = this.basisTimeUs;
        long j3 = this.samplesRead * 1000000;
        MpegAudioHeader mpegAudioHeader = this.synchronizedHeader;
        this.trackOutput.sampleMetadata(j2 + (j3 / ((long) mpegAudioHeader.sampleRate)), 1, mpegAudioHeader.frameSize, 0, null);
        this.samplesRead += (long) this.synchronizedHeader.samplesPerFrame;
        this.sampleBytesRemaining = 0;
        return 0;
    }

    private boolean synchronize(ExtractorInput extractorInput, boolean z) throws ParserException, EOFException {
        int i2;
        int i3;
        int i4;
        int i5;
        int frameSize;
        int i6 = z ? MAX_SNIFF_BYTES : 131072;
        extractorInput.resetPeekPosition();
        if (extractorInput.getPosition() == 0) {
            this.metadata = this.id3Peeker.peekId3Data(extractorInput, (this.flags & 2) == 0 ? null : REQUIRED_ID3_FRAME_PREDICATE);
            Metadata metadata = this.metadata;
            if (metadata != null) {
                this.gaplessInfoHolder.setFromMetadata(metadata);
            }
            int peekPosition = (int) extractorInput.getPeekPosition();
            if (!z) {
                extractorInput.skipFully(peekPosition);
            }
            i5 = peekPosition;
            i2 = 0;
            i3 = 0;
            i4 = 0;
        } else {
            i2 = 0;
            i3 = 0;
            i4 = 0;
            i5 = 0;
        }
        while (true) {
            if (!peekEndOfStreamOrHeader(extractorInput)) {
                this.scratch.setPosition(0);
                int i7 = this.scratch.readInt();
                if ((i2 == 0 || headersMatch(i7, i2)) && (frameSize = MpegAudioHeader.getFrameSize(i7)) != -1) {
                    i3++;
                    if (i3 != 1) {
                        if (i3 == 4) {
                            break;
                        }
                    } else {
                        MpegAudioHeader.populateHeader(i7, this.synchronizedHeader);
                        i2 = i7;
                    }
                    extractorInput.advancePeekPosition(frameSize - 4);
                } else {
                    int i8 = i4 + 1;
                    if (i4 == i6) {
                        if (z) {
                            return false;
                        }
                        throw new ParserException("Searched too many bytes.");
                    }
                    if (z) {
                        extractorInput.resetPeekPosition();
                        extractorInput.advancePeekPosition(i5 + i8);
                    } else {
                        extractorInput.skipFully(1);
                    }
                    i4 = i8;
                    i2 = 0;
                    i3 = 0;
                }
            } else if (i3 <= 0) {
                throw new EOFException();
            }
        }
        if (z) {
            extractorInput.skipFully(i5 + i4);
        } else {
            extractorInput.resetPeekPosition();
        }
        this.synchronizedHeaderData = i2;
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        this.trackOutput = this.extractorOutput.track(0, 1);
        this.extractorOutput.endTracks();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws ParserException {
        if (this.synchronizedHeaderData == 0) {
            try {
                synchronize(extractorInput, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.seeker == null) {
            Seeker seekerMaybeReadSeekFrame = maybeReadSeekFrame(extractorInput);
            MlltSeeker mlltSeekerMaybeHandleSeekMetadata = maybeHandleSeekMetadata(this.metadata, extractorInput.getPosition());
            if (mlltSeekerMaybeHandleSeekMetadata != null) {
                this.seeker = mlltSeekerMaybeHandleSeekMetadata;
            } else if (seekerMaybeReadSeekFrame != null) {
                this.seeker = seekerMaybeReadSeekFrame;
            }
            Seeker seeker = this.seeker;
            if (seeker == null || (!seeker.isSeekable() && (this.flags & 1) != 0)) {
                this.seeker = getConstantBitrateSeeker(extractorInput);
            }
            this.extractorOutput.seekMap(this.seeker);
            TrackOutput trackOutput = this.trackOutput;
            MpegAudioHeader mpegAudioHeader = this.synchronizedHeader;
            String str = mpegAudioHeader.mimeType;
            int i2 = mpegAudioHeader.channels;
            int i3 = mpegAudioHeader.sampleRate;
            GaplessInfoHolder gaplessInfoHolder = this.gaplessInfoHolder;
            trackOutput.format(Format.createAudioSampleFormat(null, str, null, -1, MpegAudioHeader.MAX_FRAME_SIZE_BYTES, i2, i3, -1, gaplessInfoHolder.encoderDelay, gaplessInfoHolder.encoderPadding, null, null, 0, null, (this.flags & 2) != 0 ? null : this.metadata));
        }
        return readSample(extractorInput);
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j2, long j3) {
        this.synchronizedHeaderData = 0;
        this.basisTimeUs = C.TIME_UNSET;
        this.samplesRead = 0L;
        this.sampleBytesRemaining = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) {
        return synchronize(extractorInput, true);
    }
}
