package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class SonicAudioProcessor implements AudioProcessor {
    private static final float CLOSE_THRESHOLD = 0.01f;
    public static final float MAXIMUM_PITCH = 8.0f;
    public static final float MAXIMUM_SPEED = 8.0f;
    public static final float MINIMUM_PITCH = 0.1f;
    public static final float MINIMUM_SPEED = 0.1f;
    private static final int MIN_BYTES_FOR_SPEEDUP_CALCULATION = 1024;
    public static final int SAMPLE_RATE_NO_CHANGE = -1;
    private long inputBytes;
    private boolean inputEnded;
    private long outputBytes;
    private Sonic sonic;
    private float speed = 1.0f;
    private float pitch = 1.0f;
    private int channelCount = -1;
    private int sampleRateHz = -1;
    private int outputSampleRateHz = -1;
    private ByteBuffer buffer = AudioProcessor.EMPTY_BUFFER;
    private ShortBuffer shortBuffer = this.buffer.asShortBuffer();
    private ByteBuffer outputBuffer = AudioProcessor.EMPTY_BUFFER;
    private int pendingOutputSampleRateHz = -1;

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean configure(int i2, int i3, int i4) throws AudioProcessor.UnhandledFormatException {
        if (i4 != 2) {
            throw new AudioProcessor.UnhandledFormatException(i2, i3, i4);
        }
        int i5 = this.pendingOutputSampleRateHz;
        if (i5 == -1) {
            i5 = i2;
        }
        if (this.sampleRateHz == i2 && this.channelCount == i3 && this.outputSampleRateHz == i5) {
            return false;
        }
        this.sampleRateHz = i2;
        this.channelCount = i3;
        this.outputSampleRateHz = i5;
        this.sonic = null;
        return true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void flush() {
        if (isActive()) {
            Sonic sonic = this.sonic;
            if (sonic == null) {
                this.sonic = new Sonic(this.sampleRateHz, this.channelCount, this.speed, this.pitch, this.outputSampleRateHz);
            } else {
                sonic.flush();
            }
        }
        this.outputBuffer = AudioProcessor.EMPTY_BUFFER;
        this.inputBytes = 0L;
        this.outputBytes = 0L;
        this.inputEnded = false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public ByteBuffer getOutput() {
        ByteBuffer byteBuffer = this.outputBuffer;
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
        return this.outputSampleRateHz;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isActive() {
        return this.sampleRateHz != -1 && (Math.abs(this.speed - 1.0f) >= CLOSE_THRESHOLD || Math.abs(this.pitch - 1.0f) >= CLOSE_THRESHOLD || this.outputSampleRateHz != this.sampleRateHz);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isEnded() {
        Sonic sonic;
        return this.inputEnded && ((sonic = this.sonic) == null || sonic.getFramesAvailable() == 0);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueEndOfStream() {
        Assertions.checkState(this.sonic != null);
        this.sonic.queueEndOfStream();
        this.inputEnded = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        Assertions.checkState(this.sonic != null);
        if (byteBuffer.hasRemaining()) {
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.inputBytes += (long) iRemaining;
            this.sonic.queueInput(shortBufferAsShortBuffer);
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
        int framesAvailable = this.sonic.getFramesAvailable() * this.channelCount * 2;
        if (framesAvailable > 0) {
            if (this.buffer.capacity() < framesAvailable) {
                this.buffer = ByteBuffer.allocateDirect(framesAvailable).order(ByteOrder.nativeOrder());
                this.shortBuffer = this.buffer.asShortBuffer();
            } else {
                this.buffer.clear();
                this.shortBuffer.clear();
            }
            this.sonic.getOutput(this.shortBuffer);
            this.outputBytes += (long) framesAvailable;
            this.buffer.limit(framesAvailable);
            this.outputBuffer = this.buffer;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void reset() {
        this.speed = 1.0f;
        this.pitch = 1.0f;
        this.channelCount = -1;
        this.sampleRateHz = -1;
        this.outputSampleRateHz = -1;
        this.buffer = AudioProcessor.EMPTY_BUFFER;
        this.shortBuffer = this.buffer.asShortBuffer();
        this.outputBuffer = AudioProcessor.EMPTY_BUFFER;
        this.pendingOutputSampleRateHz = -1;
        this.sonic = null;
        this.inputBytes = 0L;
        this.outputBytes = 0L;
        this.inputEnded = false;
    }

    public long scaleDurationForSpeedup(long j2) {
        long j3 = this.outputBytes;
        if (j3 >= 1024) {
            int i2 = this.outputSampleRateHz;
            int i3 = this.sampleRateHz;
            long j4 = this.inputBytes;
            return i2 == i3 ? Util.scaleLargeTimestamp(j2, j4, j3) : Util.scaleLargeTimestamp(j2, j4 * ((long) i2), j3 * ((long) i3));
        }
        double d2 = this.speed;
        double d3 = j2;
        Double.isNaN(d2);
        Double.isNaN(d3);
        return (long) (d2 * d3);
    }

    public void setOutputSampleRateHz(int i2) {
        this.pendingOutputSampleRateHz = i2;
    }

    public float setPitch(float f2) {
        float fConstrainValue = Util.constrainValue(f2, 0.1f, 8.0f);
        if (this.pitch != fConstrainValue) {
            this.pitch = fConstrainValue;
            this.sonic = null;
        }
        flush();
        return fConstrainValue;
    }

    public float setSpeed(float f2) {
        float fConstrainValue = Util.constrainValue(f2, 0.1f, 8.0f);
        if (this.speed != fConstrainValue) {
            this.speed = fConstrainValue;
            this.sonic = null;
        }
        flush();
        return fConstrainValue;
    }
}
