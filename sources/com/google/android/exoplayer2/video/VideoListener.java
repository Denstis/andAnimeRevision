package com.google.android.exoplayer2.video;

/* JADX INFO: loaded from: classes.dex */
public interface VideoListener {
    void onRenderedFirstFrame();

    void onSurfaceSizeChanged(int i2, int i3);

    void onVideoSizeChanged(int i2, int i3, int i4, float f2);
}
