package com.google.android.exoplayer2;

import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class ExoPlaybackException extends Exception {
    public static final int TYPE_RENDERER = 1;
    public static final int TYPE_SOURCE = 0;
    public static final int TYPE_UNEXPECTED = 2;
    private final Throwable cause;
    public final int rendererIndex;
    public final int type;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Type {
    }

    private ExoPlaybackException(int i2, Throwable th, int i3) {
        super(th);
        this.type = i2;
        this.cause = th;
        this.rendererIndex = i3;
    }

    public static ExoPlaybackException createForRenderer(Exception exc, int i2) {
        return new ExoPlaybackException(1, exc, i2);
    }

    public static ExoPlaybackException createForSource(IOException iOException) {
        return new ExoPlaybackException(0, iOException, -1);
    }

    static ExoPlaybackException createForUnexpected(RuntimeException runtimeException) {
        return new ExoPlaybackException(2, runtimeException, -1);
    }

    public Exception getRendererException() {
        Assertions.checkState(this.type == 1);
        return (Exception) this.cause;
    }

    public IOException getSourceException() {
        Assertions.checkState(this.type == 0);
        return (IOException) this.cause;
    }

    public RuntimeException getUnexpectedException() {
        Assertions.checkState(this.type == 2);
        return (RuntimeException) this.cause;
    }
}
