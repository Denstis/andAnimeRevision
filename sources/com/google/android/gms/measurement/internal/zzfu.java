package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import b.e.a;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzbo;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzfu extends zzkb implements zzz {

    @VisibleForTesting
    private static int zzb = 65535;

    @VisibleForTesting
    private static int zzc = 2;
    private final Map<String, Map<String, String>> zzd;
    private final Map<String, Map<String, Boolean>> zze;
    private final Map<String, Map<String, Boolean>> zzf;
    private final Map<String, zzbo.zzb> zzg;
    private final Map<String, Map<String, Integer>> zzh;
    private final Map<String, String> zzi;

    zzfu(zzke zzkeVar) {
        super(zzkeVar);
        this.zzd = new a();
        this.zze = new a();
        this.zzf = new a();
        this.zzg = new a();
        this.zzi = new a();
        this.zzh = new a();
    }

    private final zzbo.zzb zza(String str, byte[] bArr) {
        if (bArr == null) {
            return zzbo.zzb.zzj();
        }
        try {
            zzbo.zzb zzbVar = (zzbo.zzb) ((com.google.android.gms.internal.measurement.zzfd) ((zzbo.zzb.zza) zzki.zza(zzbo.zzb.zzi(), bArr)).zzu());
            zzr().zzx().zza("Parsed config. version, gmp_app_id", zzbVar.zza() ? Long.valueOf(zzbVar.zzb()) : null, zzbVar.zzc() ? zzbVar.zzd() : null);
            return zzbVar;
        } catch (com.google.android.gms.internal.measurement.zzfo | RuntimeException e2) {
            zzr().zzi().zza("Unable to merge remote config. appId", zzew.zza(str), e2);
            return zzbo.zzb.zzj();
        }
    }

    private static Map<String, String> zza(zzbo.zzb zzbVar) {
        a aVar = new a();
        if (zzbVar != null) {
            for (zzbo.zzc zzcVar : zzbVar.zze()) {
                aVar.put(zzcVar.zza(), zzcVar.zzb());
            }
        }
        return aVar;
    }

    private final void zza(String str, zzbo.zzb.zza zzaVar) {
        a aVar = new a();
        a aVar2 = new a();
        a aVar3 = new a();
        if (zzaVar != null) {
            for (int i2 = 0; i2 < zzaVar.zza(); i2++) {
                zzbo.zza.C0173zza c0173zzaZzbm = zzaVar.zza(i2).zzbm();
                if (TextUtils.isEmpty(c0173zzaZzbm.zza())) {
                    zzr().zzi().zza("EventConfig contained null event name");
                } else {
                    String strZzb = zzgv.zzb(c0173zzaZzbm.zza());
                    if (!TextUtils.isEmpty(strZzb)) {
                        c0173zzaZzbm = c0173zzaZzbm.zza(strZzb);
                        zzaVar.zza(i2, c0173zzaZzbm);
                    }
                    aVar.put(c0173zzaZzbm.zza(), Boolean.valueOf(c0173zzaZzbm.zzb()));
                    aVar2.put(c0173zzaZzbm.zza(), Boolean.valueOf(c0173zzaZzbm.zzc()));
                    if (c0173zzaZzbm.zzd()) {
                        if (c0173zzaZzbm.zze() < zzc || c0173zzaZzbm.zze() > zzb) {
                            zzr().zzi().zza("Invalid sampling rate. Event name, sample rate", c0173zzaZzbm.zza(), Integer.valueOf(c0173zzaZzbm.zze()));
                        } else {
                            aVar3.put(c0173zzaZzbm.zza(), Integer.valueOf(c0173zzaZzbm.zze()));
                        }
                    }
                }
            }
        }
        this.zze.put(str, aVar);
        this.zzf.put(str, aVar2);
        this.zzh.put(str, aVar3);
    }

    private final void zzi(String str) throws Throwable {
        zzak();
        zzd();
        Preconditions.checkNotEmpty(str);
        if (this.zzg.get(str) == null) {
            byte[] bArrZzd = zzi().zzd(str);
            if (bArrZzd != null) {
                zzbo.zzb.zza zzaVarZzbm = zza(str, bArrZzd).zzbm();
                zza(str, zzaVarZzbm);
                this.zzd.put(str, zza((zzbo.zzb) zzaVarZzbm.zzu()));
                this.zzg.put(str, (zzbo.zzb) zzaVarZzbm.zzu());
                this.zzi.put(str, null);
                return;
            }
            this.zzd.put(str, null);
            this.zze.put(str, null);
            this.zzf.put(str, null);
            this.zzg.put(str, null);
            this.zzi.put(str, null);
            this.zzh.put(str, null);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzkc
    public final /* bridge */ /* synthetic */ zzn e_() {
        return super.e_();
    }

    protected final zzbo.zzb zza(String str) {
        zzak();
        zzd();
        Preconditions.checkNotEmpty(str);
        zzi(str);
        return this.zzg.get(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzz
    public final String zza(String str, String str2) throws Throwable {
        zzd();
        zzi(str);
        Map<String, String> map = this.zzd.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    protected final boolean zza(String str, byte[] bArr, String str2) {
        zzak();
        zzd();
        Preconditions.checkNotEmpty(str);
        zzbo.zzb.zza zzaVarZzbm = zza(str, bArr).zzbm();
        if (zzaVarZzbm == null) {
            return false;
        }
        zza(str, zzaVarZzbm);
        this.zzg.put(str, (zzbo.zzb) zzaVarZzbm.zzu());
        this.zzi.put(str, str2);
        this.zzd.put(str, zza((zzbo.zzb) zzaVarZzbm.zzu()));
        zzi().zzb(str, new ArrayList(zzaVarZzbm.zzb()));
        try {
            zzaVarZzbm.zzc();
            bArr = ((zzbo.zzb) ((com.google.android.gms.internal.measurement.zzfd) zzaVarZzbm.zzu())).zzbi();
        } catch (RuntimeException e2) {
            zzr().zzi().zza("Unable to serialize reduced-size config. Storing full config instead. appId", zzew.zza(str), e2);
        }
        zzac zzacVarZzi = zzi();
        Preconditions.checkNotEmpty(str);
        zzacVarZzi.zzd();
        zzacVarZzi.zzak();
        new ContentValues().put("remote_config", bArr);
        try {
            if (zzacVarZzi.c_().update("apps", r2, "app_id = ?", new String[]{str}) == 0) {
                zzacVarZzi.zzr().zzf().zza("Failed to update remote config (got 0). appId", zzew.zza(str));
            }
        } catch (SQLiteException e3) {
            zzacVarZzi.zzr().zzf().zza("Error storing remote config. appId", zzew.zza(str), e3);
        }
        this.zzg.put(str, (zzbo.zzb) zzaVarZzbm.zzu());
        return true;
    }

    protected final String zzb(String str) {
        zzd();
        return this.zzi.get(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    final boolean zzb(String str, String str2) throws Throwable {
        Boolean bool;
        zzd();
        zzi(str);
        if (zzg(str) && zzkm.zze(str2)) {
            return true;
        }
        if (zzh(str) && zzkm.zza(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.zze.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    protected final void zzc(String str) {
        zzd();
        this.zzi.put(str, null);
    }

    final boolean zzc(String str, String str2) throws Throwable {
        Boolean bool;
        zzd();
        zzi(str);
        if (FirebaseAnalytics.Event.ECOMMERCE_PURCHASE.equals(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.zzf.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    final int zzd(String str, String str2) throws Throwable {
        Integer num;
        zzd();
        zzi(str);
        Map<String, Integer> map = this.zzh.get(str);
        if (map == null || (num = map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    final void zzd(String str) {
        zzd();
        this.zzg.remove(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzkb
    protected final boolean zze() {
        return false;
    }

    final boolean zze(String str) {
        zzd();
        zzbo.zzb zzbVarZza = zza(str);
        if (zzbVarZza == null) {
            return false;
        }
        return zzbVarZza.zzh();
    }

    final long zzf(String str) throws Throwable {
        String strZza = zza(str, "measurement.account.time_zone_offset_minutes");
        if (TextUtils.isEmpty(strZza)) {
            return 0L;
        }
        try {
            return Long.parseLong(strZza);
        } catch (NumberFormatException e2) {
            zzr().zzi().zza("Unable to parse timezone offset. appId", zzew.zza(str), e2);
            return 0L;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzkc
    public final /* bridge */ /* synthetic */ zzki zzg() {
        return super.zzg();
    }

    final boolean zzg(String str) {
        return "1".equals(zza(str, "measurement.upload.blacklist_internal"));
    }

    final boolean zzh(String str) {
        return "1".equals(zza(str, "measurement.upload.blacklist_public"));
    }

    @Override // com.google.android.gms.measurement.internal.zzkc
    public final /* bridge */ /* synthetic */ zzac zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzkc
    public final /* bridge */ /* synthetic */ zzfu zzj() {
        return super.zzj();
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
