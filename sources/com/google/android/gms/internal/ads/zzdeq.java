package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class zzdeq {
    private static final CopyOnWriteArrayList<zzder> zzgsq = new CopyOnWriteArrayList<>();

    public static zzder zzgp(String str) throws GeneralSecurityException {
        for (zzder zzderVar : zzgsq) {
            if (zzderVar.zzgq(str)) {
                return zzderVar;
            }
        }
        String strValueOf = String.valueOf(str);
        throw new GeneralSecurityException(strValueOf.length() != 0 ? "No KMS client does support: ".concat(strValueOf) : new String("No KMS client does support: "));
    }
}
