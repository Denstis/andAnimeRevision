package com.google.android.exoplayer2.video;

import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.util.Assertions;

/* JADX INFO: loaded from: classes.dex */
public interface VideoRendererEventListener {

    public static final class EventDispatcher {
        private final Handler handler;
        private final VideoRendererEventListener listener;

        public EventDispatcher(Handler handler, VideoRendererEventListener videoRendererEventListener) {
            this.handler = videoRendererEventListener != null ? (Handler) Assertions.checkNotNull(handler) : null;
            this.listener = videoRendererEventListener;
        }

        public /* synthetic */ void a(int i2, int i3, int i4, float f2) {
            this.listener.onVideoSizeChanged(i2, i3, i4, f2);
        }

        public /* synthetic */ void a(int i2, long j2) {
            this.listener.onDroppedFrames(i2, j2);
        }

        public /* synthetic */ void a(Surface surface) {
            this.listener.onRenderedFirstFrame(surface);
        }

        public /* synthetic */ void a(Format format) {
            this.listener.onVideoInputFormatChanged(format);
        }

        public /* synthetic */ void a(DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            this.listener.onVideoDisabled(decoderCounters);
        }

        public /* synthetic */ void a(String str, long j2, long j3) {
            this.listener.onVideoDecoderInitialized(str, j2, j3);
        }

        public /* synthetic */ void b(DecoderCounters decoderCounters) {
            this.listener.onVideoEnabled(decoderCounters);
        }

        public void decoderInitialized(final String str, final long j2, final long j3) {
            if (this.listener != null) {
                this.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f4068b.a(str, j2, j3);
                    }
                });
            }
        }

        public void disabled(final DecoderCounters decoderCounters) {
            if (this.listener != null) {
                this.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f4074b.a(decoderCounters);
                    }
                });
            }
        }

        public void droppedFrames(final int i2, final long j2) {
            if (this.listener != null) {
                this.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f4076b.a(i2, j2);
                    }
                });
            }
        }

        public void enabled(final DecoderCounters decoderCounters) {
            if (this.listener != null) {
                this.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f4072b.b(decoderCounters);
                    }
                });
            }
        }

        public void inputFormatChanged(final Format format) {
            if (this.listener != null) {
                this.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f4059b.a(format);
                    }
                });
            }
        }

        public void renderedFirstFrame(final Surface surface) {
            if (this.listener != null) {
                this.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f4061b.a(surface);
                    }
                });
            }
        }

        public void videoSizeChanged(final int i2, final int i3, final int i4, final float f2) {
            if (this.listener != null) {
                this.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f4063b.a(i2, i3, i4, f2);
                    }
                });
            }
        }
    }

    void onDroppedFrames(int i2, long j2);

    void onRenderedFirstFrame(Surface surface);

    void onVideoDecoderInitialized(String str, long j2, long j3);

    void onVideoDisabled(DecoderCounters decoderCounters);

    void onVideoEnabled(DecoderCounters decoderCounters);

    void onVideoInputFormatChanged(Format format);

    void onVideoSizeChanged(int i2, int i3, int i4, float f2);
}
