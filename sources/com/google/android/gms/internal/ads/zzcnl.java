package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.util.JsonReader;
import java.io.IOException;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public final class zzcnl {
    public final String zzgdr;
    public String zzgds;

    public zzcnl(JsonReader jsonReader) throws IOException {
        jsonReader.beginObject();
        String strNextString = "";
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName = strNextName == null ? "" : strNextName;
            byte b2 = -1;
            if (strNextName.hashCode() == -995427962 && strNextName.equals("params")) {
                b2 = 0;
            }
            if (b2 != 0) {
                jsonReader.skipValue();
            } else {
                strNextString = jsonReader.nextString();
            }
        }
        this.zzgdr = strNextString;
        jsonReader.endObject();
    }

    final zzcnl zzn(Bundle bundle) {
        try {
            this.zzgds = com.google.android.gms.ads.internal.zzq.zzkj().zzd(bundle).toString();
        } catch (JSONException unused) {
            this.zzgds = "{}";
        }
        return this;
    }
}
