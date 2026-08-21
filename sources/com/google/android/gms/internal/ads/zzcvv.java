package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import android.util.JsonWriter;
import java.io.IOException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzcvv implements zzawh {
    public final String zzdhz;
    public final String zzdib;
    public final JSONObject zzfjj;
    private final JSONObject zzgjw;

    zzcvv(JsonReader jsonReader) {
        this.zzgjw = zzawg.zzc(jsonReader);
        this.zzdib = this.zzgjw.optString("ad_html", null);
        this.zzdhz = this.zzgjw.optString("ad_base_url", null);
        this.zzfjj = this.zzgjw.optJSONObject("ad_json");
    }

    @Override // com.google.android.gms.internal.ads.zzawh
    public final void zza(JsonWriter jsonWriter) throws IOException {
        zzawg.zza(jsonWriter, this.zzgjw);
    }
}
