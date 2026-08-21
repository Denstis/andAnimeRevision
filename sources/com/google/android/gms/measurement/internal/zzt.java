package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzbj;
import com.google.android.gms.internal.measurement.zzbr;

/* JADX INFO: loaded from: classes.dex */
final class zzt extends zzu {
    private zzbj.zze zzg;
    private final /* synthetic */ zzn zzh;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzt(zzn zznVar, String str, int i2, zzbj.zze zzeVar) {
        super(str, i2);
        this.zzh = zznVar;
        this.zzg = zzeVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzu
    final int zza() {
        return this.zzg.zzb();
    }

    final boolean zza(Long l, zzbr.zzk zzkVar, boolean z) {
        zzey zzeyVarZzi;
        String strZzc;
        String str;
        Boolean boolZza;
        boolean zZzd = this.zzh.zzt().zzd(this.zza, zzap.zzbl);
        boolean zZzd2 = this.zzh.zzt().zzd(this.zza, zzap.zzbr);
        boolean zZze = this.zzg.zze();
        boolean zZzf = this.zzg.zzf();
        boolean z2 = zZzd && this.zzg.zzh();
        boolean z3 = zZze || zZzf || z2;
        Boolean boolZza2 = null;
        boolZza2 = null;
        if (z && !z3) {
            this.zzh.zzr().zzx().zza("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(this.zzb), this.zzg.zza() ? Integer.valueOf(this.zzg.zzb()) : null);
            return true;
        }
        zzbj.zzc zzcVarZzd = this.zzg.zzd();
        boolean zZzf2 = zzcVarZzd.zzf();
        if (zzkVar.zzf()) {
            if (zzcVarZzd.zzc()) {
                boolZza = zzu.zza(zzkVar.zzg(), zzcVarZzd.zzd());
                boolZza2 = zzu.zza(boolZza, zZzf2);
            } else {
                zzeyVarZzi = this.zzh.zzr().zzi();
                strZzc = this.zzh.zzo().zzc(zzkVar.zzc());
                str = "No number filter for long property. property";
                zzeyVarZzi.zza(str, strZzc);
            }
        } else if (!zzkVar.zzh()) {
            if (zzkVar.zzd()) {
                if (zzcVarZzd.zza()) {
                    boolZza = zzu.zza(zzkVar.zze(), zzcVarZzd.zzb(), this.zzh.zzr());
                } else if (!zzcVarZzd.zzc()) {
                    zzeyVarZzi = this.zzh.zzr().zzi();
                    strZzc = this.zzh.zzo().zzc(zzkVar.zzc());
                    str = "No string or number filter defined. property";
                } else if (zzki.zza(zzkVar.zze())) {
                    boolZza = zzu.zza(zzkVar.zze(), zzcVarZzd.zzd());
                } else {
                    this.zzh.zzr().zzi().zza("Invalid user property value for Numeric number filter. property, value", this.zzh.zzo().zzc(zzkVar.zzc()), zzkVar.zze());
                }
                boolZza2 = zzu.zza(boolZza, zZzf2);
            } else {
                zzeyVarZzi = this.zzh.zzr().zzi();
                strZzc = this.zzh.zzo().zzc(zzkVar.zzc());
                str = "User property has no value, property";
            }
            zzeyVarZzi.zza(str, strZzc);
        } else if (zzcVarZzd.zzc()) {
            boolZza = zzu.zza(zzkVar.zzi(), zzcVarZzd.zzd());
            boolZza2 = zzu.zza(boolZza, zZzf2);
        } else {
            zzeyVarZzi = this.zzh.zzr().zzi();
            strZzc = this.zzh.zzo().zzc(zzkVar.zzc());
            str = "No number filter for double property. property";
            zzeyVarZzi.zza(str, strZzc);
        }
        this.zzh.zzr().zzx().zza("Property filter result", boolZza2 == null ? "null" : boolZza2);
        if (boolZza2 == null) {
            return false;
        }
        this.zzc = true;
        if (zZzd && z2 && !boolZza2.booleanValue()) {
            return true;
        }
        if (!z || this.zzg.zze()) {
            this.zzd = boolZza2;
        }
        if (boolZza2.booleanValue() && z3 && zzkVar.zza()) {
            long jZzb = zzkVar.zzb();
            if (zZzd2 && l != null) {
                jZzb = l.longValue();
            }
            Long lValueOf = Long.valueOf(jZzb);
            if (zZzf) {
                this.zzf = lValueOf;
            } else {
                this.zze = lValueOf;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.measurement.internal.zzu
    final boolean zzb() {
        return true;
    }
}
