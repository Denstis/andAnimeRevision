package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class zzcei implements zzdwb<zzcej> {
    private final zzdwo<Context> zzejy;
    private final zzdwo<zzasl> zzfaq;

    private zzcei(zzdwo<Context> zzdwoVar, zzdwo<zzasl> zzdwoVar2) {
        this.zzejy = zzdwoVar;
        this.zzfaq = zzdwoVar2;
    }

    public static zzcei zzae(zzdwo<Context> zzdwoVar, zzdwo<zzasl> zzdwoVar2) {
        return new zzcei(zzdwoVar, zzdwoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return new zzcej(this.zzejy.get(), this.zzfaq.get());
    }
}
