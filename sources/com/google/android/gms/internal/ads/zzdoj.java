package com.google.android.gms.internal.ads;

import java.security.SecureRandom;

/* JADX INFO: loaded from: classes.dex */
public final class zzdoj {
    private static final ThreadLocal<SecureRandom> zzhew = new zzdom();

    /* JADX INFO: Access modifiers changed from: private */
    public static SecureRandom zzaxb() {
        SecureRandom secureRandom = new SecureRandom();
        secureRandom.nextLong();
        return secureRandom;
    }

    public static byte[] zzff(int i2) {
        byte[] bArr = new byte[i2];
        zzhew.get().nextBytes(bArr);
        return bArr;
    }
}
