package com.google.android.gms.internal.ads;

import com.google.ads.AdRequest;
import com.google.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzalm {
    public static int zza(AdRequest.ErrorCode errorCode) {
        int i2 = zzalp.zzder[errorCode.ordinal()];
        if (i2 == 2) {
            return 1;
        }
        if (i2 != 3) {
            return i2 != 4 ? 0 : 3;
        }
        return 2;
    }

    public static MediationAdRequest zza(zztx zztxVar, boolean z) {
        List<String> list = zztxVar.zzcbz;
        HashSet hashSet = list != null ? new HashSet(list) : null;
        Date date = new Date(zztxVar.zzcbx);
        int i2 = zztxVar.zzcby;
        return new MediationAdRequest(date, i2 != 1 ? i2 != 2 ? AdRequest.Gender.UNKNOWN : AdRequest.Gender.FEMALE : AdRequest.Gender.MALE, hashSet, z, zztxVar.zzng);
    }
}
