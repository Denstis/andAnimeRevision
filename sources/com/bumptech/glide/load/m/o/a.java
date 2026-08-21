package com.bumptech.glide.load.m.o;

import java.io.File;

/* JADX INFO: loaded from: classes.dex */
class a {
    a() {
    }

    public File a(String str) {
        return new File(str);
    }

    public boolean a(File file) {
        return file.exists();
    }

    public long b(File file) {
        return file.length();
    }
}
