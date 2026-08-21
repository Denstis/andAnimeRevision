package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import b.e.a;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzbj;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.android.gms.internal.measurement.zzle;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzac extends zzkb {
    private static final String[] zzb = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};
    private static final String[] zzc = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};
    private static final String[] zzd = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;"};
    private static final String[] zze = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};
    private static final String[] zzf = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};
    private static final String[] zzg = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};
    private static final String[] zzh = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};
    private static final String[] zzi = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};
    private final zzad zzj;
    private final zzjx zzk;

    zzac(zzke zzkeVar) {
        super(zzkeVar);
        this.zzk = new zzjx(zzm());
        this.zzj = new zzad(this, zzn(), "google_app_measurement.db");
    }

    private final long zza(String str, String[] strArr, long j2) {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = c_().rawQuery(str, strArr);
                if (cursorRawQuery.moveToFirst()) {
                    return cursorRawQuery.getLong(0);
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return j2;
            } catch (SQLiteException e2) {
                zzr().zzf().zza("Database error", str, e2);
                throw e2;
            }
        } finally {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        }
    }

    @VisibleForTesting
    private final Object zza(Cursor cursor, int i2) {
        int type = cursor.getType(i2);
        if (type == 0) {
            zzr().zzf().zza("Loaded invalid null value from database");
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i2));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i2));
        }
        if (type == 3) {
            return cursor.getString(i2);
        }
        if (type != 4) {
            zzr().zzf().zza("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
            return null;
        }
        zzr().zzf().zza("Loaded invalid blob type value, ignoring it");
        return null;
    }

    private static void zza(ContentValues contentValues, String str, Object obj) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(obj);
        if (obj instanceof String) {
            contentValues.put(str, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(str, (Long) obj);
        } else {
            if (!(obj instanceof Double)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            contentValues.put(str, (Double) obj);
        }
    }

    private final boolean zza(String str, int i2, zzbj.zzb zzbVar) {
        zzak();
        zzd();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzbVar);
        if (TextUtils.isEmpty(zzbVar.zzc())) {
            zzr().zzi().zza("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", zzew.zza(str), Integer.valueOf(i2), String.valueOf(zzbVar.zza() ? Integer.valueOf(zzbVar.zzb()) : null));
            return false;
        }
        byte[] bArrZzbi = zzbVar.zzbi();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i2));
        contentValues.put("filter_id", zzbVar.zza() ? Integer.valueOf(zzbVar.zzb()) : null);
        contentValues.put("event_name", zzbVar.zzc());
        if (zzt().zze(str, zzap.zzbl)) {
            contentValues.put("session_scoped", zzbVar.zzj() ? Boolean.valueOf(zzbVar.zzk()) : null);
        }
        contentValues.put("data", bArrZzbi);
        try {
            if (c_().insertWithOnConflict("event_filters", null, contentValues, 5) != -1) {
                return true;
            }
            zzr().zzf().zza("Failed to insert event filter (got -1). appId", zzew.zza(str));
            return true;
        } catch (SQLiteException e2) {
            zzr().zzf().zza("Error storing event filter. appId", zzew.zza(str), e2);
            return false;
        }
    }

    private final boolean zza(String str, int i2, zzbj.zze zzeVar) {
        zzak();
        zzd();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzeVar);
        if (TextUtils.isEmpty(zzeVar.zzc())) {
            zzr().zzi().zza("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", zzew.zza(str), Integer.valueOf(i2), String.valueOf(zzeVar.zza() ? Integer.valueOf(zzeVar.zzb()) : null));
            return false;
        }
        byte[] bArrZzbi = zzeVar.zzbi();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i2));
        contentValues.put("filter_id", zzeVar.zza() ? Integer.valueOf(zzeVar.zzb()) : null);
        contentValues.put("property_name", zzeVar.zzc());
        if (zzt().zze(str, zzap.zzbl)) {
            contentValues.put("session_scoped", zzeVar.zzg() ? Boolean.valueOf(zzeVar.zzh()) : null);
        }
        contentValues.put("data", bArrZzbi);
        try {
            if (c_().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                return true;
            }
            zzr().zzf().zza("Failed to insert property filter (got -1). appId", zzew.zza(str));
            return false;
        } catch (SQLiteException e2) {
            zzr().zzf().zza("Error storing property filter. appId", zzew.zza(str), e2);
            return false;
        }
    }

    private final boolean zzam() {
        return zzn().getDatabasePath("google_app_measurement.db").exists();
    }

    private final long zzb(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor cursorRawQuery = c_().rawQuery(str, strArr);
                if (!cursorRawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j2 = cursorRawQuery.getLong(0);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return j2;
            } catch (SQLiteException e2) {
                zzr().zzf().zza("Database error", str, e2);
                throw e2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    private final boolean zzc(String str, List<Integer> list) {
        Preconditions.checkNotEmpty(str);
        zzak();
        zzd();
        SQLiteDatabase sQLiteDatabaseC_ = c_();
        try {
            long jZzb = zzb("select count(1) from audience_filter_values where app_id=?", new String[]{str});
            int iMax = Math.max(0, Math.min(2000, zzt().zzb(str, zzap.zzaf)));
            if (jZzb <= iMax) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < list.size(); i2++) {
                Integer num = list.get(i2);
                if (num == null || !(num instanceof Integer)) {
                    return false;
                }
                arrayList.add(Integer.toString(num.intValue()));
            }
            String strJoin = TextUtils.join(",", arrayList);
            StringBuilder sb = new StringBuilder(String.valueOf(strJoin).length() + 2);
            sb.append("(");
            sb.append(strJoin);
            sb.append(")");
            String string = sb.toString();
            StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 140);
            sb2.append("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ");
            sb2.append(string);
            sb2.append(" order by rowid desc limit -1 offset ?)");
            return sQLiteDatabaseC_.delete("audience_filter_values", sb2.toString(), new String[]{str, Integer.toString(iMax)}) > 0;
        } catch (SQLiteException e2) {
            zzr().zzf().zza("Database error querying filters. appId", zzew.zza(str), e2);
            return false;
        }
    }

    public final void b_() {
        zzak();
        c_().setTransactionSuccessful();
    }

    @VisibleForTesting
    final SQLiteDatabase c_() {
        zzd();
        try {
            return this.zzj.getWritableDatabase();
        } catch (SQLiteException e2) {
            zzr().zzi().zza("Error opening database", e2);
            throw e2;
        }
    }

    public final String d_() throws Throwable {
        Throwable th;
        Cursor cursorRawQuery;
        try {
            cursorRawQuery = c_().rawQuery("select app_id from queue order by has_realtime desc, rowid asc limit 1;", null);
            try {
                try {
                    if (!cursorRawQuery.moveToFirst()) {
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        return null;
                    }
                    String string = cursorRawQuery.getString(0);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return string;
                } catch (SQLiteException e2) {
                    e = e2;
                    zzr().zzf().zza("Database error getting next bundle app id", e);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            th = th2;
        } catch (SQLiteException e3) {
            e = e3;
            cursorRawQuery = null;
        } catch (Throwable th3) {
            th = th3;
            cursorRawQuery = null;
        }
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        throw th;
    }

    public final long zza(zzbr.zzg zzgVar) {
        zzd();
        zzak();
        Preconditions.checkNotNull(zzgVar);
        Preconditions.checkNotEmpty(zzgVar.zzx());
        byte[] bArrZzbi = zzgVar.zzbi();
        long jZza = zzg().zza(bArrZzbi);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzgVar.zzx());
        contentValues.put("metadata_fingerprint", Long.valueOf(jZza));
        contentValues.put(TtmlNode.TAG_METADATA, bArrZzbi);
        try {
            c_().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
            return jZza;
        } catch (SQLiteException e2) {
            zzr().zzf().zza("Error storing raw event metadata. appId", zzew.zza(zzgVar.zzx()), e2);
            throw e2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.util.Pair<com.google.android.gms.internal.measurement.zzbr.zzc, java.lang.Long> zza(java.lang.String r8, java.lang.Long r9) throws java.lang.Throwable {
        /*
            r7 = this;
            r7.zzd()
            r7.zzak()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r7.c_()     // Catch: java.lang.Throwable -> L79 android.database.sqlite.SQLiteException -> L7c
            java.lang.String r2 = "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"
            r3 = 2
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L79 android.database.sqlite.SQLiteException -> L7c
            r4 = 0
            r3[r4] = r8     // Catch: java.lang.Throwable -> L79 android.database.sqlite.SQLiteException -> L7c
            java.lang.String r5 = java.lang.String.valueOf(r9)     // Catch: java.lang.Throwable -> L79 android.database.sqlite.SQLiteException -> L7c
            r6 = 1
            r3[r6] = r5     // Catch: java.lang.Throwable -> L79 android.database.sqlite.SQLiteException -> L7c
            android.database.Cursor r1 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L79 android.database.sqlite.SQLiteException -> L7c
            boolean r2 = r1.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L91
            if (r2 != 0) goto L37
            com.google.android.gms.measurement.internal.zzew r8 = r7.zzr()     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L91
            com.google.android.gms.measurement.internal.zzey r8 = r8.zzx()     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L91
            java.lang.String r9 = "Main event not found"
            r8.zza(r9)     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L91
            if (r1 == 0) goto L36
            r1.close()
        L36:
            return r0
        L37:
            byte[] r2 = r1.getBlob(r4)     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L91
            long r3 = r1.getLong(r6)     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L91
            java.lang.Long r3 = java.lang.Long.valueOf(r3)     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L91
            com.google.android.gms.internal.measurement.zzbr$zzc$zza r4 = com.google.android.gms.internal.measurement.zzbr.zzc.zzj()     // Catch: java.io.IOException -> L5f android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L91
            com.google.android.gms.internal.measurement.zzgn r2 = com.google.android.gms.measurement.internal.zzki.zza(r4, r2)     // Catch: java.io.IOException -> L5f android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L91
            com.google.android.gms.internal.measurement.zzbr$zzc$zza r2 = (com.google.android.gms.internal.measurement.zzbr.zzc.zza) r2     // Catch: java.io.IOException -> L5f android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L91
            com.google.android.gms.internal.measurement.zzgo r2 = r2.zzu()     // Catch: java.io.IOException -> L5f android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L91
            com.google.android.gms.internal.measurement.zzfd r2 = (com.google.android.gms.internal.measurement.zzfd) r2     // Catch: java.io.IOException -> L5f android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L91
            com.google.android.gms.internal.measurement.zzbr$zzc r2 = (com.google.android.gms.internal.measurement.zzbr.zzc) r2     // Catch: java.io.IOException -> L5f android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L91
            android.util.Pair r8 = android.util.Pair.create(r2, r3)     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L91
            if (r1 == 0) goto L5e
            r1.close()
        L5e:
            return r8
        L5f:
            r2 = move-exception
            com.google.android.gms.measurement.internal.zzew r3 = r7.zzr()     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L91
            com.google.android.gms.measurement.internal.zzey r3 = r3.zzf()     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L91
            java.lang.String r4 = "Failed to merge main event. appId, eventId"
            java.lang.Object r8 = com.google.android.gms.measurement.internal.zzew.zza(r8)     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L91
            r3.zza(r4, r8, r9, r2)     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L91
            if (r1 == 0) goto L76
            r1.close()
        L76:
            return r0
        L77:
            r8 = move-exception
            goto L7e
        L79:
            r8 = move-exception
            r1 = r0
            goto L92
        L7c:
            r8 = move-exception
            r1 = r0
        L7e:
            com.google.android.gms.measurement.internal.zzew r9 = r7.zzr()     // Catch: java.lang.Throwable -> L91
            com.google.android.gms.measurement.internal.zzey r9 = r9.zzf()     // Catch: java.lang.Throwable -> L91
            java.lang.String r2 = "Error selecting main event"
            r9.zza(r2, r8)     // Catch: java.lang.Throwable -> L91
            if (r1 == 0) goto L90
            r1.close()
        L90:
            return r0
        L91:
            r8 = move-exception
        L92:
            if (r1 == 0) goto L97
            r1.close()
        L97:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zza(java.lang.String, java.lang.Long):android.util.Pair");
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x012a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.measurement.internal.zzab zza(long r22, java.lang.String r24, boolean r25, boolean r26, boolean r27, boolean r28, boolean r29) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 302
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zza(long, java.lang.String, boolean, boolean, boolean, boolean, boolean):com.google.android.gms.measurement.internal.zzab");
    }

    public final zzaj zza(String str, String str2) throws Throwable {
        Cursor cursor;
        Cursor cursor2;
        Cursor cursorQuery;
        Boolean boolValueOf;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzd();
        zzak();
        boolean zZze = zzt().zze(str, zzap.zzbm);
        ArrayList arrayList = new ArrayList(Arrays.asList("lifetime_count", "current_bundle_count", "last_fire_timestamp", "last_bundled_timestamp", "last_bundled_day", "last_sampled_complex_event_id", "last_sampling_rate", "last_exempt_from_sampling"));
        if (zZze) {
            arrayList.add("current_session_count");
        }
        try {
            try {
                cursorQuery = c_().query("events", (String[]) arrayList.toArray(new String[0]), "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            } catch (Throwable th) {
                th = th;
            }
            try {
                if (!cursorQuery.moveToFirst()) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
                long j2 = cursorQuery.getLong(0);
                long j3 = cursorQuery.getLong(1);
                long j4 = cursorQuery.getLong(2);
                long j5 = cursorQuery.isNull(3) ? 0L : cursorQuery.getLong(3);
                Long lValueOf = cursorQuery.isNull(4) ? null : Long.valueOf(cursorQuery.getLong(4));
                Long lValueOf2 = cursorQuery.isNull(5) ? null : Long.valueOf(cursorQuery.getLong(5));
                Long lValueOf3 = cursorQuery.isNull(6) ? null : Long.valueOf(cursorQuery.getLong(6));
                if (cursorQuery.isNull(7)) {
                    boolValueOf = null;
                } else {
                    boolValueOf = Boolean.valueOf(cursorQuery.getLong(7) == 1);
                }
                cursor2 = cursorQuery;
                try {
                    zzaj zzajVar = new zzaj(str, str2, j2, j3, (!zZze || cursorQuery.isNull(8)) ? 0L : cursorQuery.getLong(8), j4, j5, lValueOf, lValueOf2, lValueOf3, boolValueOf);
                    if (cursor2.moveToNext()) {
                        zzr().zzf().zza("Got multiple records for event aggregates, expected one. appId", zzew.zza(str));
                    }
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    return zzajVar;
                } catch (SQLiteException e2) {
                    e = e2;
                }
            } catch (SQLiteException e3) {
                e = e3;
                cursor2 = cursorQuery;
            } catch (Throwable th2) {
                th = th2;
                cursor = cursorQuery;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e4) {
            e = e4;
            cursor2 = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
        zzr().zzf().zza("Error querying events. appId", zzew.zza(str), zzo().zza(str2), e);
        if (cursor2 != null) {
            cursor2.close();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005b  */
    /* JADX WARN: Type inference failed for: r5v0, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v3, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String zza(long r5) throws java.lang.Throwable {
        /*
            r4 = this;
            r4.zzd()
            r4.zzak()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r4.c_()     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L43
            java.lang.String r2 = "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"
            r3 = 1
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L43
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L43
            r6 = 0
            r3[r6] = r5     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L43
            android.database.Cursor r5 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L43
            boolean r1 = r5.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L58
            if (r1 != 0) goto L34
            com.google.android.gms.measurement.internal.zzew r6 = r4.zzr()     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L58
            com.google.android.gms.measurement.internal.zzey r6 = r6.zzx()     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L58
            java.lang.String r1 = "No expired configs for apps with pending events"
            r6.zza(r1)     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L58
            if (r5 == 0) goto L33
            r5.close()
        L33:
            return r0
        L34:
            java.lang.String r6 = r5.getString(r6)     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L58
            if (r5 == 0) goto L3d
            r5.close()
        L3d:
            return r6
        L3e:
            r6 = move-exception
            goto L45
        L40:
            r6 = move-exception
            r5 = r0
            goto L59
        L43:
            r6 = move-exception
            r5 = r0
        L45:
            com.google.android.gms.measurement.internal.zzew r1 = r4.zzr()     // Catch: java.lang.Throwable -> L58
            com.google.android.gms.measurement.internal.zzey r1 = r1.zzf()     // Catch: java.lang.Throwable -> L58
            java.lang.String r2 = "Error selecting expired configs"
            r1.zza(r2, r6)     // Catch: java.lang.Throwable -> L58
            if (r5 == 0) goto L57
            r5.close()
        L57:
            return r0
        L58:
            r6 = move-exception
        L59:
            if (r5 == 0) goto L5e
            r5.close()
        L5e:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zza(long):java.lang.String");
    }

    public final List<zzkn> zza(String str) throws Throwable {
        Cursor cursorQuery;
        Preconditions.checkNotEmpty(str);
        zzd();
        zzak();
        ArrayList arrayList = new ArrayList();
        try {
            try {
                cursorQuery = c_().query("user_attributes", new String[]{AppMeasurementSdk.ConditionalUserProperty.NAME, "origin", "set_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
            } catch (Throwable th) {
                th = th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
        try {
            if (!cursorQuery.moveToFirst()) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return arrayList;
            }
            do {
                String string = cursorQuery.getString(0);
                String string2 = cursorQuery.getString(1);
                if (string2 == null) {
                    string2 = "";
                }
                String str2 = string2;
                long j2 = cursorQuery.getLong(2);
                try {
                    Object objZza = zza(cursorQuery, 3);
                    if (objZza == null) {
                        zzr().zzf().zza("Read invalid user property value, ignoring it. appId", zzew.zza(str));
                    } else {
                        arrayList.add(new zzkn(str, str2, string, j2, objZza));
                    }
                } catch (SQLiteException e3) {
                    e = e3;
                }
            } while (cursorQuery.moveToNext());
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return arrayList;
        } catch (SQLiteException e4) {
            e = e4;
        } catch (Throwable th3) {
            th = th3;
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
        zzr().zzf().zza("Error querying user properties. appId", zzew.zza(str), e);
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    public final List<Pair<zzbr.zzg, Long>> zza(String str, int i2, int i3) {
        zzey zzeyVarZzf;
        String str2;
        Object objZza;
        byte[] bArrZzb;
        zzd();
        zzak();
        Preconditions.checkArgument(i2 > 0);
        Preconditions.checkArgument(i3 > 0);
        Preconditions.checkNotEmpty(str);
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = c_().query("queue", new String[]{"rowid", "data", "retry_count"}, "app_id=?", new String[]{str}, null, null, "rowid", String.valueOf(i2));
                if (!cursorQuery.moveToFirst()) {
                    List<Pair<zzbr.zzg, Long>> listEmptyList = Collections.emptyList();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return listEmptyList;
                }
                ArrayList arrayList = new ArrayList();
                int length = 0;
                do {
                    long j2 = cursorQuery.getLong(0);
                    try {
                        bArrZzb = zzg().zzb(cursorQuery.getBlob(1));
                    } catch (IOException e2) {
                        e = e2;
                        zzeyVarZzf = zzr().zzf();
                        str2 = "Failed to unzip queued bundle. appId";
                        objZza = zzew.zza(str);
                    }
                    if (!arrayList.isEmpty() && bArrZzb.length + length > i3) {
                        break;
                    }
                    try {
                        zzbr.zzg.zza zzaVar = (zzbr.zzg.zza) zzki.zza(zzbr.zzg.zzbf(), bArrZzb);
                        if (!cursorQuery.isNull(2)) {
                            zzaVar.zzi(cursorQuery.getInt(2));
                        }
                        length += bArrZzb.length;
                        arrayList.add(Pair.create((zzbr.zzg) ((com.google.android.gms.internal.measurement.zzfd) zzaVar.zzu()), Long.valueOf(j2)));
                    } catch (IOException e3) {
                        e = e3;
                        zzeyVarZzf = zzr().zzf();
                        str2 = "Failed to merge queued bundle. appId";
                        objZza = zzew.zza(str);
                        zzeyVarZzf.zza(str2, objZza, e);
                    }
                    if (!cursorQuery.moveToNext()) {
                        break;
                    }
                } while (length <= i3);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return arrayList;
            } catch (Throwable th) {
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e4) {
            zzr().zzf().zza("Error querying bundles. appId", zzew.zza(str), e4);
            List<Pair<zzbr.zzg, Long>> listEmptyList2 = Collections.emptyList();
            if (0 != 0) {
                cursor.close();
            }
            return listEmptyList2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x009a, code lost:
    
        zzr().zzf().zza("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0149  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzkn> zza(java.lang.String r22, java.lang.String r23, java.lang.String r24) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 335
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zza(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x008e, code lost:
    
        zzr().zzf().zza("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0175  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzv> zza(java.lang.String r40, java.lang.String[] r41) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 379
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zza(java.lang.String, java.lang.String[]):java.util.List");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00cd  */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v4, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.util.Map<java.lang.Integer, java.util.List<java.lang.Integer>> zza(java.lang.String r14, java.util.List<java.lang.String> r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 211
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zza(java.lang.String, java.util.List):java.util.Map");
    }

    public final void zza(zzaj zzajVar) {
        Preconditions.checkNotNull(zzajVar);
        zzd();
        zzak();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzajVar.zza);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, zzajVar.zzb);
        contentValues.put("lifetime_count", Long.valueOf(zzajVar.zzc));
        contentValues.put("current_bundle_count", Long.valueOf(zzajVar.zzd));
        contentValues.put("last_fire_timestamp", Long.valueOf(zzajVar.zzf));
        contentValues.put("last_bundled_timestamp", Long.valueOf(zzajVar.zzg));
        contentValues.put("last_bundled_day", zzajVar.zzh);
        contentValues.put("last_sampled_complex_event_id", zzajVar.zzi);
        contentValues.put("last_sampling_rate", zzajVar.zzj);
        if (zzt().zze(zzajVar.zza, zzap.zzbm)) {
            contentValues.put("current_session_count", Long.valueOf(zzajVar.zze));
        }
        Boolean bool = zzajVar.zzk;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (c_().insertWithOnConflict("events", null, contentValues, 5) == -1) {
                zzr().zzf().zza("Failed to insert/update event aggregates (got -1). appId", zzew.zza(zzajVar.zza));
            }
        } catch (SQLiteException e2) {
            zzr().zzf().zza("Error storing event aggregates. appId", zzew.zza(zzajVar.zza), e2);
        }
    }

    public final void zza(zzg zzgVar) {
        Preconditions.checkNotNull(zzgVar);
        zzd();
        zzak();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzgVar.zzc());
        contentValues.put("app_instance_id", zzgVar.zzd());
        contentValues.put("gmp_app_id", zzgVar.zze());
        contentValues.put("resettable_device_id_hash", zzgVar.zzh());
        contentValues.put("last_bundle_index", Long.valueOf(zzgVar.zzs()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(zzgVar.zzj()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(zzgVar.zzk()));
        contentValues.put("app_version", zzgVar.zzl());
        contentValues.put("app_store", zzgVar.zzn());
        contentValues.put("gmp_version", Long.valueOf(zzgVar.zzo()));
        contentValues.put("dev_cert_hash", Long.valueOf(zzgVar.zzp()));
        contentValues.put("measurement_enabled", Boolean.valueOf(zzgVar.zzr()));
        contentValues.put("day", Long.valueOf(zzgVar.zzw()));
        contentValues.put("daily_public_events_count", Long.valueOf(zzgVar.zzx()));
        contentValues.put("daily_events_count", Long.valueOf(zzgVar.zzy()));
        contentValues.put("daily_conversions_count", Long.valueOf(zzgVar.zzz()));
        contentValues.put("config_fetched_time", Long.valueOf(zzgVar.zzt()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(zzgVar.zzu()));
        contentValues.put("app_version_int", Long.valueOf(zzgVar.zzm()));
        contentValues.put("firebase_instance_id", zzgVar.zzi());
        contentValues.put("daily_error_events_count", Long.valueOf(zzgVar.zzab()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(zzgVar.zzaa()));
        contentValues.put("health_monitor_sample", zzgVar.zzac());
        contentValues.put("android_id", Long.valueOf(zzgVar.zzae()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(zzgVar.zzaf()));
        contentValues.put("ssaid_reporting_enabled", Boolean.valueOf(zzgVar.zzag()));
        contentValues.put("admob_app_id", zzgVar.zzf());
        contentValues.put("dynamite_version", Long.valueOf(zzgVar.zzq()));
        if (zzgVar.zzai() != null) {
            if (zzgVar.zzai().size() == 0) {
                zzr().zzi().zza("Safelisted events should not be an empty list. appId", zzgVar.zzc());
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", zzgVar.zzai()));
            }
        }
        if (zzle.zzb() && zzt().zze(zzgVar.zzc(), zzap.zzcc)) {
            contentValues.put("ga_app_id", zzgVar.zzg());
        }
        try {
            SQLiteDatabase sQLiteDatabaseC_ = c_();
            if (sQLiteDatabaseC_.update("apps", contentValues, "app_id = ?", new String[]{zzgVar.zzc()}) == 0 && sQLiteDatabaseC_.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                zzr().zzf().zza("Failed to insert/update app (got -1). appId", zzew.zza(zzgVar.zzc()));
            }
        } catch (SQLiteException e2) {
            zzr().zzf().zza("Error storing app. appId", zzew.zza(zzgVar.zzc()), e2);
        }
    }

    @VisibleForTesting
    final void zza(List<Long> list) {
        zzd();
        zzak();
        Preconditions.checkNotNull(list);
        Preconditions.checkNotZero(list.size());
        if (zzam()) {
            String strJoin = TextUtils.join(",", list);
            StringBuilder sb = new StringBuilder(String.valueOf(strJoin).length() + 2);
            sb.append("(");
            sb.append(strJoin);
            sb.append(")");
            String string = sb.toString();
            StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 80);
            sb2.append("SELECT COUNT(1) FROM queue WHERE rowid IN ");
            sb2.append(string);
            sb2.append(" AND retry_count =  2147483647 LIMIT 1");
            if (zzb(sb2.toString(), (String[]) null) > 0) {
                zzr().zzi().zza("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase sQLiteDatabaseC_ = c_();
                StringBuilder sb3 = new StringBuilder(String.valueOf(string).length() + 127);
                sb3.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
                sb3.append(string);
                sb3.append(" AND (retry_count IS NULL OR retry_count < 2147483647)");
                sQLiteDatabaseC_.execSQL(sb3.toString());
            } catch (SQLiteException e2) {
                zzr().zzf().zza("Error incrementing retry count. error", e2);
            }
        }
    }

    public final boolean zza(zzbr.zzg zzgVar, boolean z) {
        zzey zzeyVarZzf;
        Object objZza;
        String str;
        ContentValues contentValues;
        zzd();
        zzak();
        Preconditions.checkNotNull(zzgVar);
        Preconditions.checkNotEmpty(zzgVar.zzx());
        Preconditions.checkState(zzgVar.zzk());
        zzv();
        long jCurrentTimeMillis = zzm().currentTimeMillis();
        if (zzgVar.zzl() < jCurrentTimeMillis - zzx.zzj() || zzgVar.zzl() > zzx.zzj() + jCurrentTimeMillis) {
            zzr().zzi().zza("Storing bundle outside of the max uploading time span. appId, now, timestamp", zzew.zza(zzgVar.zzx()), Long.valueOf(jCurrentTimeMillis), Long.valueOf(zzgVar.zzl()));
        }
        try {
            byte[] bArrZzc = zzg().zzc(zzgVar.zzbi());
            zzr().zzx().zza("Saving bundle, size", Integer.valueOf(bArrZzc.length));
            contentValues = new ContentValues();
            contentValues.put("app_id", zzgVar.zzx());
            contentValues.put("bundle_end_timestamp", Long.valueOf(zzgVar.zzl()));
            contentValues.put("data", bArrZzc);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            if (zzgVar.zzaz()) {
                contentValues.put("retry_count", Integer.valueOf(zzgVar.zzba()));
            }
        } catch (IOException e2) {
            e = e2;
            zzeyVarZzf = zzr().zzf();
            objZza = zzew.zza(zzgVar.zzx());
            str = "Data loss. Failed to serialize bundle. appId";
        }
        try {
            if (c_().insert("queue", null, contentValues) != -1) {
                return true;
            }
            zzr().zzf().zza("Failed to insert bundle (got -1). appId", zzew.zza(zzgVar.zzx()));
            return false;
        } catch (SQLiteException e3) {
            e = e3;
            zzeyVarZzf = zzr().zzf();
            objZza = zzew.zza(zzgVar.zzx());
            str = "Error storing bundle. appId";
            zzeyVarZzf.zza(str, objZza, e);
            return false;
        }
    }

    public final boolean zza(zzak zzakVar, long j2, boolean z) {
        zzd();
        zzak();
        Preconditions.checkNotNull(zzakVar);
        Preconditions.checkNotEmpty(zzakVar.zza);
        zzbr.zzc.zza zzaVarZzb = zzbr.zzc.zzj().zzb(zzakVar.zzd);
        for (String str : zzakVar.zze) {
            zzbr.zze.zza zzaVarZza = zzbr.zze.zzh().zza(str);
            zzg().zza(zzaVarZza, zzakVar.zze.zza(str));
            zzaVarZzb.zza(zzaVarZza);
        }
        byte[] bArrZzbi = ((zzbr.zzc) zzaVarZzb.zzu()).zzbi();
        zzr().zzx().zza("Saving event, name, data size", zzo().zza(zzakVar.zzb), Integer.valueOf(bArrZzbi.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzakVar.zza);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, zzakVar.zzb);
        contentValues.put("timestamp", Long.valueOf(zzakVar.zzc));
        contentValues.put("metadata_fingerprint", Long.valueOf(j2));
        contentValues.put("data", bArrZzbi);
        contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
        try {
            if (c_().insert("raw_events", null, contentValues) != -1) {
                return true;
            }
            zzr().zzf().zza("Failed to insert raw event (got -1). appId", zzew.zza(zzakVar.zza));
            return false;
        } catch (SQLiteException e2) {
            zzr().zzf().zza("Error storing raw event. appId", zzew.zza(zzakVar.zza), e2);
            return false;
        }
    }

    public final boolean zza(zzkn zzknVar) {
        Preconditions.checkNotNull(zzknVar);
        zzd();
        zzak();
        if (zzc(zzknVar.zza, zzknVar.zzc) == null) {
            if (zzkm.zza(zzknVar.zzc)) {
                if (zzb("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{zzknVar.zza}) >= 25) {
                    return false;
                }
            } else if (zzt().zze(zzknVar.zza, zzap.zzba)) {
                if (!"_npa".equals(zzknVar.zzc) && zzb("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{zzknVar.zza, zzknVar.zzb}) >= 25) {
                    return false;
                }
            } else if (zzb("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{zzknVar.zza, zzknVar.zzb}) >= 25) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzknVar.zza);
        contentValues.put("origin", zzknVar.zzb);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, zzknVar.zzc);
        contentValues.put("set_timestamp", Long.valueOf(zzknVar.zzd));
        zza(contentValues, "value", zzknVar.zze);
        try {
            if (c_().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1) {
                zzr().zzf().zza("Failed to insert/update user property (got -1). appId", zzew.zza(zzknVar.zza));
            }
        } catch (SQLiteException e2) {
            zzr().zzf().zza("Error storing user property. appId", zzew.zza(zzknVar.zza), e2);
        }
        return true;
    }

    public final boolean zza(zzv zzvVar) {
        Preconditions.checkNotNull(zzvVar);
        zzd();
        zzak();
        if (zzc(zzvVar.zza, zzvVar.zzc.zza) == null && zzb("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{zzvVar.zza}) >= 1000) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzvVar.zza);
        contentValues.put("origin", zzvVar.zzb);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, zzvVar.zzc.zza);
        zza(contentValues, "value", zzvVar.zzc.zza());
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, Boolean.valueOf(zzvVar.zze));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, zzvVar.zzf);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.valueOf(zzvVar.zzh));
        zzp();
        contentValues.put("timed_out_event", zzkm.zza((Parcelable) zzvVar.zzg));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.valueOf(zzvVar.zzd));
        zzp();
        contentValues.put("triggered_event", zzkm.zza((Parcelable) zzvVar.zzi));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, Long.valueOf(zzvVar.zzc.zzb));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.valueOf(zzvVar.zzj));
        zzp();
        contentValues.put("expired_event", zzkm.zza((Parcelable) zzvVar.zzk));
        try {
            if (c_().insertWithOnConflict("conditional_properties", null, contentValues, 5) == -1) {
                zzr().zzf().zza("Failed to insert/update conditional user property (got -1)", zzew.zza(zzvVar.zza));
            }
        } catch (SQLiteException e2) {
            zzr().zzf().zza("Error storing conditional user property", zzew.zza(zzvVar.zza), e2);
        }
        return true;
    }

    public final boolean zza(String str, Long l, long j2, zzbr.zzc zzcVar) {
        zzd();
        zzak();
        Preconditions.checkNotNull(zzcVar);
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(l);
        byte[] bArrZzbi = zzcVar.zzbi();
        zzr().zzx().zza("Saving complex main event, appId, data size", zzo().zza(str), Integer.valueOf(bArrZzbi.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l);
        contentValues.put("children_to_process", Long.valueOf(j2));
        contentValues.put("main_event", bArrZzbi);
        try {
            if (c_().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            zzr().zzf().zza("Failed to insert complex main event (got -1). appId", zzew.zza(str));
            return false;
        } catch (SQLiteException e2) {
            zzr().zzf().zza("Error storing complex main event. appId", zzew.zza(str), e2);
            return false;
        }
    }

    public final long zzaa() {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = c_().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
                if (!cursorRawQuery.moveToFirst()) {
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return -1L;
                }
                long j2 = cursorRawQuery.getLong(0);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return j2;
            } catch (SQLiteException e2) {
                zzr().zzf().zza("Error querying raw events", e2);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return -1L;
            }
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    public final zzg zzb(String str) {
        Cursor cursorQuery;
        Preconditions.checkNotEmpty(str);
        zzd();
        zzak();
        try {
            try {
                cursorQuery = c_().query("apps", new String[]{"app_instance_id", "gmp_app_id", "resettable_device_id_hash", "last_bundle_index", "last_bundle_start_timestamp", "last_bundle_end_timestamp", "app_version", "app_store", "gmp_version", "dev_cert_hash", "measurement_enabled", "day", "daily_public_events_count", "daily_events_count", "daily_conversions_count", "config_fetched_time", "failed_config_fetch_time", "app_version_int", "firebase_instance_id", "daily_error_events_count", "daily_realtime_events_count", "health_monitor_sample", "android_id", "adid_reporting_enabled", "ssaid_reporting_enabled", "admob_app_id", "dynamite_version", "safelisted_events", "ga_app_id"}, "app_id=?", new String[]{str}, null, null, null);
            } catch (Throwable th) {
                th = th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
        try {
            if (!cursorQuery.moveToFirst()) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return null;
            }
            try {
                zzg zzgVar = new zzg(this.zza.zzs(), str);
                zzgVar.zza(cursorQuery.getString(0));
                zzgVar.zzb(cursorQuery.getString(1));
                zzgVar.zze(cursorQuery.getString(2));
                zzgVar.zzg(cursorQuery.getLong(3));
                zzgVar.zza(cursorQuery.getLong(4));
                zzgVar.zzb(cursorQuery.getLong(5));
                zzgVar.zzg(cursorQuery.getString(6));
                zzgVar.zzh(cursorQuery.getString(7));
                zzgVar.zzd(cursorQuery.getLong(8));
                zzgVar.zze(cursorQuery.getLong(9));
                zzgVar.zza(cursorQuery.isNull(10) || cursorQuery.getInt(10) != 0);
                zzgVar.zzj(cursorQuery.getLong(11));
                zzgVar.zzk(cursorQuery.getLong(12));
                zzgVar.zzl(cursorQuery.getLong(13));
                zzgVar.zzm(cursorQuery.getLong(14));
                zzgVar.zzh(cursorQuery.getLong(15));
                zzgVar.zzi(cursorQuery.getLong(16));
                zzgVar.zzc(cursorQuery.isNull(17) ? -2147483648L : cursorQuery.getInt(17));
                zzgVar.zzf(cursorQuery.getString(18));
                zzgVar.zzo(cursorQuery.getLong(19));
                zzgVar.zzn(cursorQuery.getLong(20));
                zzgVar.zzi(cursorQuery.getString(21));
                zzgVar.zzp(cursorQuery.isNull(22) ? 0L : cursorQuery.getLong(22));
                zzgVar.zzb(cursorQuery.isNull(23) || cursorQuery.getInt(23) != 0);
                zzgVar.zzc(cursorQuery.isNull(24) || cursorQuery.getInt(24) != 0);
                zzgVar.zzc(cursorQuery.getString(25));
                zzgVar.zzf(cursorQuery.isNull(26) ? 0L : cursorQuery.getLong(26));
                if (!cursorQuery.isNull(27)) {
                    zzgVar.zza(Arrays.asList(cursorQuery.getString(27).split(",", -1)));
                }
                if (zzle.zzb() && zzt().zze(str, zzap.zzcc)) {
                    zzgVar.zzd(cursorQuery.getString(28));
                }
                zzgVar.zzb();
                if (cursorQuery.moveToNext()) {
                    zzr().zzf().zza("Got multiple records for app, expected one. appId", zzew.zza(str));
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return zzgVar;
            } catch (SQLiteException e3) {
                e = e3;
            }
        } catch (SQLiteException e4) {
            e = e4;
        } catch (Throwable th3) {
            th = th3;
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
        zzr().zzf().zza("Error querying app. appId", zzew.zza(str), e);
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    public final List<zzv> zzb(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        zzd();
        zzak();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat("*"));
            sb.append(" and name glob ?");
        }
        return zza(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    public final void zzb(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzd();
        zzak();
        try {
            zzr().zzx().zza("Deleted user attribute rows", Integer.valueOf(c_().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2})));
        } catch (SQLiteException e2) {
            zzr().zzf().zza("Error deleting user attribute. appId", zzew.zza(str), zzo().zzc(str2), e2);
        }
    }

    final void zzb(String str, List<zzbj.zza> list) {
        boolean z;
        zzey zzeyVarZzi;
        String str2;
        Object objZza;
        Integer numValueOf;
        boolean z2;
        Preconditions.checkNotNull(list);
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzbj.zza.C0172zza c0172zzaZzbm = list.get(i2).zzbm();
            if (c0172zzaZzbm.zzb() != 0) {
                zzbj.zza.C0172zza c0172zzaZza = c0172zzaZzbm;
                for (int i3 = 0; i3 < c0172zzaZza.zzb(); i3++) {
                    zzbj.zzb.zza zzaVarZzbm = c0172zzaZza.zzb(i3).zzbm();
                    zzbj.zzb.zza zzaVar = (zzbj.zzb.zza) zzaVarZzbm.clone();
                    String strZzb = zzgv.zzb(zzaVarZzbm.zza());
                    if (strZzb != null) {
                        zzaVar.zza(strZzb);
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    boolean z3 = z2;
                    for (int i4 = 0; i4 < zzaVarZzbm.zzb(); i4++) {
                        zzbj.zzc zzcVarZza = zzaVarZzbm.zza(i4);
                        String strZza = zzgy.zza(zzcVarZza.zzg());
                        if (strZza != null) {
                            zzaVar.zza(i4, (zzbj.zzc) zzcVarZza.zzbm().zza(strZza).zzu());
                            z3 = true;
                        }
                    }
                    if (z3) {
                        c0172zzaZza = c0172zzaZza.zza(i3, zzaVar);
                        list.set(i2, (zzbj.zza) c0172zzaZza.zzu());
                    }
                }
                c0172zzaZzbm = c0172zzaZza;
            }
            if (c0172zzaZzbm.zza() != 0) {
                for (int i5 = 0; i5 < c0172zzaZzbm.zza(); i5++) {
                    zzbj.zze zzeVarZza = c0172zzaZzbm.zza(i5);
                    String strZza2 = zzgx.zza(zzeVarZza.zzc());
                    if (strZza2 != null) {
                        c0172zzaZzbm = c0172zzaZzbm.zza(i5, zzeVarZza.zzbm().zza(strZza2));
                        list.set(i2, (zzbj.zza) c0172zzaZzbm.zzu());
                    }
                }
            }
        }
        zzak();
        zzd();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(list);
        SQLiteDatabase sQLiteDatabaseC_ = c_();
        sQLiteDatabaseC_.beginTransaction();
        try {
            zzak();
            zzd();
            Preconditions.checkNotEmpty(str);
            SQLiteDatabase sQLiteDatabaseC_2 = c_();
            sQLiteDatabaseC_2.delete("property_filters", "app_id=?", new String[]{str});
            sQLiteDatabaseC_2.delete("event_filters", "app_id=?", new String[]{str});
            for (zzbj.zza zzaVar2 : list) {
                zzak();
                zzd();
                Preconditions.checkNotEmpty(str);
                Preconditions.checkNotNull(zzaVar2);
                if (zzaVar2.zza()) {
                    int iZzb = zzaVar2.zzb();
                    Iterator<zzbj.zzb> it = zzaVar2.zze().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (!it.next().zza()) {
                                zzeyVarZzi = zzr().zzi();
                                str2 = "Event filter with no ID. Audience definition ignored. appId, audienceId";
                                objZza = zzew.zza(str);
                                numValueOf = Integer.valueOf(iZzb);
                                break;
                            }
                        } else {
                            Iterator<zzbj.zze> it2 = zzaVar2.zzc().iterator();
                            while (it2.hasNext()) {
                                if (!it2.next().zza()) {
                                    zzeyVarZzi = zzr().zzi();
                                    str2 = "Property filter with no ID. Audience definition ignored. appId, audienceId";
                                    objZza = zzew.zza(str);
                                    numValueOf = Integer.valueOf(iZzb);
                                }
                            }
                            Iterator<zzbj.zzb> it3 = zzaVar2.zze().iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    if (!zza(str, iZzb, it3.next())) {
                                        z = false;
                                        break;
                                    }
                                } else {
                                    z = true;
                                    break;
                                }
                            }
                            if (z) {
                                Iterator<zzbj.zze> it4 = zzaVar2.zzc().iterator();
                                while (true) {
                                    if (it4.hasNext()) {
                                        if (!zza(str, iZzb, it4.next())) {
                                            z = false;
                                            break;
                                        }
                                    } else {
                                        break;
                                    }
                                }
                            }
                            if (!z) {
                                zzak();
                                zzd();
                                Preconditions.checkNotEmpty(str);
                                SQLiteDatabase sQLiteDatabaseC_3 = c_();
                                sQLiteDatabaseC_3.delete("property_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(iZzb)});
                                sQLiteDatabaseC_3.delete("event_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(iZzb)});
                            }
                        }
                    }
                    zzeyVarZzi.zza(str2, objZza, numValueOf);
                    break;
                }
                zzr().zzi().zza("Audience with no ID. appId", zzew.zza(str));
            }
            ArrayList arrayList = new ArrayList();
            for (zzbj.zza zzaVar3 : list) {
                arrayList.add(zzaVar3.zza() ? Integer.valueOf(zzaVar3.zzb()) : null);
            }
            zzc(str, arrayList);
            sQLiteDatabaseC_.setTransactionSuccessful();
        } finally {
            sQLiteDatabaseC_.endTransaction();
        }
    }

    public final long zzc(String str) {
        Preconditions.checkNotEmpty(str);
        zzd();
        zzak();
        try {
            return c_().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, String.valueOf(Math.max(0, Math.min(1000000, zzt().zzb(str, zzap.zzp))))});
        } catch (SQLiteException e2) {
            zzr().zzf().zza("Error deleting over the limit events. appId", zzew.zza(str), e2);
            return 0L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.measurement.internal.zzkn zzc(java.lang.String r19, java.lang.String r20) {
        /*
            r18 = this;
            r8 = r20
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r19)
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r20)
            r18.zzd()
            r18.zzak()
            r9 = 0
            android.database.sqlite.SQLiteDatabase r10 = r18.c_()     // Catch: java.lang.Throwable -> L83 android.database.sqlite.SQLiteException -> L88
            java.lang.String r11 = "user_attributes"
            r0 = 3
            java.lang.String[] r12 = new java.lang.String[r0]     // Catch: java.lang.Throwable -> L83 android.database.sqlite.SQLiteException -> L88
            java.lang.String r0 = "set_timestamp"
            r1 = 0
            r12[r1] = r0     // Catch: java.lang.Throwable -> L83 android.database.sqlite.SQLiteException -> L88
            java.lang.String r0 = "value"
            r2 = 1
            r12[r2] = r0     // Catch: java.lang.Throwable -> L83 android.database.sqlite.SQLiteException -> L88
            java.lang.String r0 = "origin"
            r3 = 2
            r12[r3] = r0     // Catch: java.lang.Throwable -> L83 android.database.sqlite.SQLiteException -> L88
            java.lang.String r13 = "app_id=? and name=?"
            java.lang.String[] r14 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L83 android.database.sqlite.SQLiteException -> L88
            r14[r1] = r19     // Catch: java.lang.Throwable -> L83 android.database.sqlite.SQLiteException -> L88
            r14[r2] = r8     // Catch: java.lang.Throwable -> L83 android.database.sqlite.SQLiteException -> L88
            r15 = 0
            r16 = 0
            r17 = 0
            android.database.Cursor r10 = r10.query(r11, r12, r13, r14, r15, r16, r17)     // Catch: java.lang.Throwable -> L83 android.database.sqlite.SQLiteException -> L88
            boolean r0 = r10.moveToFirst()     // Catch: java.lang.Throwable -> L7b android.database.sqlite.SQLiteException -> L7f
            if (r0 != 0) goto L44
            if (r10 == 0) goto L43
            r10.close()
        L43:
            return r9
        L44:
            long r5 = r10.getLong(r1)     // Catch: java.lang.Throwable -> L7b android.database.sqlite.SQLiteException -> L7f
            r11 = r18
            java.lang.Object r7 = r11.zza(r10, r2)     // Catch: android.database.sqlite.SQLiteException -> L79 java.lang.Throwable -> Lab
            java.lang.String r3 = r10.getString(r3)     // Catch: android.database.sqlite.SQLiteException -> L79 java.lang.Throwable -> Lab
            com.google.android.gms.measurement.internal.zzkn r0 = new com.google.android.gms.measurement.internal.zzkn     // Catch: android.database.sqlite.SQLiteException -> L79 java.lang.Throwable -> Lab
            r1 = r0
            r2 = r19
            r4 = r20
            r1.<init>(r2, r3, r4, r5, r7)     // Catch: android.database.sqlite.SQLiteException -> L79 java.lang.Throwable -> Lab
            boolean r1 = r10.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L79 java.lang.Throwable -> Lab
            if (r1 == 0) goto L73
            com.google.android.gms.measurement.internal.zzew r1 = r18.zzr()     // Catch: android.database.sqlite.SQLiteException -> L79 java.lang.Throwable -> Lab
            com.google.android.gms.measurement.internal.zzey r1 = r1.zzf()     // Catch: android.database.sqlite.SQLiteException -> L79 java.lang.Throwable -> Lab
            java.lang.String r2 = "Got multiple records for user property, expected one. appId"
            java.lang.Object r3 = com.google.android.gms.measurement.internal.zzew.zza(r19)     // Catch: android.database.sqlite.SQLiteException -> L79 java.lang.Throwable -> Lab
            r1.zza(r2, r3)     // Catch: android.database.sqlite.SQLiteException -> L79 java.lang.Throwable -> Lab
        L73:
            if (r10 == 0) goto L78
            r10.close()
        L78:
            return r0
        L79:
            r0 = move-exception
            goto L8c
        L7b:
            r0 = move-exception
            r11 = r18
            goto Lac
        L7f:
            r0 = move-exception
            r11 = r18
            goto L8c
        L83:
            r0 = move-exception
            r11 = r18
            r10 = r9
            goto Lac
        L88:
            r0 = move-exception
            r11 = r18
            r10 = r9
        L8c:
            com.google.android.gms.measurement.internal.zzew r1 = r18.zzr()     // Catch: java.lang.Throwable -> Lab
            com.google.android.gms.measurement.internal.zzey r1 = r1.zzf()     // Catch: java.lang.Throwable -> Lab
            java.lang.String r2 = "Error querying user property. appId"
            java.lang.Object r3 = com.google.android.gms.measurement.internal.zzew.zza(r19)     // Catch: java.lang.Throwable -> Lab
            com.google.android.gms.measurement.internal.zzeu r4 = r18.zzo()     // Catch: java.lang.Throwable -> Lab
            java.lang.String r4 = r4.zzc(r8)     // Catch: java.lang.Throwable -> Lab
            r1.zza(r2, r3, r4, r0)     // Catch: java.lang.Throwable -> Lab
            if (r10 == 0) goto Laa
            r10.close()
        Laa:
            return r9
        Lab:
            r0 = move-exception
        Lac:
            if (r10 == 0) goto Lb1
            r10.close()
        Lb1:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zzc(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzkn");
    }

    public final zzv zzd(String str, String str2) throws Throwable {
        Cursor cursorQuery;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzd();
        zzak();
        try {
            try {
                cursorQuery = c_().query("conditional_properties", new String[]{"origin", "value", AppMeasurementSdk.ConditionalUserProperty.ACTIVE, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, "timed_out_event", AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, "triggered_event", AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, "expired_event"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            } catch (Throwable th) {
                th = th;
            }
            try {
                if (!cursorQuery.moveToFirst()) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
                String string = cursorQuery.getString(0);
                try {
                    Object objZza = zza(cursorQuery, 1);
                    boolean z = cursorQuery.getInt(2) != 0;
                    zzv zzvVar = new zzv(str, string, new zzkl(str2, cursorQuery.getLong(8), objZza, string), cursorQuery.getLong(6), z, cursorQuery.getString(3), (zzan) zzg().zza(cursorQuery.getBlob(5), zzan.CREATOR), cursorQuery.getLong(4), (zzan) zzg().zza(cursorQuery.getBlob(7), zzan.CREATOR), cursorQuery.getLong(9), (zzan) zzg().zza(cursorQuery.getBlob(10), zzan.CREATOR));
                    if (cursorQuery.moveToNext()) {
                        zzr().zzf().zza("Got multiple records for conditional property, expected one", zzew.zza(str), zzo().zzc(str2));
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return zzvVar;
                } catch (SQLiteException e2) {
                    e = e2;
                }
            } catch (SQLiteException e3) {
                e = e3;
            } catch (Throwable th2) {
                th = th2;
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        } catch (SQLiteException e4) {
            e = e4;
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
            cursorQuery = null;
        }
        zzr().zzf().zza("Error querying conditional property", zzew.zza(str), zzo().zzc(str2), e);
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    public final byte[] zzd(String str) throws Throwable {
        Cursor cursorQuery;
        Preconditions.checkNotEmpty(str);
        zzd();
        zzak();
        try {
            cursorQuery = c_().query("apps", new String[]{"remote_config"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                    if (!cursorQuery.moveToFirst()) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                    byte[] blob = cursorQuery.getBlob(0);
                    if (cursorQuery.moveToNext()) {
                        zzr().zzf().zza("Got multiple records for app config, expected one. appId", zzew.zza(str));
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return blob;
                } catch (SQLiteException e2) {
                    e = e2;
                    zzr().zzf().zza("Error querying remote config. appId", zzew.zza(str), e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
            }
            th = th;
        } catch (SQLiteException e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        throw th;
    }

    public final int zze(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzd();
        zzak();
        try {
            return c_().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e2) {
            zzr().zzf().zza("Error deleting conditional property", zzew.zza(str), zzo().zzc(str2), e2);
            return 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0086  */
    /* JADX WARN: Type inference failed for: r1v0, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.util.Map<java.lang.Integer, java.util.List<java.lang.Integer>> zze(java.lang.String r8) throws java.lang.Throwable {
        /*
            r7 = this;
            r7.zzak()
            r7.zzd()
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r8)
            b.e.a r0 = new b.e.a
            r0.<init>()
            android.database.sqlite.SQLiteDatabase r1 = r7.c_()
            r2 = 0
            java.lang.String r3 = "select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;"
            r4 = 2
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L6a
            r5 = 0
            r4[r5] = r8     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L6a
            r6 = 1
            r4[r6] = r8     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L6a
            android.database.Cursor r1 = r1.rawQuery(r3, r4)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L6a
            boolean r3 = r1.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            if (r3 != 0) goto L32
            java.util.Map r8 = java.util.Collections.emptyMap()     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            if (r1 == 0) goto L31
            r1.close()
        L31:
            return r8
        L32:
            int r3 = r1.getInt(r5)     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            java.lang.Integer r4 = java.lang.Integer.valueOf(r3)     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            java.lang.Object r4 = r0.get(r4)     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            java.util.List r4 = (java.util.List) r4     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            if (r4 != 0) goto L4e
            java.util.ArrayList r4 = new java.util.ArrayList     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            r4.<init>()     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            r0.put(r3, r4)     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
        L4e:
            int r3 = r1.getInt(r6)     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            r4.add(r3)     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            boolean r3 = r1.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            if (r3 != 0) goto L32
            if (r1 == 0) goto L64
            r1.close()
        L64:
            return r0
        L65:
            r0 = move-exception
            goto L6c
        L67:
            r8 = move-exception
            r1 = r2
            goto L84
        L6a:
            r0 = move-exception
            r1 = r2
        L6c:
            com.google.android.gms.measurement.internal.zzew r3 = r7.zzr()     // Catch: java.lang.Throwable -> L83
            com.google.android.gms.measurement.internal.zzey r3 = r3.zzf()     // Catch: java.lang.Throwable -> L83
            java.lang.String r4 = "Database error querying scoped filters. appId"
            java.lang.Object r8 = com.google.android.gms.measurement.internal.zzew.zza(r8)     // Catch: java.lang.Throwable -> L83
            r3.zza(r4, r8, r0)     // Catch: java.lang.Throwable -> L83
            if (r1 == 0) goto L82
            r1.close()
        L82:
            return r2
        L83:
            r8 = move-exception
        L84:
            if (r1 == 0) goto L89
            r1.close()
        L89:
            goto L8b
        L8a:
            throw r8
        L8b:
            goto L8a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zze(java.lang.String):java.util.Map");
    }

    @Override // com.google.android.gms.measurement.internal.zzkb
    protected final boolean zze() {
        return false;
    }

    final Map<Integer, zzbr.zzi> zzf(String str) throws Throwable {
        Cursor cursorQuery;
        zzak();
        zzd();
        Preconditions.checkNotEmpty(str);
        try {
            cursorQuery = c_().query("audience_filter_values", new String[]{"audience_id", "current_results"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                    if (!cursorQuery.moveToFirst()) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                    a aVar = new a();
                    do {
                        int i2 = cursorQuery.getInt(0);
                        try {
                            aVar.put(Integer.valueOf(i2), (zzbr.zzi) ((com.google.android.gms.internal.measurement.zzfd) ((zzbr.zzi.zza) zzki.zza(zzbr.zzi.zzi(), cursorQuery.getBlob(1))).zzu()));
                        } catch (IOException e2) {
                            zzr().zzf().zza("Failed to merge filter results. appId, audienceId, error", zzew.zza(str), Integer.valueOf(i2), e2);
                        }
                    } while (cursorQuery.moveToNext());
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return aVar;
                } catch (SQLiteException e3) {
                    e = e3;
                    zzr().zzf().zza("Database error querying filter results. appId", zzew.zza(str), e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
            }
            th = th;
        } catch (SQLiteException e4) {
            e = e4;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        throw th;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bd  */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v3, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.measurement.zzbj.zzb>> zzf(java.lang.String r13, java.lang.String r14) throws java.lang.Throwable {
        /*
            r12 = this;
            r12.zzak()
            r12.zzd()
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r13)
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r14)
            b.e.a r0 = new b.e.a
            r0.<init>()
            android.database.sqlite.SQLiteDatabase r1 = r12.c_()
            r9 = 0
            java.lang.String r2 = "event_filters"
            r3 = 2
            java.lang.String[] r4 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            java.lang.String r5 = "audience_id"
            r10 = 0
            r4[r10] = r5     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            java.lang.String r5 = "data"
            r11 = 1
            r4[r11] = r5     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            java.lang.String r5 = "app_id=? AND event_name=?"
            java.lang.String[] r6 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            r6[r10] = r13     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            r6[r11] = r14     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            r14 = 0
            r7 = 0
            r8 = 0
            r3 = r4
            r4 = r5
            r5 = r6
            r6 = r14
            android.database.Cursor r14 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            boolean r1 = r14.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            if (r1 != 0) goto L48
            java.util.Map r13 = java.util.Collections.emptyMap()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            if (r14 == 0) goto L47
            r14.close()
        L47:
            return r13
        L48:
            byte[] r1 = r14.getBlob(r11)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            com.google.android.gms.internal.measurement.zzbj$zzb$zza r2 = com.google.android.gms.internal.measurement.zzbj.zzb.zzl()     // Catch: java.io.IOException -> L7e android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            com.google.android.gms.internal.measurement.zzgn r1 = com.google.android.gms.measurement.internal.zzki.zza(r2, r1)     // Catch: java.io.IOException -> L7e android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            com.google.android.gms.internal.measurement.zzbj$zzb$zza r1 = (com.google.android.gms.internal.measurement.zzbj.zzb.zza) r1     // Catch: java.io.IOException -> L7e android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            com.google.android.gms.internal.measurement.zzgo r1 = r1.zzu()     // Catch: java.io.IOException -> L7e android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            com.google.android.gms.internal.measurement.zzfd r1 = (com.google.android.gms.internal.measurement.zzfd) r1     // Catch: java.io.IOException -> L7e android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            com.google.android.gms.internal.measurement.zzbj$zzb r1 = (com.google.android.gms.internal.measurement.zzbj.zzb) r1     // Catch: java.io.IOException -> L7e android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            int r2 = r14.getInt(r10)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            java.lang.Integer r3 = java.lang.Integer.valueOf(r2)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            java.lang.Object r3 = r0.get(r3)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            java.util.List r3 = (java.util.List) r3     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            if (r3 != 0) goto L7a
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            r3.<init>()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            r0.put(r2, r3)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
        L7a:
            r3.add(r1)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            goto L90
        L7e:
            r1 = move-exception
            com.google.android.gms.measurement.internal.zzew r2 = r12.zzr()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            com.google.android.gms.measurement.internal.zzey r2 = r2.zzf()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            java.lang.String r3 = "Failed to merge filter. appId"
            java.lang.Object r4 = com.google.android.gms.measurement.internal.zzew.zza(r13)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            r2.zza(r3, r4, r1)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
        L90:
            boolean r1 = r14.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            if (r1 != 0) goto L48
            if (r14 == 0) goto L9b
            r14.close()
        L9b:
            return r0
        L9c:
            r0 = move-exception
            goto La3
        L9e:
            r13 = move-exception
            r14 = r9
            goto Lbb
        La1:
            r0 = move-exception
            r14 = r9
        La3:
            com.google.android.gms.measurement.internal.zzew r1 = r12.zzr()     // Catch: java.lang.Throwable -> Lba
            com.google.android.gms.measurement.internal.zzey r1 = r1.zzf()     // Catch: java.lang.Throwable -> Lba
            java.lang.String r2 = "Database error querying filters. appId"
            java.lang.Object r13 = com.google.android.gms.measurement.internal.zzew.zza(r13)     // Catch: java.lang.Throwable -> Lba
            r1.zza(r2, r13, r0)     // Catch: java.lang.Throwable -> Lba
            if (r14 == 0) goto Lb9
            r14.close()
        Lb9:
            return r9
        Lba:
            r13 = move-exception
        Lbb:
            if (r14 == 0) goto Lc0
            r14.close()
        Lc0:
            goto Lc2
        Lc1:
            throw r13
        Lc2:
            goto Lc1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zzf(java.lang.String, java.lang.String):java.util.Map");
    }

    public final void zzf() {
        zzak();
        c_().beginTransaction();
    }

    public final long zzg(String str) {
        Preconditions.checkNotEmpty(str);
        return zza("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bd  */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v3, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.measurement.zzbj.zze>> zzg(java.lang.String r13, java.lang.String r14) throws java.lang.Throwable {
        /*
            r12 = this;
            r12.zzak()
            r12.zzd()
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r13)
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r14)
            b.e.a r0 = new b.e.a
            r0.<init>()
            android.database.sqlite.SQLiteDatabase r1 = r12.c_()
            r9 = 0
            java.lang.String r2 = "property_filters"
            r3 = 2
            java.lang.String[] r4 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            java.lang.String r5 = "audience_id"
            r10 = 0
            r4[r10] = r5     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            java.lang.String r5 = "data"
            r11 = 1
            r4[r11] = r5     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            java.lang.String r5 = "app_id=? AND property_name=?"
            java.lang.String[] r6 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            r6[r10] = r13     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            r6[r11] = r14     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            r14 = 0
            r7 = 0
            r8 = 0
            r3 = r4
            r4 = r5
            r5 = r6
            r6 = r14
            android.database.Cursor r14 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            boolean r1 = r14.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            if (r1 != 0) goto L48
            java.util.Map r13 = java.util.Collections.emptyMap()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            if (r14 == 0) goto L47
            r14.close()
        L47:
            return r13
        L48:
            byte[] r1 = r14.getBlob(r11)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            com.google.android.gms.internal.measurement.zzbj$zze$zza r2 = com.google.android.gms.internal.measurement.zzbj.zze.zzi()     // Catch: java.io.IOException -> L7e android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            com.google.android.gms.internal.measurement.zzgn r1 = com.google.android.gms.measurement.internal.zzki.zza(r2, r1)     // Catch: java.io.IOException -> L7e android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            com.google.android.gms.internal.measurement.zzbj$zze$zza r1 = (com.google.android.gms.internal.measurement.zzbj.zze.zza) r1     // Catch: java.io.IOException -> L7e android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            com.google.android.gms.internal.measurement.zzgo r1 = r1.zzu()     // Catch: java.io.IOException -> L7e android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            com.google.android.gms.internal.measurement.zzfd r1 = (com.google.android.gms.internal.measurement.zzfd) r1     // Catch: java.io.IOException -> L7e android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            com.google.android.gms.internal.measurement.zzbj$zze r1 = (com.google.android.gms.internal.measurement.zzbj.zze) r1     // Catch: java.io.IOException -> L7e android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            int r2 = r14.getInt(r10)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            java.lang.Integer r3 = java.lang.Integer.valueOf(r2)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            java.lang.Object r3 = r0.get(r3)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            java.util.List r3 = (java.util.List) r3     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            if (r3 != 0) goto L7a
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            r3.<init>()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            r0.put(r2, r3)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
        L7a:
            r3.add(r1)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            goto L90
        L7e:
            r1 = move-exception
            com.google.android.gms.measurement.internal.zzew r2 = r12.zzr()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            com.google.android.gms.measurement.internal.zzey r2 = r2.zzf()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            java.lang.String r3 = "Failed to merge filter"
            java.lang.Object r4 = com.google.android.gms.measurement.internal.zzew.zza(r13)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            r2.zza(r3, r4, r1)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
        L90:
            boolean r1 = r14.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            if (r1 != 0) goto L48
            if (r14 == 0) goto L9b
            r14.close()
        L9b:
            return r0
        L9c:
            r0 = move-exception
            goto La3
        L9e:
            r13 = move-exception
            r14 = r9
            goto Lbb
        La1:
            r0 = move-exception
            r14 = r9
        La3:
            com.google.android.gms.measurement.internal.zzew r1 = r12.zzr()     // Catch: java.lang.Throwable -> Lba
            com.google.android.gms.measurement.internal.zzey r1 = r1.zzf()     // Catch: java.lang.Throwable -> Lba
            java.lang.String r2 = "Database error querying filters. appId"
            java.lang.Object r13 = com.google.android.gms.measurement.internal.zzew.zza(r13)     // Catch: java.lang.Throwable -> Lba
            r1.zza(r2, r13, r0)     // Catch: java.lang.Throwable -> Lba
            if (r14 == 0) goto Lb9
            r14.close()
        Lb9:
            return r9
        Lba:
            r13 = move-exception
        Lbb:
            if (r14 == 0) goto Lc0
            r14.close()
        Lc0:
            goto Lc2
        Lc1:
            throw r13
        Lc2:
            goto Lc1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zzg(java.lang.String, java.lang.String):java.util.Map");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:0|2|(6:36|3|4|38|5|6)|(5:8|(3:10|11|12)(1:13)|30|31|32)|37|14|(3:16|17|18)(3:19|31|32)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00c3, code lost:
    
        r0 = e;
     */
    @com.google.android.gms.common.util.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final long zzh(java.lang.String r18, java.lang.String r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 233
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.zzh(java.lang.String, java.lang.String):long");
    }

    public final void zzh() {
        zzak();
        c_().endTransaction();
    }

    public final boolean zzk() {
        return zzb("select count(1) > 0 from queue where has_realtime = 1", (String[]) null) != 0;
    }

    final void zzv() {
        int iDelete;
        zzd();
        zzak();
        if (zzam()) {
            long jZza = zzs().zzf.zza();
            long jElapsedRealtime = zzm().elapsedRealtime();
            if (Math.abs(jElapsedRealtime - jZza) > zzap.zzy.zza(null).longValue()) {
                zzs().zzf.zza(jElapsedRealtime);
                zzd();
                zzak();
                if (!zzam() || (iDelete = c_().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(zzm().currentTimeMillis()), String.valueOf(zzx.zzj())})) <= 0) {
                    return;
                }
                zzr().zzx().zza("Deleted stale rows. rowsDeleted", Integer.valueOf(iDelete));
            }
        }
    }

    public final long zzw() {
        return zza("select max(bundle_end_timestamp) from queue", (String[]) null, 0L);
    }

    public final long zzx() {
        return zza("select max(timestamp) from raw_events", (String[]) null, 0L);
    }

    public final boolean zzy() {
        return zzb("select count(1) > 0 from raw_events", (String[]) null) != 0;
    }

    public final boolean zzz() {
        return zzb("select count(1) > 0 from raw_events where realtime = 1", (String[]) null) != 0;
    }
}
