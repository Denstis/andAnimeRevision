package com.google.android.exoplayer2.extractor.ogg;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.SeekPoint;
import com.google.android.exoplayer2.util.Assertions;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class DefaultOggSeeker implements OggSeeker {
    private static final int DEFAULT_OFFSET = 30000;
    public static final int MATCH_BYTE_RANGE = 100000;
    public static final int MATCH_RANGE = 72000;
    private static final int STATE_IDLE = 3;
    private static final int STATE_READ_LAST_PAGE = 1;
    private static final int STATE_SEEK = 2;
    private static final int STATE_SEEK_TO_END = 0;
    private long end;
    private long endGranule;
    private final long endPosition;
    private final OggPageHeader pageHeader = new OggPageHeader();
    private long positionBeforeSeekToEnd;
    private long start;
    private long startGranule;
    private final long startPosition;
    private int state;
    private final StreamReader streamReader;
    private long targetGranule;
    private long totalGranules;

    private class OggSeekMap implements SeekMap {
        private OggSeekMap() {
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public long getDurationUs() {
            return DefaultOggSeeker.this.streamReader.convertGranuleToTime(DefaultOggSeeker.this.totalGranules);
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public SeekMap.SeekPoints getSeekPoints(long j2) {
            if (j2 == 0) {
                return new SeekMap.SeekPoints(new SeekPoint(0L, DefaultOggSeeker.this.startPosition));
            }
            long jConvertTimeToGranule = DefaultOggSeeker.this.streamReader.convertTimeToGranule(j2);
            DefaultOggSeeker defaultOggSeeker = DefaultOggSeeker.this;
            return new SeekMap.SeekPoints(new SeekPoint(j2, defaultOggSeeker.getEstimatedPosition(defaultOggSeeker.startPosition, jConvertTimeToGranule, 30000L)));
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public boolean isSeekable() {
            return true;
        }
    }

    public DefaultOggSeeker(long j2, long j3, StreamReader streamReader, long j4, long j5, boolean z) {
        Assertions.checkArgument(j2 >= 0 && j3 > j2);
        this.streamReader = streamReader;
        this.startPosition = j2;
        this.endPosition = j3;
        if (j4 != j3 - j2 && !z) {
            this.state = 0;
        } else {
            this.totalGranules = j5;
            this.state = 3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getEstimatedPosition(long j2, long j3, long j4) {
        long j5 = this.endPosition;
        long j6 = this.startPosition;
        long j7 = j2 + (((j3 * (j5 - j6)) / this.totalGranules) - j4);
        if (j7 < j6) {
            j7 = j6;
        }
        long j8 = this.endPosition;
        return j7 >= j8 ? j8 - 1 : j7;
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.OggSeeker
    public OggSeekMap createSeekMap() {
        if (this.totalGranules != 0) {
            return new OggSeekMap();
        }
        return null;
    }

    public long getNextSeekPosition(long j2, ExtractorInput extractorInput) throws IOException {
        if (this.start == this.end) {
            return -(this.startGranule + 2);
        }
        long position = extractorInput.getPosition();
        if (!skipToNextPage(extractorInput, this.end)) {
            long j3 = this.start;
            if (j3 != position) {
                return j3;
            }
            throw new IOException("No ogg page can be found.");
        }
        this.pageHeader.populate(extractorInput, false);
        extractorInput.resetPeekPosition();
        OggPageHeader oggPageHeader = this.pageHeader;
        long j4 = j2 - oggPageHeader.granulePosition;
        int i2 = oggPageHeader.headerSize + oggPageHeader.bodySize;
        if (j4 >= 0 && j4 <= 72000) {
            extractorInput.skipFully(i2);
            return -(this.pageHeader.granulePosition + 2);
        }
        if (j4 < 0) {
            this.end = position;
            this.endGranule = this.pageHeader.granulePosition;
        } else {
            long j5 = i2;
            this.start = extractorInput.getPosition() + j5;
            this.startGranule = this.pageHeader.granulePosition;
            if ((this.end - this.start) + j5 < 100000) {
                extractorInput.skipFully(i2);
                return -(this.startGranule + 2);
            }
        }
        long j6 = this.end;
        long j7 = this.start;
        if (j6 - j7 < 100000) {
            this.end = j7;
            return j7;
        }
        long position2 = extractorInput.getPosition() - (((long) i2) * (j4 > 0 ? 1L : 2L));
        long j8 = this.end;
        long j9 = this.start;
        return Math.min(Math.max(position2 + ((j4 * (j8 - j9)) / (this.endGranule - this.startGranule)), j9), this.end - 1);
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.OggSeeker
    public long read(ExtractorInput extractorInput) throws IOException {
        int i2 = this.state;
        if (i2 == 0) {
            this.positionBeforeSeekToEnd = extractorInput.getPosition();
            this.state = 1;
            long j2 = this.endPosition - 65307;
            if (j2 > this.positionBeforeSeekToEnd) {
                return j2;
            }
        } else if (i2 != 1) {
            if (i2 != 2) {
                if (i2 == 3) {
                    return -1L;
                }
                throw new IllegalStateException();
            }
            long j3 = this.targetGranule;
            long jSkipToPageOfGranule = 0;
            if (j3 != 0) {
                long nextSeekPosition = getNextSeekPosition(j3, extractorInput);
                if (nextSeekPosition >= 0) {
                    return nextSeekPosition;
                }
                jSkipToPageOfGranule = skipToPageOfGranule(extractorInput, this.targetGranule, -(nextSeekPosition + 2));
            }
            this.state = 3;
            return -(jSkipToPageOfGranule + 2);
        }
        this.totalGranules = readGranuleOfLastPage(extractorInput);
        this.state = 3;
        return this.positionBeforeSeekToEnd;
    }

    long readGranuleOfLastPage(ExtractorInput extractorInput) throws ParserException, EOFException {
        skipToNextPage(extractorInput);
        this.pageHeader.reset();
        while ((this.pageHeader.type & 4) != 4 && extractorInput.getPosition() < this.endPosition) {
            this.pageHeader.populate(extractorInput, false);
            OggPageHeader oggPageHeader = this.pageHeader;
            extractorInput.skipFully(oggPageHeader.headerSize + oggPageHeader.bodySize);
        }
        return this.pageHeader.granulePosition;
    }

    public void resetSeeking() {
        this.start = this.startPosition;
        this.end = this.endPosition;
        this.startGranule = 0L;
        this.endGranule = this.totalGranules;
    }

    void skipToNextPage(ExtractorInput extractorInput) throws EOFException {
        if (!skipToNextPage(extractorInput, this.endPosition)) {
            throw new EOFException();
        }
    }

    boolean skipToNextPage(ExtractorInput extractorInput, long j2) {
        int i2;
        long jMin = Math.min(j2 + 3, this.endPosition);
        byte[] bArr = new byte[2048];
        int length = bArr.length;
        while (true) {
            int i3 = 0;
            if (extractorInput.getPosition() + ((long) length) > jMin) {
                int position = (int) (jMin - extractorInput.getPosition());
                if (position < 4) {
                    return false;
                }
                length = position;
            }
            extractorInput.peekFully(bArr, 0, length, false);
            while (true) {
                i2 = length - 3;
                if (i3 < i2) {
                    if (bArr[i3] == 79 && bArr[i3 + 1] == 103 && bArr[i3 + 2] == 103 && bArr[i3 + 3] == 83) {
                        extractorInput.skipFully(i3);
                        return true;
                    }
                    i3++;
                }
            }
            extractorInput.skipFully(i2);
        }
    }

    long skipToPageOfGranule(ExtractorInput extractorInput, long j2, long j3) throws ParserException, EOFException {
        this.pageHeader.populate(extractorInput, false);
        while (true) {
            OggPageHeader oggPageHeader = this.pageHeader;
            if (oggPageHeader.granulePosition >= j2) {
                extractorInput.resetPeekPosition();
                return j3;
            }
            extractorInput.skipFully(oggPageHeader.headerSize + oggPageHeader.bodySize);
            OggPageHeader oggPageHeader2 = this.pageHeader;
            long j4 = oggPageHeader2.granulePosition;
            oggPageHeader2.populate(extractorInput, false);
            j3 = j4;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.OggSeeker
    public long startSeek(long j2) {
        int i2 = this.state;
        Assertions.checkArgument(i2 == 3 || i2 == 2);
        this.targetGranule = j2 != 0 ? this.streamReader.convertTimeToGranule(j2) : 0L;
        this.state = 2;
        resetSeeking();
        return this.targetGranule;
    }
}
