package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: loaded from: classes.dex */
public final class zzes extends zze {
    private final zzer zza;
    private boolean zzb;

    zzes(zzga zzgaVar) {
        super(zzgaVar);
        this.zza = new zzer(this, zzn(), "google_app_measurement_local.db");
    }

    private static long zza(SQLiteDatabase sQLiteDatabase) {
        Cursor cursorQuery = null;
        try {
            cursorQuery = sQLiteDatabase.query("messages", new String[]{"rowid"}, "type=?", new String[]{"3"}, null, null, "rowid desc", "1");
            if (cursorQuery.moveToFirst()) {
                return cursorQuery.getLong(0);
            }
            if (cursorQuery == null) {
                return -1L;
            }
            cursorQuery.close();
            return -1L;
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x012e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x012e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0111 A[PHI: r7 r10
      0x0111: PHI (r7v4 int) = (r7v2 int), (r7v1 int) binds: [B:72:0x010f, B:79:0x012b] A[DONT_GENERATE, DONT_INLINE]
      0x0111: PHI (r10v5 android.database.sqlite.SQLiteDatabase) = (r10v3 android.database.sqlite.SQLiteDatabase), (r10v6 android.database.sqlite.SQLiteDatabase) binds: [B:72:0x010f, B:79:0x012b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x00dd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r13v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r8v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean zza(int r18, byte[] r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 336
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzes.zza(int, byte[]):boolean");
    }

    @VisibleForTesting
    private final SQLiteDatabase zzae() {
        if (this.zzb) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.zza.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.zzb = true;
        return null;
    }

    @VisibleForTesting
    private final boolean zzaf() {
        return zzn().getDatabasePath("google_app_measurement_local.db").exists();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x01e4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0238 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0238 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0238 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v11, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.List<com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable>] */
    /* JADX WARN: Type inference failed for: r3v11, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable> zza(int r25) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 603
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzes.zza(int):java.util.List");
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    public final boolean zza(zzan zzanVar) {
        Parcel parcelObtain = Parcel.obtain();
        zzanVar.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        if (bArrMarshall.length <= 131072) {
            return zza(0, bArrMarshall);
        }
        zzr().zzi().zza("Event is too long for local database. Sending event directly to service");
        return false;
    }

    public final boolean zza(zzkl zzklVar) {
        Parcel parcelObtain = Parcel.obtain();
        zzklVar.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        if (bArrMarshall.length <= 131072) {
            return zza(1, bArrMarshall);
        }
        zzr().zzi().zza("User property too long for local database. Sending directly to service");
        return false;
    }

    public final boolean zza(zzv zzvVar) {
        zzp();
        byte[] bArrZza = zzkm.zza((Parcelable) zzvVar);
        if (bArrZza.length <= 131072) {
            return zza(2, bArrZza);
        }
        zzr().zzi().zza("Conditional user property too long for local database. Sending directly to service");
        return false;
    }

    public final void zzab() {
        zzb();
        zzd();
        try {
            int iDelete = zzae().delete("messages", null, null) + 0;
            if (iDelete > 0) {
                zzr().zzx().zza("Reset local analytics data. records", Integer.valueOf(iDelete));
            }
        } catch (SQLiteException e2) {
            zzr().zzf().zza("Error resetting local analytics data. error", e2);
        }
    }

    public final boolean zzac() {
        return zza(3, new byte[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x006f A[PHI: r4
      0x006f: PHI (r4v4 int) = (r4v1 int), (r4v2 int), (r4v1 int) binds: [B:37:0x0081, B:33:0x006d, B:30:0x0066] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zzad() {
        /*
            r11 = this;
            java.lang.String r0 = "Error deleting app launch break from local database"
            r11.zzd()
            r11.zzb()
            boolean r1 = r11.zzb
            r2 = 0
            if (r1 == 0) goto Le
            return r2
        Le:
            boolean r1 = r11.zzaf()
            if (r1 != 0) goto L15
            return r2
        L15:
            r1 = 5
            r3 = 0
            r4 = 5
        L18:
            if (r3 >= r1) goto L8d
            r5 = 0
            r6 = 1
            android.database.sqlite.SQLiteDatabase r5 = r11.zzae()     // Catch: java.lang.Throwable -> L49 android.database.sqlite.SQLiteException -> L4b android.database.sqlite.SQLiteDatabaseLockedException -> L67 android.database.sqlite.SQLiteFullException -> L73
            if (r5 != 0) goto L2a
            r11.zzb = r6     // Catch: java.lang.Throwable -> L49 android.database.sqlite.SQLiteException -> L4b android.database.sqlite.SQLiteDatabaseLockedException -> L67 android.database.sqlite.SQLiteFullException -> L73
            if (r5 == 0) goto L29
            r5.close()
        L29:
            return r2
        L2a:
            r5.beginTransaction()     // Catch: java.lang.Throwable -> L49 android.database.sqlite.SQLiteException -> L4b android.database.sqlite.SQLiteDatabaseLockedException -> L67 android.database.sqlite.SQLiteFullException -> L73
            java.lang.String r7 = "messages"
            java.lang.String r8 = "type == ?"
            java.lang.String[] r9 = new java.lang.String[r6]     // Catch: java.lang.Throwable -> L49 android.database.sqlite.SQLiteException -> L4b android.database.sqlite.SQLiteDatabaseLockedException -> L67 android.database.sqlite.SQLiteFullException -> L73
            r10 = 3
            java.lang.String r10 = java.lang.Integer.toString(r10)     // Catch: java.lang.Throwable -> L49 android.database.sqlite.SQLiteException -> L4b android.database.sqlite.SQLiteDatabaseLockedException -> L67 android.database.sqlite.SQLiteFullException -> L73
            r9[r2] = r10     // Catch: java.lang.Throwable -> L49 android.database.sqlite.SQLiteException -> L4b android.database.sqlite.SQLiteDatabaseLockedException -> L67 android.database.sqlite.SQLiteFullException -> L73
            r5.delete(r7, r8, r9)     // Catch: java.lang.Throwable -> L49 android.database.sqlite.SQLiteException -> L4b android.database.sqlite.SQLiteDatabaseLockedException -> L67 android.database.sqlite.SQLiteFullException -> L73
            r5.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L49 android.database.sqlite.SQLiteException -> L4b android.database.sqlite.SQLiteDatabaseLockedException -> L67 android.database.sqlite.SQLiteFullException -> L73
            r5.endTransaction()     // Catch: java.lang.Throwable -> L49 android.database.sqlite.SQLiteException -> L4b android.database.sqlite.SQLiteDatabaseLockedException -> L67 android.database.sqlite.SQLiteFullException -> L73
            if (r5 == 0) goto L48
            r5.close()
        L48:
            return r6
        L49:
            r0 = move-exception
            goto L87
        L4b:
            r7 = move-exception
            if (r5 == 0) goto L57
            boolean r8 = r5.inTransaction()     // Catch: java.lang.Throwable -> L49
            if (r8 == 0) goto L57
            r5.endTransaction()     // Catch: java.lang.Throwable -> L49
        L57:
            com.google.android.gms.measurement.internal.zzew r8 = r11.zzr()     // Catch: java.lang.Throwable -> L49
            com.google.android.gms.measurement.internal.zzey r8 = r8.zzf()     // Catch: java.lang.Throwable -> L49
            r8.zza(r0, r7)     // Catch: java.lang.Throwable -> L49
            r11.zzb = r6     // Catch: java.lang.Throwable -> L49
            if (r5 == 0) goto L84
            goto L6f
        L67:
            long r6 = (long) r4     // Catch: java.lang.Throwable -> L49
            android.os.SystemClock.sleep(r6)     // Catch: java.lang.Throwable -> L49
            int r4 = r4 + 20
            if (r5 == 0) goto L84
        L6f:
            r5.close()
            goto L84
        L73:
            r7 = move-exception
            com.google.android.gms.measurement.internal.zzew r8 = r11.zzr()     // Catch: java.lang.Throwable -> L49
            com.google.android.gms.measurement.internal.zzey r8 = r8.zzf()     // Catch: java.lang.Throwable -> L49
            r8.zza(r0, r7)     // Catch: java.lang.Throwable -> L49
            r11.zzb = r6     // Catch: java.lang.Throwable -> L49
            if (r5 == 0) goto L84
            goto L6f
        L84:
            int r3 = r3 + 1
            goto L18
        L87:
            if (r5 == 0) goto L8c
            r5.close()
        L8c:
            throw r0
        L8d:
            com.google.android.gms.measurement.internal.zzew r0 = r11.zzr()
            com.google.android.gms.measurement.internal.zzey r0 = r0.zzi()
            java.lang.String r1 = "Error deleting app launch break from local database in reasonable time"
            r0.zza(r1)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzes.zzad():boolean");
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
        return false;
    }
}
