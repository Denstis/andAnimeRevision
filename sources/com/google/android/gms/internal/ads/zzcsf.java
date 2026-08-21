package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzcsf implements zzcrr<JSONObject> {
    private final AdvertisingIdClient.Info zzggr;
    private final String zzggs;
    private final Context zzlk;

    public zzcsf(AdvertisingIdClient.Info info, Context context, String str) {
        this.zzlk = context;
        this.zzggr = info;
        this.zzggs = str;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        try {
            JSONObject jSONObjectZzb = zzawg.zzb(jSONObject, "pii");
            String id = null;
            boolean zIsLimitAdTrackingEnabled = false;
            if (this.zzggr != null) {
                id = this.zzggr.getId();
                zIsLimitAdTrackingEnabled = this.zzggr.isLimitAdTrackingEnabled();
            }
            if (TextUtils.isEmpty(id)) {
                jSONObjectZzb.put("pdid", this.zzggs);
                jSONObjectZzb.put("pdidtype", "ssaid");
            } else {
                jSONObjectZzb.put("rdid", id);
                jSONObjectZzb.put("is_lat", zIsLimitAdTrackingEnabled);
                jSONObjectZzb.put("idtype", "adid");
            }
        } catch (JSONException e2) {
            zzaug.zza("Failed putting Ad ID.", e2);
        }
    }
}
