package com.google.android.exoplayer2.audio;

import android.os.Handler;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.util.Assertions;

/* JADX INFO: loaded from: classes.dex */
public interface AudioRendererEventListener {

    public static final class EventDispatcher {
        private final Handler handler;
        private final AudioRendererEventListener listener;

        public EventDispatcher(Handler handler, AudioRendererEventListener audioRendererEventListener) {
            this.handler = audioRendererEventListener != null ? (Handler) Assertions.checkNotNull(handler) : null;
            this.listener = audioRendererEventListener;
        }

        public /* synthetic */ void a(int i2) {
            this.listener.onAudioSessionId(i2);
        }

        public /* synthetic */ void a(int i2, long j2, long j3) {
            this.listener.onAudioSinkUnderrun(i2, j2, j3);
        }

        public /* synthetic */ void a(Format format) {
            this.listener.onAudioInputFormatChanged(format);
        }

        public /* synthetic */ void a(DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            this.listener.onAudioDisabled(decoderCounters);
        }

        public /* synthetic */ void a(String str, long j2, long j3) {
            this.listener.onAudioDecoderInitialized(str, j2, j3);
        }

        public void audioSessionId(final int i2) {
            if (this.listener != null) {
                this.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f3938b.a(i2);
                    }
                });
            }
        }

        public void audioTrackUnderrun(final int i2, final long j2, final long j3) {
            if (this.listener != null) {
                this.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f3942b.a(i2, j2, j3);
                    }
                });
            }
        }

        public /* synthetic */ void b(DecoderCounters decoderCounters) {
            this.listener.onAudioEnabled(decoderCounters);
        }

        public void decoderInitialized(final String str, final long j2, final long j3) {
            if (this.listener != null) {
                this.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f3932b.a(str, j2, j3);
                    }
                });
            }
        }

        public void disabled(final DecoderCounters decoderCounters) {
            if (this.listener != null) {
                this.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f3940b.a(decoderCounters);
                    }
                });
            }
        }

        public void enabled(final DecoderCounters decoderCounters) {
            if (this.listener != null) {
                this.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f3936b.b(decoderCounters);
                    }
                });
            }
        }

        public void inputFormatChanged(final Format format) {
            if (this.listener != null) {
                this.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f3930b.a(format);
                    }
                });
            }
        }
    }

    void onAudioDecoderInitialized(String str, long j2, long j3);

    void onAudioDisabled(DecoderCounters decoderCounters);

    void onAudioEnabled(DecoderCounters decoderCounters);

    void onAudioInputFormatChanged(Format format);

    void onAudioSessionId(int i2);

    void onAudioSinkUnderrun(int i2, long j2, long j3);
}
