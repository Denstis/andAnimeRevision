package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.ImagesContract;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzapk {
    private final int errorCode;
    private final String type;
    private String url;
    private final String zzdje;
    private final String zzdlq;
    private final boolean zzdlr;
    private final List<String> zzdne;
    private final String zzdnf;
    private final String zzdng;
    private final boolean zzdnh;
    private final String zzdni;
    private final boolean zzdnj;
    private final JSONObject zzdnk;

    public zzapk(JSONObject jSONObject) {
        this.url = jSONObject.optString(ImagesContract.URL);
        this.zzdnf = jSONObject.optString("base_uri");
        this.zzdng = jSONObject.optString("post_parameters");
        String strOptString = jSONObject.optString("drt_include");
        this.zzdnh = strOptString != null && (strOptString.equals("1") || strOptString.equals("true"));
        this.zzdje = jSONObject.optString("request_id");
        this.type = jSONObject.optString("type");
        String strOptString2 = jSONObject.optString("errors");
        this.zzdne = strOptString2 == null ? null : Arrays.asList(strOptString2.split(","));
        this.errorCode = jSONObject.optInt("valid", 0) == 1 ? -2 : 1;
        this.zzdni = jSONObject.optString("fetched_ad");
        this.zzdnj = jSONObject.optBoolean("render_test_ad_label");
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("preprocessor_flags");
        this.zzdnk = jSONObjectOptJSONObject == null ? new JSONObject() : jSONObjectOptJSONObject;
        this.zzdlq = jSONObject.optString("analytics_query_ad_event_id");
        this.zzdlr = jSONObject.optBoolean("is_analytics_logging_enabled");
    }

    public final int getErrorCode() {
        return this.errorCode;
    }

    public final String getUrl() {
        return this.url;
    }

    public final List<String> zztd() {
        return this.zzdne;
    }

    public final String zzte() {
        return this.zzdnf;
    }

    public final String zztf() {
        return this.zzdng;
    }

    public final boolean zztg() {
        return this.zzdnh;
    }

    public final JSONObject zzth() {
        return this.zzdnk;
    }
}
