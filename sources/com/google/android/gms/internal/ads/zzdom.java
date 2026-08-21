package com.google.android.gms.internal.ads;

import java.security.SecureRandom;

/* JADX INFO: loaded from: classes.dex */
final class zzdom extends ThreadLocal<SecureRandom> {
    zzdom() {
    }

    @Override // java.lang.ThreadLocal
    protected final /* synthetic */ SecureRandom initialValue() {
        return zzdoj.zzaxb();
    }
}
