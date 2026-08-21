package com.google.android.exoplayer2.offline;

/* JADX INFO: loaded from: classes.dex */
public interface Downloader {
    void cancel();

    void download();

    float getDownloadPercentage();

    long getDownloadedBytes();

    void remove();
}
