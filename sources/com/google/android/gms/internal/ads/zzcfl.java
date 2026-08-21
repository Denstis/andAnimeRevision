package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: loaded from: classes.dex */
final class zzcfl implements zzdcz<SQLiteDatabase> {
    private final /* synthetic */ zzcxn zzfvz;

    zzcfl(zzcfj zzcfjVar, zzcxn zzcxnVar) {
        this.zzfvz = zzcxnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final /* synthetic */ void onSuccess(SQLiteDatabase sQLiteDatabase) {
        try {
            this.zzfvz.apply(sQLiteDatabase);
        } catch (Exception e2) {
            String strValueOf = String.valueOf(e2.getMessage());
            zzaxi.zzes(strValueOf.length() != 0 ? "Error executing function on offline signal database: ".concat(strValueOf) : new String("Error executing function on offline signal database: "));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzb(Throwable th) {
        String strValueOf = String.valueOf(th.getMessage());
        zzaxi.zzes(strValueOf.length() != 0 ? "Failed to get offline signal database: ".concat(strValueOf) : new String("Failed to get offline signal database: "));
    }
}
