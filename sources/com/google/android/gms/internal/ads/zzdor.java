package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzdor {
    static final /* synthetic */ int[] zzhez = new int[zzdob.values().length];

    static {
        try {
            zzhez[zzdob.SHA1.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            zzhez[zzdob.SHA256.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            zzhez[zzdob.SHA384.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            zzhez[zzdob.SHA512.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
    }
}
