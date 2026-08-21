package com.google.android.gms.internal.ads;

import com.google.ads.AdRequest;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzalp {
    private static final /* synthetic */ int[] zzdeq;
    static final /* synthetic */ int[] zzder = new int[AdRequest.ErrorCode.values().length];

    static {
        try {
            zzder[AdRequest.ErrorCode.INTERNAL_ERROR.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            zzder[AdRequest.ErrorCode.INVALID_REQUEST.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            zzder[AdRequest.ErrorCode.NETWORK_ERROR.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            zzder[AdRequest.ErrorCode.NO_FILL.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        zzdeq = new int[AdRequest.Gender.values().length];
        try {
            zzdeq[AdRequest.Gender.FEMALE.ordinal()] = 1;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            zzdeq[AdRequest.Gender.MALE.ordinal()] = 2;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            zzdeq[AdRequest.Gender.UNKNOWN.ordinal()] = 3;
        } catch (NoSuchFieldError unused7) {
        }
    }
}
