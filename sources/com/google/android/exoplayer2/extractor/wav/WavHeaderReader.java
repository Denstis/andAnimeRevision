package com.google.android.exoplayer2.extractor.wav;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.WavUtil;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes.dex */
final class WavHeaderReader {
    private static final String TAG = "WavHeaderReader";

    private static final class ChunkHeader {
        public static final int SIZE_IN_BYTES = 8;
        public final int id;
        public final long size;

        private ChunkHeader(int i2, long j2) {
            this.id = i2;
            this.size = j2;
        }

        public static ChunkHeader peek(ExtractorInput extractorInput, ParsableByteArray parsableByteArray) {
            extractorInput.peekFully(parsableByteArray.data, 0, 8);
            parsableByteArray.setPosition(0);
            return new ChunkHeader(parsableByteArray.readInt(), parsableByteArray.readLittleEndianUnsignedInt());
        }
    }

    private WavHeaderReader() {
    }

    public static WavHeader peek(ExtractorInput extractorInput) throws ParserException {
        ChunkHeader chunkHeaderPeek;
        StringBuilder sb;
        Assertions.checkNotNull(extractorInput);
        ParsableByteArray parsableByteArray = new ParsableByteArray(16);
        if (ChunkHeader.peek(extractorInput, parsableByteArray).id != WavUtil.RIFF_FOURCC) {
            return null;
        }
        extractorInput.peekFully(parsableByteArray.data, 0, 4);
        parsableByteArray.setPosition(0);
        int i2 = parsableByteArray.readInt();
        if (i2 != WavUtil.WAVE_FOURCC) {
            sb = new StringBuilder();
            sb.append("Unsupported RIFF format: ");
            sb.append(i2);
        } else {
            while (true) {
                chunkHeaderPeek = ChunkHeader.peek(extractorInput, parsableByteArray);
                if (chunkHeaderPeek.id == WavUtil.FMT_FOURCC) {
                    break;
                }
                extractorInput.advancePeekPosition((int) chunkHeaderPeek.size);
            }
            Assertions.checkState(chunkHeaderPeek.size >= 16);
            extractorInput.peekFully(parsableByteArray.data, 0, 16);
            parsableByteArray.setPosition(0);
            int littleEndianUnsignedShort = parsableByteArray.readLittleEndianUnsignedShort();
            int littleEndianUnsignedShort2 = parsableByteArray.readLittleEndianUnsignedShort();
            int littleEndianUnsignedIntToInt = parsableByteArray.readLittleEndianUnsignedIntToInt();
            int littleEndianUnsignedIntToInt2 = parsableByteArray.readLittleEndianUnsignedIntToInt();
            int littleEndianUnsignedShort3 = parsableByteArray.readLittleEndianUnsignedShort();
            int littleEndianUnsignedShort4 = parsableByteArray.readLittleEndianUnsignedShort();
            int i3 = (littleEndianUnsignedShort2 * littleEndianUnsignedShort4) / 8;
            if (littleEndianUnsignedShort3 != i3) {
                throw new ParserException("Expected block alignment: " + i3 + "; got: " + littleEndianUnsignedShort3);
            }
            int encodingForType = WavUtil.getEncodingForType(littleEndianUnsignedShort, littleEndianUnsignedShort4);
            if (encodingForType != 0) {
                extractorInput.advancePeekPosition(((int) chunkHeaderPeek.size) - 16);
                return new WavHeader(littleEndianUnsignedShort2, littleEndianUnsignedIntToInt, littleEndianUnsignedIntToInt2, littleEndianUnsignedShort3, littleEndianUnsignedShort4, encodingForType);
            }
            sb = new StringBuilder();
            sb.append("Unsupported WAV format: ");
            sb.append(littleEndianUnsignedShort4);
            sb.append(" bit/sample, type ");
            sb.append(littleEndianUnsignedShort);
        }
        Log.e(TAG, sb.toString());
        return null;
    }

    public static void skipToData(ExtractorInput extractorInput, WavHeader wavHeader) throws ParserException {
        Assertions.checkNotNull(extractorInput);
        Assertions.checkNotNull(wavHeader);
        extractorInput.resetPeekPosition();
        ParsableByteArray parsableByteArray = new ParsableByteArray(8);
        while (true) {
            ChunkHeader chunkHeaderPeek = ChunkHeader.peek(extractorInput, parsableByteArray);
            if (chunkHeaderPeek.id == Util.getIntegerCodeForString("data")) {
                extractorInput.skipFully(8);
                wavHeader.setDataBounds(extractorInput.getPosition(), chunkHeaderPeek.size);
                return;
            }
            Log.w(TAG, "Ignoring unknown WAV chunk: " + chunkHeaderPeek.id);
            long j2 = chunkHeaderPeek.size + 8;
            if (chunkHeaderPeek.id == Util.getIntegerCodeForString("RIFF")) {
                j2 = 12;
            }
            if (j2 > 2147483647L) {
                throw new ParserException("Chunk is too large (~2GB+) to skip; id: " + chunkHeaderPeek.id);
            }
            extractorInput.skipFully((int) j2);
        }
    }
}
