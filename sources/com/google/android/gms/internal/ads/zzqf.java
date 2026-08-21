package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzqf {
    private static MessageDigest zzbqd;
    protected Object mLock = new Object();

    abstract byte[] zzbq(String str);

    protected final MessageDigest zzlz() {
        synchronized (this.mLock) {
            if (zzbqd != null) {
                return zzbqd;
            }
            for (int i2 = 0; i2 < 2; i2++) {
                try {
                    zzbqd = MessageDigest.getInstance("MD5");
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return zzbqd;
        }
    }
}
