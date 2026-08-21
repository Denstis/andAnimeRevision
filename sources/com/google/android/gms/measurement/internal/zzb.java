package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import b.e.a;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzb extends zzf {
    private final Map<String, Long> zza;
    private final Map<String, Integer> zzb;
    private long zzc;

    public zzb(zzga zzgaVar) {
        super(zzgaVar);
        this.zzb = new a();
        this.zza = new a();
    }

    private final void zza(long j2, zzif zzifVar) {
        if (zzifVar == null) {
            zzr().zzx().zza("Not logging ad exposure. No active activity");
            return;
        }
        if (j2 < 1000) {
            zzr().zzx().zza("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j2));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("_xt", j2);
        zzii.zza(zzifVar, bundle, true);
        zzf().zza("am", "_xa", bundle);
    }

    private final void zza(String str, long j2, zzif zzifVar) {
        if (zzifVar == null) {
            zzr().zzx().zza("Not logging ad unit exposure. No active activity");
            return;
        }
        if (j2 < 1000) {
            zzr().zzx().zza("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j2));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_ai", str);
        bundle.putLong("_xt", j2);
        zzii.zza(zzifVar, bundle, true);
        zzf().zza("am", "_xu", bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(long j2) {
        Iterator<String> it = this.zza.keySet().iterator();
        while (it.hasNext()) {
            this.zza.put(it.next(), Long.valueOf(j2));
        }
        if (this.zza.isEmpty()) {
            return;
        }
        this.zzc = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzc(String str, long j2) {
        zzb();
        zzd();
        Preconditions.checkNotEmpty(str);
        if (this.zzb.isEmpty()) {
            this.zzc = j2;
        }
        Integer num = this.zzb.get(str);
        if (num != null) {
            this.zzb.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (this.zzb.size() >= 100) {
            zzr().zzi().zza("Too many ads visible");
        } else {
            this.zzb.put(str, 1);
            this.zza.put(str, Long.valueOf(j2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzd(String str, long j2) {
        zzb();
        zzd();
        Preconditions.checkNotEmpty(str);
        Integer num = this.zzb.get(str);
        if (num == null) {
            zzr().zzf().zza("Call to endAdUnitExposure for unknown ad unit id", str);
            return;
        }
        zzif zzifVarZzab = zzi().zzab();
        int iIntValue = num.intValue() - 1;
        if (iIntValue != 0) {
            this.zzb.put(str, Integer.valueOf(iIntValue));
            return;
        }
        this.zzb.remove(str);
        Long l = this.zza.get(str);
        if (l == null) {
            zzr().zzf().zza("First ad unit exposure time was never set");
        } else {
            long jLongValue = j2 - l.longValue();
            this.zza.remove(str);
            zza(str, jLongValue, zzifVarZzab);
        }
        if (this.zzb.isEmpty()) {
            long j3 = this.zzc;
            if (j3 == 0) {
                zzr().zzf().zza("First ad exposure time was never set");
            } else {
                zza(j2 - j3, zzifVarZzab);
                this.zzc = 0L;
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    public final void zza(long j2) {
        zzif zzifVarZzab = zzi().zzab();
        for (String str : this.zza.keySet()) {
            zza(str, j2 - this.zza.get(str).longValue(), zzifVarZzab);
        }
        if (!this.zza.isEmpty()) {
            zza(j2 - this.zzc, zzifVarZzab);
        }
        zzb(j2);
    }

    public final void zza(String str, long j2) {
        if (str == null || str.length() == 0) {
            zzr().zzf().zza("Ad unit id must be a non-empty string");
        } else {
            zzq().zza(new zza(this, str, j2));
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    public final void zzb(String str, long j2) {
        if (str == null || str.length() == 0) {
            zzr().zzf().zza("Ad unit id must be a non-empty string");
        } else {
            zzq().zza(new zzd(this, str, j2));
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzb zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzhb zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzep zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzij zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzii zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzes zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzjo zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzff zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }
}
