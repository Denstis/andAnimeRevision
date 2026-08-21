package com.google.android.exoplayer2.video.spherical;

import com.google.android.exoplayer2.BaseRenderer;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class CameraMotionRenderer extends BaseRenderer {
    private static final int SAMPLE_WINDOW_DURATION_US = 100000;
    private final DecoderInputBuffer buffer;
    private final FormatHolder formatHolder;
    private long lastTimestampUs;
    private CameraMotionListener listener;
    private long offsetUs;
    private final ParsableByteArray scratch;

    public CameraMotionRenderer() {
        super(5);
        this.formatHolder = new FormatHolder();
        this.buffer = new DecoderInputBuffer(1);
        this.scratch = new ParsableByteArray();
    }

    private float[] parseMetadata(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() != 16) {
            return null;
        }
        this.scratch.reset(byteBuffer.array(), byteBuffer.limit());
        this.scratch.setPosition(byteBuffer.arrayOffset() + 4);
        float[] fArr = new float[3];
        for (int i2 = 0; i2 < 3; i2++) {
            fArr[i2] = Float.intBitsToFloat(this.scratch.readLittleEndianInt());
        }
        return fArr;
    }

    private void reset() {
        this.lastTimestampUs = 0L;
        CameraMotionListener cameraMotionListener = this.listener;
        if (cameraMotionListener != null) {
            cameraMotionListener.onCameraMotionReset();
        }
    }

    @Override // com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.PlayerMessage.Target
    public void handleMessage(int i2, Object obj) {
        if (i2 == 7) {
            this.listener = (CameraMotionListener) obj;
        } else {
            super.handleMessage(i2, obj);
        }
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isEnded() {
        return hasReadStreamToEnd();
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isReady() {
        return true;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    protected void onDisabled() {
        reset();
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    protected void onPositionReset(long j2, boolean z) {
        reset();
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    protected void onStreamChanged(Format[] formatArr, long j2) {
        this.offsetUs = j2;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public void render(long j2, long j3) {
        float[] metadata;
        while (!hasReadStreamToEnd() && this.lastTimestampUs < 100000 + j2) {
            this.buffer.clear();
            if (readSource(this.formatHolder, this.buffer, false) != -4 || this.buffer.isEndOfStream()) {
                return;
            }
            this.buffer.flip();
            DecoderInputBuffer decoderInputBuffer = this.buffer;
            this.lastTimestampUs = decoderInputBuffer.timeUs;
            if (this.listener != null && (metadata = parseMetadata(decoderInputBuffer.data)) != null) {
                ((CameraMotionListener) Util.castNonNull(this.listener)).onCameraMotion(this.lastTimestampUs - this.offsetUs, metadata);
            }
        }
    }

    @Override // com.google.android.exoplayer2.RendererCapabilities
    public int supportsFormat(Format format) {
        return MimeTypes.APPLICATION_CAMERA_MOTION.equals(format.sampleMimeType) ? 4 : 0;
    }
}
