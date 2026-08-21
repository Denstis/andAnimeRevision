package com.google.android.gms.measurement.internal;

import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.internal.measurement.zzbr;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class zzs {
    private zzbr.zzc zza;
    private Long zzb;
    private long zzc;
    private final /* synthetic */ zzn zzd;

    private zzs(zzn zznVar) {
        this.zzd = zznVar;
    }

    /* synthetic */ zzs(zzn zznVar, zzq zzqVar) {
        this(zznVar);
    }

    final zzbr.zzc zza(String str, zzbr.zzc zzcVar) {
        zzey zzeyVarZzi;
        String str2;
        Object obj;
        String strZzc = zzcVar.zzc();
        List<zzbr.zze> listZza = zzcVar.zza();
        this.zzd.zzg();
        Long l = (Long) zzki.zzb(zzcVar, "_eid");
        boolean z = l != null;
        if (z && strZzc.equals("_ep")) {
            this.zzd.zzg();
            strZzc = (String) zzki.zzb(zzcVar, "_en");
            if (TextUtils.isEmpty(strZzc)) {
                this.zzd.zzr().zzf().zza("Extra parameter without an event name. eventId", l);
                return null;
            }
            if (this.zza == null || this.zzb == null || l.longValue() != this.zzb.longValue()) {
                Pair<zzbr.zzc, Long> pairZza = this.zzd.zzi().zza(str, l);
                if (pairZza == null || (obj = pairZza.first) == null) {
                    this.zzd.zzr().zzf().zza("Extra parameter without existing main event. eventName, eventId", strZzc, l);
                    return null;
                }
                this.zza = (zzbr.zzc) obj;
                this.zzc = ((Long) pairZza.second).longValue();
                this.zzd.zzg();
                this.zzb = (Long) zzki.zzb(this.zza, "_eid");
            }
            this.zzc--;
            if (this.zzc <= 0) {
                zzac zzacVarZzi = this.zzd.zzi();
                zzacVarZzi.zzd();
                zzacVarZzi.zzr().zzx().zza("Clearing complex main event info. appId", str);
                try {
                    zzacVarZzi.c_().execSQL("delete from main_event_params where app_id=?", new String[]{str});
                } catch (SQLiteException e2) {
                    zzacVarZzi.zzr().zzf().zza("Error clearing complex main event", e2);
                }
            } else {
                this.zzd.zzi().zza(str, l, this.zzc, this.zza);
            }
            ArrayList arrayList = new ArrayList();
            for (zzbr.zze zzeVar : this.zza.zza()) {
                this.zzd.zzg();
                if (zzki.zza(zzcVar, zzeVar.zza()) == null) {
                    arrayList.add(zzeVar);
                }
            }
            if (arrayList.isEmpty()) {
                zzeyVarZzi = this.zzd.zzr().zzi();
                str2 = "No unique parameters in main event. eventName";
                zzeyVarZzi.zza(str2, strZzc);
            } else {
                arrayList.addAll(listZza);
                listZza = arrayList;
            }
        } else if (z) {
            this.zzb = l;
            this.zza = zzcVar;
            this.zzd.zzg();
            Object objZzb = zzki.zzb(zzcVar, "_epc");
            this.zzc = ((Long) (objZzb != null ? objZzb : 0L)).longValue();
            if (this.zzc <= 0) {
                zzeyVarZzi = this.zzd.zzr().zzi();
                str2 = "Complex event with zero extra param count. eventName";
                zzeyVarZzi.zza(str2, strZzc);
            } else {
                this.zzd.zzi().zza(str, l, this.zzc, zzcVar);
            }
        }
        return (zzbr.zzc) zzcVar.zzbm().zza(strZzc).zzc().zza(listZza).zzu();
    }
}
