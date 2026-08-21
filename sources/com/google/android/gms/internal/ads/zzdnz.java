package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class zzdnz implements zzdnt<MessageDigest> {
    @Override // com.google.android.gms.internal.ads.zzdnt
    public final /* synthetic */ MessageDigest zza(String str, Provider provider) {
        return provider == null ? MessageDigest.getInstance(str) : MessageDigest.getInstance(str, provider);
    }
}
