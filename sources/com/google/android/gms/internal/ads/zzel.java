package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import com.google.android.gms.internal.ads.zzbo;

/* JADX INFO: loaded from: classes.dex */
public final class zzel extends zzfl {
    private final Activity zzzr;
    private final View zzzs;

    public zzel(zzdx zzdxVar, String str, String str2, zzbo.zza.zzb zzbVar, int i2, int i3, View view, Activity activity) {
        super(zzdxVar, str, str2, zzbVar, i2, 62);
        this.zzzs = view;
        this.zzzr = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzfl
    protected final void zzcu() {
        if (this.zzzs == null) {
            return;
        }
        boolean zBooleanValue = ((Boolean) zzuv.zzon().zzd(zzza.zzcna)).booleanValue();
        Object[] objArr = (Object[]) this.zzaal.invoke(null, this.zzzs, this.zzzr, Boolean.valueOf(zBooleanValue));
        synchronized (this.zzaaa) {
            this.zzaaa.zzbp(((Long) objArr[0]).longValue());
            this.zzaaa.zzbq(((Long) objArr[1]).longValue());
            if (zBooleanValue) {
                this.zzaaa.zzag((String) objArr[2]);
            }
        }
    }
}
