package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzsp;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class zzcfs implements zzdcz<Bundle> {
    private final /* synthetic */ boolean zzfwo;
    final /* synthetic */ zzcft zzfwp;

    zzcfs(zzcft zzcftVar, boolean z) {
        this.zzfwp = zzcftVar;
        this.zzfwo = z;
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final /* synthetic */ void onSuccess(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzcft zzcftVar = this.zzfwp;
        final ArrayList arrayListZzl = zzcft.zzl(bundle2);
        zzcft zzcftVar2 = this.zzfwp;
        final zzsp.zzj.zzc zzcVarZzk = zzcft.zzk(bundle2);
        final zzsp.zzh zzhVarZzj = this.zzfwp.zzj(bundle2);
        zzcfj zzcfjVar = this.zzfwp.zzfws;
        final boolean z = this.zzfwo;
        zzcfjVar.zza(new zzcxn(this, z, arrayListZzl, zzhVarZzj, zzcVarZzk) { // from class: com.google.android.gms.internal.ads.zzcfv
            private final boolean zzdyt;
            private final zzcfs zzfww;
            private final ArrayList zzfwx;
            private final zzsp.zzh zzfwy;
            private final zzsp.zzj.zzc zzfwz;

            {
                this.zzfww = this;
                this.zzdyt = z;
                this.zzfwx = arrayListZzl;
                this.zzfwy = zzhVarZzj;
                this.zzfwz = zzcVarZzk;
            }

            @Override // com.google.android.gms.internal.ads.zzcxn
            public final Object apply(Object obj) {
                zzcfs zzcfsVar = this.zzfww;
                boolean z2 = this.zzdyt;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                byte[] bArrZza = zzcfsVar.zzfwp.zza(z2, this.zzfwx, this.zzfwy, this.zzfwz);
                ContentValues contentValues = new ContentValues();
                contentValues.put("timestamp", Long.valueOf(com.google.android.gms.ads.internal.zzq.zzkq().currentTimeMillis()));
                contentValues.put("serialized_proto_data", bArrZza);
                sQLiteDatabase.insert("offline_signal_contents", null, contentValues);
                sQLiteDatabase.execSQL(String.format("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = '%s'", "total_requests"));
                if (!z2) {
                    sQLiteDatabase.execSQL(String.format("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = '%s'", "failed_requests"));
                }
                return null;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzb(Throwable th) {
        zzaxi.zzes("Failed to get signals bundle");
    }
}
