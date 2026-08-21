package com.google.android.gms.internal.ads;

import android.provider.Settings;
import com.google.android.gms.internal.ads.zzbo;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class zzek extends zzfl {
    public zzek(zzdx zzdxVar, String str, String str2, zzbo.zza.zzb zzbVar, int i2, int i3) {
        super(zzdxVar, str, str2, zzbVar, i2, 49);
    }

    @Override // com.google.android.gms.internal.ads.zzfl
    protected final void zzcu() throws InvocationTargetException {
        this.zzaaa.zzf(zzbz.ENUM_FAILURE);
        try {
            this.zzaaa.zzf(((Boolean) this.zzaal.invoke(null, this.zzvo.getContext())).booleanValue() ? zzbz.ENUM_TRUE : zzbz.ENUM_FALSE);
        } catch (InvocationTargetException e2) {
            if (!(e2.getTargetException() instanceof Settings.SettingNotFoundException)) {
                throw e2;
            }
        }
    }
}
