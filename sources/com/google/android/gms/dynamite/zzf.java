package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* JADX INFO: loaded from: classes.dex */
final class zzf implements DynamiteModule.VersionPolicy {
    zzf() {
    }

    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    public final DynamiteModule.VersionPolicy.zzb zza(Context context, String str, DynamiteModule.VersionPolicy.zza zzaVar) {
        int i2;
        DynamiteModule.VersionPolicy.zzb zzbVar = new DynamiteModule.VersionPolicy.zzb();
        zzbVar.zzir = zzaVar.getLocalVersion(context, str);
        zzbVar.zzis = zzaVar.zza(context, str, true);
        if (zzbVar.zzir == 0 && zzbVar.zzis == 0) {
            i2 = 0;
        } else {
            if (zzbVar.zzis >= zzbVar.zzir) {
                zzbVar.zzit = 1;
                return zzbVar;
            }
            i2 = -1;
        }
        zzbVar.zzit = i2;
        return zzbVar;
    }
}
