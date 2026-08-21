package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class zzceg implements zzdwb<zzcee> {
    private final zzdwo<Context> zzejy;

    public zzceg(zzdwo<Context> zzdwoVar) {
        this.zzejy = zzdwoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return new zzcee(this.zzejy.get());
    }
}
