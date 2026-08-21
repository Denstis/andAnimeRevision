package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.Util;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
final class TrimmingAudioProcessor implements AudioProcessor {
    private static final int OUTPUT_ENCODING = 2;
    private ByteBuffer buffer;
    private int bytesPerFrame;
    private int channelCount;
    private byte[] endBuffer;
    private int endBufferSize;
    private boolean inputEnded;
    private boolean isActive;
    private ByteBuffer outputBuffer;
    private int pendingTrimStartBytes;
    private boolean receivedInputSinceConfigure;
    private int sampleRateHz;
    private int trimEndFrames;
    private int trimStartFrames;
    private long trimmedFrameCount;

    public TrimmingAudioProcessor() {
        ByteBuffer byteBuffer = AudioProcessor.EMPTY_BUFFER;
        this.buffer = byteBuffer;
        this.outputBuffer = byteBuffer;
        this.channelCount = -1;
        this.sampleRateHz = -1;
        this.endBuffer = Util.EMPTY_BYTE_ARRAY;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean configure(int i2, int i3, int i4) throws AudioProcessor.UnhandledFormatException {
        if (i4 != 2) {
            throw new AudioProcessor.UnhandledFormatException(i2, i3, i4);
        }
        int i5 = this.endBufferSize;
        if (i5 > 0) {
            this.trimmedFrameCount += (long) (i5 / this.bytesPerFrame);
        }
        this.channelCount = i3;
        this.sampleRateHz = i2;
        this.bytesPerFrame = Util.getPcmFrameSize(2, i3);
        int i6 = this.trimEndFrames;
        int i7 = this.bytesPerFrame;
        this.endBuffer = new byte[i6 * i7];
        this.endBufferSize = 0;
        int i8 = this.trimStartFrames;
        this.pendingTrimStartBytes = i7 * i8;
        boolean z = this.isActive;
        this.isActive = (i8 == 0 && i6 == 0) ? false : true;
        this.receivedInputSinceConfigure = false;
        return z != this.isActive;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void flush() {
        this.outputBuffer = AudioProcessor.EMPTY_BUFFER;
        this.inputEnded = false;
        if (this.receivedInputSinceConfigure) {
            this.pendingTrimStartBytes = 0;
        }
        this.endBufferSize = 0;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public ByteBuffer getOutput() {
        ByteBuffer byteBuffer = this.outputBuffer;
        if (this.inputEnded && this.endBufferSize > 0 && byteBuffer == AudioProcessor.EMPTY_BUFFER) {
            int iCapacity = this.buffer.capacity();
            int i2 = this.endBufferSize;
            if (iCapacity < i2) {
                this.buffer = ByteBuffer.allocateDirect(i2).order(ByteOrder.nativeOrder());
            } else {
                this.buffer.clear();
            }
            this.buffer.put(this.endBuffer, 0, this.endBufferSize);
            this.endBufferSize = 0;
            this.buffer.flip();
            byteBuffer = this.buffer;
        }
        this.outputBuffer = AudioProcessor.EMPTY_BUFFER;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public int getOutputChannelCount() {
        return this.channelCount;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public int getOutputEncoding() {
        return 2;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public int getOutputSampleRateHz() {
        return this.sampleRateHz;
    }

    public long getTrimmedFrameCount() {
        return this.trimmedFrameCount;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isActive() {
        return this.isActive;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isEnded() {
        return this.inputEnded && this.endBufferSize == 0 && this.outputBuffer == AudioProcessor.EMPTY_BUFFER;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueEndOfStream() {
        this.inputEnded = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i2 = iLimit - iPosition;
        if (i2 == 0) {
            return;
        }
        this.receivedInputSinceConfigure = true;
        int iMin = Math.min(i2, this.pendingTrimStartBytes);
        this.trimmedFrameCount += (long) (iMin / this.bytesPerFrame);
        this.pendingTrimStartBytes -= iMin;
        byteBuffer.position(iPosition + iMin);
        if (this.pendingTrimStartBytes > 0) {
            return;
        }
        int i3 = i2 - iMin;
        int length = (this.endBufferSize + i3) - this.endBuffer.length;
        if (this.buffer.capacity() < length) {
            this.buffer = ByteBuffer.allocateDirect(length).order(ByteOrder.nativeOrder());
        } else {
            this.buffer.clear();
        }
        int iConstrainValue = Util.constrainValue(length, 0, this.endBufferSize);
        this.buffer.put(this.endBuffer, 0, iConstrainValue);
        int iConstrainValue2 = Util.constrainValue(length - iConstrainValue, 0, i3);
        byteBuffer.limit(byteBuffer.position() + iConstrainValue2);
        this.buffer.put(byteBuffer);
        byteBuffer.limit(iLimit);
        int i4 = i3 - iConstrainValue2;
        this.endBufferSize -= iConstrainValue;
        byte[] bArr = this.endBuffer;
        System.arraycopy(bArr, iConstrainValue, bArr, 0, this.endBufferSize);
        byteBuffer.get(this.endBuffer, this.endBufferSize, i4);
        this.endBufferSize += i4;
        this.buffer.flip();
        this.outputBuffer = this.buffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void reset() {
        flush();
        this.buffer = AudioProcessor.EMPTY_BUFFER;
        this.channelCount = -1;
        this.sampleRateHz = -1;
        this.endBuffer = Util.EMPTY_BYTE_ARRAY;
    }

    public void resetTrimmedFrameCount() {
        this.trimmedFrameCount = 0L;
    }

    public void setTrimFrameCount(int i2, int i3) {
        this.trimStartFrames = i2;
        this.trimEndFrames = i3;
    }
}
