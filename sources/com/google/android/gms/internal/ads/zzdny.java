package com.google.android.gms.internal.ads;

import java.security.KeyFactory;
import java.security.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class zzdny implements zzdnt<KeyFactory> {
    @Override // com.google.android.gms.internal.ads.zzdnt
    public final /* synthetic */ KeyFactory zza(String str, Provider provider) {
        return provider == null ? KeyFactory.getInstance(str) : KeyFactory.getInstance(str, provider);
    }
}
