package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbo;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class zzey extends zzfl {
    public zzey(zzdx zzdxVar, String str, String str2, zzbo.zza.zzb zzbVar, int i2, int i3) {
        super(zzdxVar, str, str2, zzbVar, i2, 73);
    }

    @Override // com.google.android.gms.internal.ads.zzfl
    protected final void zzcu() {
        try {
            this.zzaaa.zzh(((Boolean) this.zzaal.invoke(null, this.zzvo.getContext())).booleanValue() ? zzbz.ENUM_TRUE : zzbz.ENUM_FALSE);
        } catch (InvocationTargetException unused) {
            this.zzaaa.zzh(zzbz.ENUM_FAILURE);
        }
    }
}
