package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzajt {
    private final long zzdbx;
    private final String zzdcr;
    private final String zzdcs;
    public final List<String> zzdct;
    private final String zzdcu;
    private final String zzdcv;
    private final List<String> zzdcw;
    private final List<String> zzdcx;
    private final List<String> zzdcy;
    private final List<String> zzdcz;
    private final List<String> zzdda;
    public final String zzddb;
    private final List<String> zzddc;
    private final List<String> zzddd;
    private final List<String> zzdde;
    private final String zzddf;
    private final String zzddg;
    private final String zzddh;
    private final String zzddi;
    private final String zzddj;
    private final List<String> zzddk;
    private final String zzddl;
    public final String zzddm;

    public zzajt(JSONObject jSONObject) throws JSONException {
        List<String> listZza;
        this.zzdcs = jSONObject.optString(TtmlNode.ATTR_ID);
        JSONArray jSONArray = jSONObject.getJSONArray("adapters");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            arrayList.add(jSONArray.getString(i2));
        }
        this.zzdct = Collections.unmodifiableList(arrayList);
        this.zzdcu = jSONObject.optString("allocation_id", null);
        com.google.android.gms.ads.internal.zzq.zzlb();
        this.zzdcw = zzajv.zza(jSONObject, "clickurl");
        com.google.android.gms.ads.internal.zzq.zzlb();
        this.zzdcx = zzajv.zza(jSONObject, "imp_urls");
        com.google.android.gms.ads.internal.zzq.zzlb();
        this.zzdcy = zzajv.zza(jSONObject, "downloaded_imp_urls");
        com.google.android.gms.ads.internal.zzq.zzlb();
        this.zzdda = zzajv.zza(jSONObject, "fill_urls");
        com.google.android.gms.ads.internal.zzq.zzlb();
        this.zzddc = zzajv.zza(jSONObject, "video_start_urls");
        com.google.android.gms.ads.internal.zzq.zzlb();
        this.zzdde = zzajv.zza(jSONObject, "video_complete_urls");
        com.google.android.gms.ads.internal.zzq.zzlb();
        this.zzddd = zzajv.zza(jSONObject, "video_reward_urls");
        this.zzddf = jSONObject.optString(FirebaseAnalytics.Param.TRANSACTION_ID);
        this.zzddg = jSONObject.optString("valid_from_timestamp");
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("ad");
        if (jSONObjectOptJSONObject != null) {
            com.google.android.gms.ads.internal.zzq.zzlb();
            listZza = zzajv.zza(jSONObjectOptJSONObject, "manual_impression_urls");
        } else {
            listZza = null;
        }
        this.zzdcz = listZza;
        this.zzdcr = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.toString() : null;
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("data");
        this.zzddb = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.toString() : null;
        this.zzdcv = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optString("class_name") : null;
        this.zzddh = jSONObject.optString("html_template", null);
        this.zzddi = jSONObject.optString("ad_base_url", null);
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("assets");
        this.zzddj = jSONObjectOptJSONObject3 != null ? jSONObjectOptJSONObject3.toString() : null;
        com.google.android.gms.ads.internal.zzq.zzlb();
        this.zzddk = zzajv.zza(jSONObject, "template_ids");
        JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("ad_loader_options");
        this.zzddl = jSONObjectOptJSONObject4 != null ? jSONObjectOptJSONObject4.toString() : null;
        this.zzddm = jSONObject.optString("response_type", null);
        this.zzdbx = jSONObject.optLong("ad_network_timeout_millis", -1L);
    }
}
