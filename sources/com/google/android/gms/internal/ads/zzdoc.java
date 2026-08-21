package com.google.android.gms.internal.ads;

import java.security.Provider;
import java.security.Signature;

/* JADX INFO: loaded from: classes.dex */
public final class zzdoc implements zzdnt<Signature> {
    @Override // com.google.android.gms.internal.ads.zzdnt
    public final /* synthetic */ Signature zza(String str, Provider provider) {
        return provider == null ? Signature.getInstance(str) : Signature.getInstance(str, provider);
    }
}
