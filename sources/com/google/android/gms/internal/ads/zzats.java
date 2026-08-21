package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzats {
    private String zzdjr;
    private final long zzdqu;
    private final List<String> zzdqv = new ArrayList();
    private final List<String> zzdqw = new ArrayList();
    private final Map<String, zzajs> zzdqx = new HashMap();
    private String zzdqy;
    private JSONObject zzdqz;
    private boolean zzdra;

    public zzats(String str, long j2) {
        JSONObject jSONObjectOptJSONObject;
        this.zzdra = false;
        this.zzdjr = str;
        this.zzdqu = j2;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.zzdqz = new JSONObject(str);
            if (this.zzdqz.optInt("status", -1) != 1) {
                this.zzdra = false;
                zzaxi.zzeu("App settings could not be fetched successfully.");
                return;
            }
            this.zzdra = true;
            this.zzdqy = this.zzdqz.optString("app_id");
            JSONArray jSONArrayOptJSONArray = this.zzdqz.optJSONArray("ad_unit_id_settings");
            if (jSONArrayOptJSONArray != null) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    JSONObject jSONObject = jSONArrayOptJSONArray.getJSONObject(i2);
                    String strOptString = jSONObject.optString("format");
                    String strOptString2 = jSONObject.optString("ad_unit_id");
                    if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2)) {
                        if ("interstitial".equalsIgnoreCase(strOptString)) {
                            this.zzdqw.add(strOptString2);
                        } else if ("rewarded".equalsIgnoreCase(strOptString) && (jSONObjectOptJSONObject = jSONObject.optJSONObject("mediation_config")) != null) {
                            this.zzdqx.put(strOptString2, new zzajs(jSONObjectOptJSONObject));
                        }
                    }
                }
            }
            JSONArray jSONArrayOptJSONArray2 = this.zzdqz.optJSONArray("persistable_banner_ad_unit_ids");
            if (jSONArrayOptJSONArray2 != null) {
                for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                    this.zzdqv.add(jSONArrayOptJSONArray2.optString(i3));
                }
            }
        } catch (JSONException e2) {
            zzaxi.zzd("Exception occurred while processing app setting json", e2);
            com.google.android.gms.ads.internal.zzq.zzkn().zza(e2, "AppSettings.parseAppSettingsJson");
        }
    }

    public final long zzul() {
        return this.zzdqu;
    }

    public final boolean zzum() {
        return this.zzdra;
    }

    public final String zzun() {
        return this.zzdjr;
    }

    public final String zzuo() {
        return this.zzdqy;
    }

    public final Map<String, zzajs> zzup() {
        return this.zzdqx;
    }

    public final JSONObject zzuq() {
        return this.zzdqz;
    }
}
