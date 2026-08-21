package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzadx implements zzaer<Object> {
    private final zzadw zzcxc;

    public zzadx(zzadw zzadwVar) {
        this.zzcxc = zzadwVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0098 A[PHI: r3 r4
      0x0098: PHI (r3v7 java.lang.String) = (r3v3 java.lang.String), (r3v10 java.lang.String) binds: [B:42:0x0096, B:83:0x0148] A[DONT_GENERATE, DONT_INLINE]
      0x0098: PHI (r4v14 java.lang.String) = (r4v11 java.lang.String), (r4v15 java.lang.String) binds: [B:42:0x0096, B:83:0x0148] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.os.Bundle zzb(org.json.JSONObject r10) throws org.json.JSONException {
        /*
            Method dump skipped, instruction units count: 340
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzadx.zzb(org.json.JSONObject):android.os.Bundle");
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final void zza(Object obj, Map<String, String> map) {
        if (this.zzcxc == null) {
            return;
        }
        String str = map.get(AppMeasurementSdk.ConditionalUserProperty.NAME);
        if (str == null) {
            zzaxi.zzet("Ad metadata with no name parameter.");
            str = "";
        }
        Bundle bundleZzb = null;
        if (map.containsKey("info")) {
            try {
                bundleZzb = zzb(new JSONObject(map.get("info")));
            } catch (JSONException e2) {
                zzaxi.zzc("Failed to convert ad metadata to JSON.", e2);
            }
        }
        if (bundleZzb == null) {
            zzaxi.zzes("Failed to convert ad metadata to Bundle.");
        } else {
            this.zzcxc.zza(str, bundleZzb);
        }
    }
}
