package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes.dex */
final class TsDurationReader {
    private static final int TIMESTAMP_SEARCH_BYTES = 112800;
    private boolean isDurationRead;
    private boolean isFirstPcrValueRead;
    private boolean isLastPcrValueRead;
    private final TimestampAdjuster pcrTimestampAdjuster = new TimestampAdjuster(0);
    private long firstPcrValue = C.TIME_UNSET;
    private long lastPcrValue = C.TIME_UNSET;
    private long durationUs = C.TIME_UNSET;
    private final ParsableByteArray packetBuffer = new ParsableByteArray();

    TsDurationReader() {
    }

    private int finishReadDuration(ExtractorInput extractorInput) {
        this.packetBuffer.reset(Util.EMPTY_BYTE_ARRAY);
        this.isDurationRead = true;
        extractorInput.resetPeekPosition();
        return 0;
    }

    private int readFirstPcrValue(ExtractorInput extractorInput, PositionHolder positionHolder, int i2) {
        int iMin = (int) Math.min(112800L, extractorInput.getLength());
        long j2 = 0;
        if (extractorInput.getPosition() != j2) {
            positionHolder.position = j2;
            return 1;
        }
        this.packetBuffer.reset(iMin);
        extractorInput.resetPeekPosition();
        extractorInput.peekFully(this.packetBuffer.data, 0, iMin);
        this.firstPcrValue = readFirstPcrValueFromBuffer(this.packetBuffer, i2);
        this.isFirstPcrValueRead = true;
        return 0;
    }

    private long readFirstPcrValueFromBuffer(ParsableByteArray parsableByteArray, int i2) {
        int iLimit = parsableByteArray.limit();
        for (int position = parsableByteArray.getPosition(); position < iLimit; position++) {
            if (parsableByteArray.data[position] == 71) {
                long pcrFromPacket = TsUtil.readPcrFromPacket(parsableByteArray, position, i2);
                if (pcrFromPacket != C.TIME_UNSET) {
                    return pcrFromPacket;
                }
            }
        }
        return C.TIME_UNSET;
    }

    private int readLastPcrValue(ExtractorInput extractorInput, PositionHolder positionHolder, int i2) {
        long length = extractorInput.getLength();
        int iMin = (int) Math.min(112800L, length);
        long j2 = length - ((long) iMin);
        if (extractorInput.getPosition() != j2) {
            positionHolder.position = j2;
            return 1;
        }
        this.packetBuffer.reset(iMin);
        extractorInput.resetPeekPosition();
        extractorInput.peekFully(this.packetBuffer.data, 0, iMin);
        this.lastPcrValue = readLastPcrValueFromBuffer(this.packetBuffer, i2);
        this.isLastPcrValueRead = true;
        return 0;
    }

    private long readLastPcrValueFromBuffer(ParsableByteArray parsableByteArray, int i2) {
        int position = parsableByteArray.getPosition();
        int iLimit = parsableByteArray.limit();
        while (true) {
            iLimit--;
            if (iLimit < position) {
                return C.TIME_UNSET;
            }
            if (parsableByteArray.data[iLimit] == 71) {
                long pcrFromPacket = TsUtil.readPcrFromPacket(parsableByteArray, iLimit, i2);
                if (pcrFromPacket != C.TIME_UNSET) {
                    return pcrFromPacket;
                }
            }
        }
    }

    public long getDurationUs() {
        return this.durationUs;
    }

    public TimestampAdjuster getPcrTimestampAdjuster() {
        return this.pcrTimestampAdjuster;
    }

    public boolean isDurationReadFinished() {
        return this.isDurationRead;
    }

    public int readDuration(ExtractorInput extractorInput, PositionHolder positionHolder, int i2) {
        if (i2 <= 0) {
            return finishReadDuration(extractorInput);
        }
        if (!this.isLastPcrValueRead) {
            return readLastPcrValue(extractorInput, positionHolder, i2);
        }
        if (this.lastPcrValue == C.TIME_UNSET) {
            return finishReadDuration(extractorInput);
        }
        if (!this.isFirstPcrValueRead) {
            return readFirstPcrValue(extractorInput, positionHolder, i2);
        }
        long j2 = this.firstPcrValue;
        if (j2 == C.TIME_UNSET) {
            return finishReadDuration(extractorInput);
        }
        this.durationUs = this.pcrTimestampAdjuster.adjustTsTimestamp(this.lastPcrValue) - this.pcrTimestampAdjuster.adjustTsTimestamp(j2);
        return finishReadDuration(extractorInput);
    }
}
