package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;

/* JADX INFO: loaded from: classes.dex */
public final class zzcdm implements zzdwb<PackageInfo> {
    private final zzdwo<Context> zzejy;
    private final zzdwo<ApplicationInfo> zzfuk;

    private zzcdm(zzdwo<Context> zzdwoVar, zzdwo<ApplicationInfo> zzdwoVar2) {
        this.zzejy = zzdwoVar;
        this.zzfuk = zzdwoVar2;
    }

    public static zzcdm zzad(zzdwo<Context> zzdwoVar, zzdwo<ApplicationInfo> zzdwoVar2) {
        return new zzcdm(zzdwoVar, zzdwoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return zzcda.zza(this.zzejy.get(), this.zzfuk.get());
    }
}
