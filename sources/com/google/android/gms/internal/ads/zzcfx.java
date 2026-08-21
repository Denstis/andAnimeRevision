package com.google.android.gms.internal.ads;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.internal.ads.zzsp;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class zzcfx {
    public static int zza(SQLiteDatabase sQLiteDatabase, int i2) {
        int i3 = 0;
        if (i2 == 2) {
            return 0;
        }
        Cursor cursorZzc = zzc(sQLiteDatabase, i2);
        if (cursorZzc.getCount() > 0) {
            cursorZzc.moveToNext();
            i3 = 0 + cursorZzc.getInt(cursorZzc.getColumnIndexOrThrow("value"));
        }
        cursorZzc.close();
        return i3;
    }

    public static long zzb(SQLiteDatabase sQLiteDatabase, int i2) {
        Cursor cursorZzc = zzc(sQLiteDatabase, 2);
        long j2 = 0;
        if (cursorZzc.getCount() > 0) {
            cursorZzc.moveToNext();
            j2 = 0 + cursorZzc.getLong(cursorZzc.getColumnIndexOrThrow("value"));
        }
        cursorZzc.close();
        return j2;
    }

    public static ArrayList<zzsp.zzj.zza> zzb(SQLiteDatabase sQLiteDatabase) {
        ArrayList<zzsp.zzj.zza> arrayList = new ArrayList<>();
        Cursor cursorQuery = sQLiteDatabase.query("offline_signal_contents", new String[]{"serialized_proto_data"}, null, null, null, null, null);
        while (cursorQuery.moveToNext()) {
            try {
                arrayList.add(zzsp.zzj.zza.zzg(cursorQuery.getBlob(cursorQuery.getColumnIndexOrThrow("serialized_proto_data"))));
            } catch (zzdrg e2) {
                zzaxi.zzes("Unable to deserialize proto from offline signals database:");
                zzaxi.zzes(e2.getMessage());
            }
        }
        cursorQuery.close();
        return arrayList;
    }

    private static Cursor zzc(SQLiteDatabase sQLiteDatabase, int i2) {
        String[] strArr = {"value"};
        String[] strArr2 = new String[1];
        if (i2 == 0) {
            strArr2[0] = "failed_requests";
        } else if (i2 == 1) {
            strArr2[0] = "total_requests";
        } else if (i2 == 2) {
            strArr2[0] = "last_successful_request_time";
        }
        return sQLiteDatabase.query("offline_signal_statistics", strArr, "statistic_name = ?", strArr2, null, null, null);
    }
}
