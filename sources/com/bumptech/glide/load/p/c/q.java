package com.bumptech.glide.load.p.c;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Log;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
final class q {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final File f3834c = new File("/proc/self/fd");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile q f3835d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile int f3836a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile boolean f3837b = true;

    private q() {
    }

    static q a() {
        if (f3835d == null) {
            synchronized (q.class) {
                if (f3835d == null) {
                    f3835d = new q();
                }
            }
        }
        return f3835d;
    }

    private synchronized boolean b() {
        int i2 = this.f3836a + 1;
        this.f3836a = i2;
        if (i2 >= 50) {
            this.f3836a = 0;
            int length = f3834c.list().length;
            this.f3837b = length < 700;
            if (!this.f3837b && Log.isLoggable("Downsampler", 5)) {
                Log.w("Downsampler", "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit 700");
            }
        }
        return this.f3837b;
    }

    @TargetApi(26)
    boolean a(int i2, int i3, BitmapFactory.Options options, com.bumptech.glide.load.b bVar, boolean z, boolean z2) {
        if (!z || Build.VERSION.SDK_INT < 26 || z2) {
            return false;
        }
        boolean z3 = i2 >= 128 && i3 >= 128 && b();
        if (z3) {
            options.inPreferredConfig = Bitmap.Config.HARDWARE;
            options.inMutable = false;
        }
        return z3;
    }
}
