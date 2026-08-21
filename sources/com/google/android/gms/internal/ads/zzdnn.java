package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzdnn {
    static final /* synthetic */ int[] zzhdi;
    static final /* synthetic */ int[] zzhdj = new int[zzdnq.values().length];

    static {
        try {
            zzhdj[zzdnq.NIST_P256.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            zzhdj[zzdnq.NIST_P384.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            zzhdj[zzdnq.NIST_P521.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        zzhdi = new int[zzdns.values().length];
        try {
            zzhdi[zzdns.UNCOMPRESSED.ordinal()] = 1;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            zzhdi[zzdns.DO_NOT_USE_CRUNCHY_UNCOMPRESSED.ordinal()] = 2;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            zzhdi[zzdns.COMPRESSED.ordinal()] = 3;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
