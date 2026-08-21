package com.google.android.exoplayer2.audio;

/* JADX INFO: loaded from: classes.dex */
public interface AudioListener {
    void onAudioAttributesChanged(AudioAttributes audioAttributes);

    void onAudioSessionId(int i2);

    void onVolumeChanged(float f2);
}
