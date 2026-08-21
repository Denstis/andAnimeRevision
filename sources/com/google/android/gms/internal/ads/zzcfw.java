package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.google.android.gms.internal.ads.zzsf;
import com.google.android.gms.internal.ads.zzsp;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class zzcfw {
    private zzaxl zzdio;
    private zzcfj zzfws;
    private zzsd zzfxa;
    private Context zzlk;

    public zzcfw(Context context, zzaxl zzaxlVar, zzsd zzsdVar, zzcfj zzcfjVar) {
        this.zzlk = context;
        this.zzdio = zzaxlVar;
        this.zzfxa = zzsdVar;
        this.zzfws = zzcfjVar;
    }

    final /* synthetic */ Void zza(SQLiteDatabase sQLiteDatabase) {
        ArrayList<zzsp.zzj.zza> arrayListZzb = zzcfx.zzb(sQLiteDatabase);
        final zzsp.zzj zzjVar = (zzsp.zzj) zzsp.zzj.zznd().zzbv(this.zzlk.getPackageName()).zzbw(Build.MODEL).zzbz(zzcfx.zza(sQLiteDatabase, 0)).zzc(arrayListZzb).zzca(zzcfx.zza(sQLiteDatabase, 1)).zzem(com.google.android.gms.ads.internal.zzq.zzkq().currentTimeMillis()).zzen(zzcfx.zzb(sQLiteDatabase, 2)).zzazr();
        int size = arrayListZzb.size();
        long timestamp = 0;
        int i2 = 0;
        while (i2 < size) {
            zzsp.zzj.zza zzaVar = arrayListZzb.get(i2);
            i2++;
            zzsp.zzj.zza zzaVar2 = zzaVar;
            if (zzaVar2.zznf() == zzsv.ENUM_TRUE && zzaVar2.getTimestamp() > timestamp) {
                timestamp = zzaVar2.getTimestamp();
            }
        }
        if (timestamp != 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("value", Long.valueOf(timestamp));
            sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
        }
        this.zzfxa.zza(new zzsg(zzjVar) { // from class: com.google.android.gms.internal.ads.zzcfy
            private final zzsp.zzj zzfxb;

            {
                this.zzfxb = zzjVar;
            }

            @Override // com.google.android.gms.internal.ads.zzsg
            public final void zza(zztl zztlVar) {
                zztlVar.zzcay = this.zzfxb;
            }
        });
        final zztk zztkVar = new zztk();
        zztkVar.zzcal = Integer.valueOf(this.zzdio.zzdwe);
        zztkVar.zzcam = Integer.valueOf(this.zzdio.zzdwf);
        zztkVar.zzcan = Integer.valueOf(this.zzdio.zzdwg ? 0 : 2);
        this.zzfxa.zza(new zzsg(zztkVar) { // from class: com.google.android.gms.internal.ads.zzcgb
            private final zztk zzfxd;

            {
                this.zzfxd = zztkVar;
            }

            @Override // com.google.android.gms.internal.ads.zzsg
            public final void zza(zztl zztlVar) {
                zztlVar.zzcau.zzcag = this.zzfxd;
            }
        });
        this.zzfxa.zza(zzsf.zza.EnumC0165zza.OFFLINE_UPLOAD);
        sQLiteDatabase.delete("offline_signal_contents", null, null);
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("value", (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues2, "statistic_name = ?", new String[]{"failed_requests"});
        ContentValues contentValues3 = new ContentValues();
        contentValues3.put("value", (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues3, "statistic_name = ?", new String[]{"total_requests"});
        return null;
    }

    public final void zzakr() {
        try {
            this.zzfws.zza(new zzcxn(this) { // from class: com.google.android.gms.internal.ads.zzcfz
                private final zzcfw zzfxc;

                {
                    this.zzfxc = this;
                }

                @Override // com.google.android.gms.internal.ads.zzcxn
                public final Object apply(Object obj) {
                    return this.zzfxc.zza((SQLiteDatabase) obj);
                }
            });
        } catch (Exception e2) {
            String strValueOf = String.valueOf(e2.getMessage());
            zzaxi.zzes(strValueOf.length() != 0 ? "Error in offline signals database startup: ".concat(strValueOf) : new String("Error in offline signals database startup: "));
        }
    }
}
