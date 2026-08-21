package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class zzfm {
    private final String zza;
    private final String zzb;
    private boolean zzc;
    private String zzd;
    private final /* synthetic */ zzff zze;

    public zzfm(zzff zzffVar, String str, String str2) {
        this.zze = zzffVar;
        Preconditions.checkNotEmpty(str);
        this.zza = str;
        this.zzb = null;
    }

    public final String zza() {
        if (!this.zzc) {
            this.zzc = true;
            this.zzd = this.zze.zzg().getString(this.zza, null);
        }
        return this.zzd;
    }

    public final void zza(String str) {
        if (this.zze.zzt().zza(zzap.zzcn) || !zzkm.zzc(str, this.zzd)) {
            SharedPreferences.Editor editorEdit = this.zze.zzg().edit();
            editorEdit.putString(this.zza, str);
            editorEdit.apply();
            this.zzd = str;
        }
    }
}
