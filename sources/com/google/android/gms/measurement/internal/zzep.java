package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzle;
import com.google.android.gms.internal.measurement.zzmu;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzep extends zze {
    private String zza;
    private String zzb;
    private int zzc;
    private String zzd;
    private String zze;
    private long zzf;
    private long zzg;
    private List<String> zzh;
    private int zzi;
    private String zzj;
    private String zzk;
    private String zzl;

    zzep(zzga zzgaVar, long j2) {
        super(zzgaVar);
        this.zzg = j2;
    }

    @VisibleForTesting
    private final String zzai() {
        zzey zzeyVarZzj;
        String str;
        if (zzmu.zzb() && zzt().zza(zzap.zzcf)) {
            zzeyVarZzj = zzr().zzx();
            str = "Disabled IID for tests.";
        } else {
            try {
                Class<?> clsLoadClass = zzn().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                if (clsLoadClass == null) {
                    return null;
                }
                try {
                    Object objInvoke = clsLoadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, zzn());
                    if (objInvoke == null) {
                        return null;
                    }
                    try {
                        return (String) clsLoadClass.getDeclaredMethod("getFirebaseInstanceId", new Class[0]).invoke(objInvoke, new Object[0]);
                    } catch (Exception unused) {
                        zzeyVarZzj = zzr().zzk();
                        str = "Failed to retrieve Firebase Instance Id";
                    }
                } catch (Exception unused2) {
                    zzeyVarZzj = zzr().zzj();
                    str = "Failed to obtain Firebase Analytics instance";
                }
            } catch (ClassNotFoundException unused3) {
                return null;
            }
        }
        zzeyVarZzj.zza(str);
        return null;
    }

    final zzm zza(String str) {
        boolean z;
        Boolean boolValueOf;
        Boolean boolZzb;
        zzd();
        zzb();
        String strZzab = zzab();
        String strZzac = zzac();
        zzw();
        String str2 = this.zzb;
        long jZzaf = zzaf();
        zzw();
        String str3 = this.zzd;
        long jZze = zzt().zze();
        zzw();
        zzd();
        if (this.zzf == 0) {
            this.zzf = this.zzx.zzi().zza(zzn(), zzn().getPackageName());
        }
        long j2 = this.zzf;
        boolean zZzab = this.zzx.zzab();
        boolean z2 = !zzs().zzs;
        zzd();
        zzb();
        String strZzai = !this.zzx.zzab() ? null : zzai();
        long jZzac = this.zzx.zzac();
        int iZzag = zzag();
        boolean zBooleanValue = zzt().zzi().booleanValue();
        zzx zzxVarZzt = zzt();
        zzxVarZzt.zzb();
        Boolean boolZzb2 = zzxVarZzt.zzb("google_analytics_ssaid_collection_enabled");
        boolean zBooleanValue2 = Boolean.valueOf(boolZzb2 == null || boolZzb2.booleanValue()).booleanValue();
        zzff zzffVarZzs = zzs();
        zzffVarZzs.zzd();
        boolean z3 = zzffVarZzs.zzg().getBoolean("deferred_analytics_collection", false);
        String strZzad = zzad();
        if (!zzt().zza(zzap.zzba) || (boolZzb = zzt().zzb("google_analytics_default_allow_ad_personalization_signals")) == null) {
            z = z2;
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(!boolZzb.booleanValue());
            z = z2;
        }
        return new zzm(strZzab, strZzac, str2, jZzaf, str3, jZze, j2, str, zZzab, z, strZzai, 0L, jZzac, iZzag, zBooleanValue, zBooleanValue2, z3, strZzad, boolValueOf, this.zzg, zzt().zza(zzap.zzbk) ? this.zzh : null, (zzle.zzb() && zzt().zza(zzap.zzcc)) ? zzae() : null);
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(23:0|2|(1:4)(25:121|6|(1:10)(2:11|(1:13))|119|14|(4:16|(1:18)(1:20)|123|21)|26|(1:31)(1:30)|32|(1:37)(1:36)|38|(1:(1:41)(1:42))|(2:44|(3:46|(2:48|49)|61)(3:(1:(1:60)(1:59))(3:53|(1:55)|61)|49|61))(1:61)|62|(1:66)|125|67|(1:69)(1:70)|71|72|(3:86|(2:88|85)|(1:90))(5:76|(1:78)(1:79)|80|(2:84|85)|(0))|94|(3:96|(3:98|(1:100)(3:102|(3:105|(1:128)(1:129)|103)|127)|101)(0)|(1:109))|110|(1:(2:113|114)(2:115|116))(2:117|118))|5|26|(2:28|31)(0)|32|(2:34|37)(0)|38|(0)|(0)(0)|62|(2:64|66)|125|67|(0)(0)|71|72|(4:74|86|(0)|(0))(0)|94|(0)|110|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0204, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0205, code lost:
    
        zzr().zzf().zza("getGoogleAppId or isMeasurementEnabled failed with exception. appId", com.google.android.gms.measurement.internal.zzew.zza(r0), r2);
     */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01dc A[Catch: IllegalStateException -> 0x0204, TryCatch #3 {IllegalStateException -> 0x0204, blocks: (B:67:0x018d, B:71:0x019a, B:74:0x01a4, B:76:0x01b0, B:80:0x01c7, B:82:0x01cf, B:90:0x01f2, B:84:0x01d5, B:85:0x01d9, B:86:0x01dc, B:88:0x01e2), top: B:125:0x018d }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01e2 A[Catch: IllegalStateException -> 0x0204, TryCatch #3 {IllegalStateException -> 0x0204, blocks: (B:67:0x018d, B:71:0x019a, B:74:0x01a4, B:76:0x01b0, B:80:0x01c7, B:82:0x01cf, B:90:0x01f2, B:84:0x01d5, B:85:0x01d9, B:86:0x01dc, B:88:0x01e2), top: B:125:0x018d }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01f2 A[Catch: IllegalStateException -> 0x0204, TRY_LEAVE, TryCatch #3 {IllegalStateException -> 0x0204, blocks: (B:67:0x018d, B:71:0x019a, B:74:0x01a4, B:76:0x01b0, B:80:0x01c7, B:82:0x01cf, B:90:0x01f2, B:84:0x01d5, B:85:0x01d9, B:86:0x01dc, B:88:0x01e2), top: B:125:0x018d }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0225  */
    @Override // com.google.android.gms.measurement.internal.zze
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final void zzaa() {
        /*
            Method dump skipped, instruction units count: 643
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzep.zzaa():void");
    }

    final String zzab() {
        zzw();
        return this.zza;
    }

    final String zzac() {
        zzw();
        return this.zzj;
    }

    final String zzad() {
        zzw();
        return this.zzk;
    }

    final String zzae() {
        zzw();
        return this.zzl;
    }

    final int zzaf() {
        zzw();
        return this.zzc;
    }

    final int zzag() {
        zzw();
        return this.zzi;
    }

    final List<String> zzah() {
        return this.zzh;
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
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

    @Override // com.google.android.gms.measurement.internal.zze
    protected final boolean zzz() {
        return true;
    }
}
