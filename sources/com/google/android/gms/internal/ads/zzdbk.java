package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzdbk {
    static Object zzd(Object obj, int i2) {
        if (obj != null) {
            return obj;
        }
        StringBuilder sb = new StringBuilder(20);
        sb.append("at index ");
        sb.append(i2);
        throw new NullPointerException(sb.toString());
    }
}
