package com.google.android.gms.internal.ads;

import java.security.Provider;
import javax.crypto.Mac;

/* JADX INFO: loaded from: classes.dex */
public final class zzdoa implements zzdnt<Mac> {
    @Override // com.google.android.gms.internal.ads.zzdnt
    public final /* synthetic */ Mac zza(String str, Provider provider) {
        return provider == null ? Mac.getInstance(str) : Mac.getInstance(str, provider);
    }
}
