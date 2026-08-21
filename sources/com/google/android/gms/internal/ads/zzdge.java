package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzdge {
    static final /* synthetic */ int[] zzgtk;
    static final /* synthetic */ int[] zzgtl;
    static final /* synthetic */ int[] zzgtm = new int[zzdhz.values().length];

    static {
        try {
            zzgtm[zzdhz.UNCOMPRESSED.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            zzgtm[zzdhz.DO_NOT_USE_CRUNCHY_UNCOMPRESSED.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            zzgtm[zzdhz.COMPRESSED.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        zzgtl = new int[zzdjb.values().length];
        try {
            zzgtl[zzdjb.NIST_P256.ordinal()] = 1;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            zzgtl[zzdjb.NIST_P384.ordinal()] = 2;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            zzgtl[zzdjb.NIST_P521.ordinal()] = 3;
        } catch (NoSuchFieldError unused6) {
        }
        zzgtk = new int[zzdjg.values().length];
        try {
            zzgtk[zzdjg.SHA1.ordinal()] = 1;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            zzgtk[zzdjg.SHA256.ordinal()] = 2;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            zzgtk[zzdjg.SHA512.ordinal()] = 3;
        } catch (NoSuchFieldError unused9) {
        }
    }
}
