package com.bumptech.glide.load;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class e extends IOException {
    public e(int i2) {
        this("Http request failed with status code: " + i2, i2);
    }

    public e(String str) {
        this(str, -1);
    }

    public e(String str, int i2) {
        this(str, i2, null);
    }

    public e(String str, int i2, Throwable th) {
        super(str, th);
    }
}
