package com.bumptech.glide.load;

import com.google.android.exoplayer2.C;
import java.nio.charset.Charset;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public interface g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f3378a = Charset.forName(C.UTF8_NAME);

    void a(MessageDigest messageDigest);

    boolean equals(Object obj);

    int hashCode();
}
