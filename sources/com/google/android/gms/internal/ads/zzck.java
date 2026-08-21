package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes.dex */
final class zzck implements Runnable {
    private zzck() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            MessageDigest unused = zzci.zznu = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException unused2) {
        } catch (Throwable th) {
            zzci.zznx.countDown();
            throw th;
        }
        zzci.zznx.countDown();
    }
}
