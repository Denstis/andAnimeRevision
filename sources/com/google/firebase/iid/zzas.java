package com.google.firebase.iid;

import android.text.TextUtils;
import android.util.Log;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class zzas {
    private static final long zzb = TimeUnit.DAYS.toMillis(7);
    final String zza;
    private final String zzc;
    private final long zzd;

    private zzas(String str, String str2, long j2) {
        this.zza = str;
        this.zzc = str2;
        this.zzd = j2;
    }

    static zzas zza(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!str.startsWith("{")) {
            return new zzas(str, null, 0L);
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            return new zzas(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong("timestamp"));
        } catch (JSONException e2) {
            String strValueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 23);
            sb.append("Failed to parse token: ");
            sb.append(strValueOf);
            Log.w("FirebaseInstanceId", sb.toString());
            return null;
        }
    }

    static String zza(zzas zzasVar) {
        if (zzasVar == null) {
            return null;
        }
        return zzasVar.zza;
    }

    static String zza(String str, String str2, long j2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("token", str);
            jSONObject.put("appVersion", str2);
            jSONObject.put("timestamp", j2);
            return jSONObject.toString();
        } catch (JSONException e2) {
            String strValueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 24);
            sb.append("Failed to encode token: ");
            sb.append(strValueOf);
            Log.w("FirebaseInstanceId", sb.toString());
            return null;
        }
    }

    final boolean zzb(String str) {
        return System.currentTimeMillis() > this.zzd + zzb || !str.equals(this.zzc);
    }
}
