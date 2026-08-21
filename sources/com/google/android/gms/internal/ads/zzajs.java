package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzajs {
    public final List<zzajt> zzdbw;
    private final long zzdbx;
    private final List<String> zzdby;
    private final List<String> zzdbz;
    private final List<String> zzdca;
    private final List<String> zzdcb;
    private final List<String> zzdcc;
    private final boolean zzdcd;
    private final String zzdce;
    private final long zzdcf;
    private final String zzdcg;
    private final int zzdch;
    private final int zzdci;
    private final long zzdcj;
    private final boolean zzdck;
    private final boolean zzdcl;
    private final boolean zzdcm;
    private final boolean zzdcn;
    private int zzdco;
    private int zzdcp;
    private boolean zzdcq;

    public zzajs(JSONObject jSONObject) throws JSONException {
        if (zzaxi.isLoggable(2)) {
            String strValueOf = String.valueOf(jSONObject.toString(2));
            zzaug.zzdy(strValueOf.length() != 0 ? "Mediation Response JSON: ".concat(strValueOf) : new String("Mediation Response JSON: "));
        }
        JSONArray jSONArray = jSONObject.getJSONArray("ad_networks");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        int i2 = -1;
        for (int i3 = 0; i3 < jSONArray.length(); i3++) {
            try {
                zzajt zzajtVar = new zzajt(jSONArray.getJSONObject(i3));
                boolean z = true;
                if ("banner".equalsIgnoreCase(zzajtVar.zzddm)) {
                    this.zzdcq = true;
                }
                arrayList.add(zzajtVar);
                if (i2 < 0) {
                    Iterator<String> it = zzajtVar.zzdct.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (it.next().equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                                break;
                            }
                        } else {
                            z = false;
                            break;
                        }
                    }
                    if (z) {
                        i2 = i3;
                    }
                }
            } catch (JSONException unused) {
            }
        }
        this.zzdco = i2;
        this.zzdcp = jSONArray.length();
        this.zzdbw = Collections.unmodifiableList(arrayList);
        this.zzdce = jSONObject.optString("qdata");
        this.zzdci = jSONObject.optInt("fs_model_type", -1);
        this.zzdcj = jSONObject.optLong("timeout_ms", -1L);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("settings");
        if (jSONObjectOptJSONObject == null) {
            this.zzdbx = -1L;
            this.zzdby = null;
            this.zzdbz = null;
            this.zzdca = null;
            this.zzdcb = null;
            this.zzdcc = null;
            this.zzdcf = -1L;
            this.zzdcg = null;
            this.zzdch = 0;
            this.zzdck = false;
            this.zzdcd = false;
            this.zzdcl = false;
            this.zzdcm = false;
            this.zzdcn = false;
            return;
        }
        this.zzdbx = jSONObjectOptJSONObject.optLong("ad_network_timeout_millis", -1L);
        com.google.android.gms.ads.internal.zzq.zzlb();
        this.zzdby = zzajv.zza(jSONObjectOptJSONObject, "click_urls");
        com.google.android.gms.ads.internal.zzq.zzlb();
        this.zzdbz = zzajv.zza(jSONObjectOptJSONObject, "imp_urls");
        com.google.android.gms.ads.internal.zzq.zzlb();
        this.zzdca = zzajv.zza(jSONObjectOptJSONObject, "downloaded_imp_urls");
        com.google.android.gms.ads.internal.zzq.zzlb();
        this.zzdcb = zzajv.zza(jSONObjectOptJSONObject, "nofill_urls");
        com.google.android.gms.ads.internal.zzq.zzlb();
        this.zzdcc = zzajv.zza(jSONObjectOptJSONObject, "remote_ping_urls");
        this.zzdcd = jSONObjectOptJSONObject.optBoolean("render_in_browser", false);
        long jOptLong = jSONObjectOptJSONObject.optLong("refresh", -1L);
        this.zzdcf = jOptLong > 0 ? 1000 * jOptLong : -1L;
        zzaqt zzaqtVarZza = zzaqt.zza(jSONObjectOptJSONObject.optJSONArray("rewards"));
        if (zzaqtVarZza == null) {
            this.zzdcg = null;
            this.zzdch = 0;
        } else {
            this.zzdcg = zzaqtVarZza.type;
            this.zzdch = zzaqtVarZza.zzdnv;
        }
        this.zzdck = jSONObjectOptJSONObject.optBoolean("use_displayed_impression", false);
        this.zzdcl = jSONObjectOptJSONObject.optBoolean("allow_pub_rendered_attribution", false);
        this.zzdcm = jSONObjectOptJSONObject.optBoolean("allow_pub_owned_ad_view", false);
        this.zzdcn = jSONObjectOptJSONObject.optBoolean("allow_custom_click_gesture", false);
    }
}
