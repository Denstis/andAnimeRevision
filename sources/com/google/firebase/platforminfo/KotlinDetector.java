package com.google.firebase.platforminfo;

import g.e;

/* JADX INFO: loaded from: classes.dex */
public final class KotlinDetector {
    private KotlinDetector() {
    }

    public static String detectVersion() {
        try {
            return e.f4358f.toString();
        } catch (NoClassDefFoundError unused) {
            return null;
        }
    }
}
