package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class zzak {
    final String zza;
    final String zzb;
    final long zzc;
    final long zzd;
    final zzam zze;
    private final String zzf;

    zzak(zzga zzgaVar, String str, String str2, String str3, long j2, long j3, Bundle bundle) {
        zzam zzamVar;
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        this.zza = str2;
        this.zzb = str3;
        this.zzf = TextUtils.isEmpty(str) ? null : str;
        this.zzc = j2;
        this.zzd = j3;
        long j4 = this.zzd;
        if (j4 != 0 && j4 > this.zzc) {
            zzgaVar.zzr().zzi().zza("Event created with reverse previous/current timestamps. appId", zzew.zza(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            zzamVar = new zzam(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    zzgaVar.zzr().zzf().zza("Param name can't be null");
                } else {
                    Object objZza = zzgaVar.zzi().zza(next, bundle2.get(next));
                    if (objZza == null) {
                        zzgaVar.zzr().zzi().zza("Param value can't be null", zzgaVar.zzj().zzb(next));
                    } else {
                        zzgaVar.zzi().zza(bundle2, next, objZza);
                    }
                }
                it.remove();
            }
            zzamVar = new zzam(bundle2);
        }
        this.zze = zzamVar;
    }

    private zzak(zzga zzgaVar, String str, String str2, String str3, long j2, long j3, zzam zzamVar) {
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        Preconditions.checkNotNull(zzamVar);
        this.zza = str2;
        this.zzb = str3;
        this.zzf = TextUtils.isEmpty(str) ? null : str;
        this.zzc = j2;
        this.zzd = j3;
        long j4 = this.zzd;
        if (j4 != 0 && j4 > this.zzc) {
            zzgaVar.zzr().zzi().zza("Event created with reverse previous/current timestamps. appId, name", zzew.zza(str2), zzew.zza(str3));
        }
        this.zze = zzamVar;
    }

    public final String toString() {
        String str = this.zza;
        String str2 = this.zzb;
        String strValueOf = String.valueOf(this.zze);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33 + String.valueOf(str2).length() + String.valueOf(strValueOf).length());
        sb.append("Event{appId='");
        sb.append(str);
        sb.append("', name='");
        sb.append(str2);
        sb.append("', params=");
        sb.append(strValueOf);
        sb.append('}');
        return sb.toString();
    }

    final zzak zza(zzga zzgaVar, long j2) {
        return new zzak(zzgaVar, this.zzf, this.zza, this.zzb, this.zzc, j2, this.zze);
    }
}
