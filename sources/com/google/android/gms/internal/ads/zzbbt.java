package com.google.android.gms.internal.ads;

import android.webkit.ConsoleMessage;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzbbt {
    static final /* synthetic */ int[] zzeei = new int[ConsoleMessage.MessageLevel.values().length];

    static {
        try {
            zzeei[ConsoleMessage.MessageLevel.ERROR.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            zzeei[ConsoleMessage.MessageLevel.WARNING.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            zzeei[ConsoleMessage.MessageLevel.LOG.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            zzeei[ConsoleMessage.MessageLevel.TIP.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            zzeei[ConsoleMessage.MessageLevel.DEBUG.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
    }
}
