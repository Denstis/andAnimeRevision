package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzcvt {
    public final int responseCode;
    public final String zzbzn;
    public final List<String> zzdcb;
    public final String zzdlq;
    public final long zzfvu;
    public final int zzgju;

    zzcvt(JsonReader jsonReader) throws IOException {
        List<String> listEmptyList = Collections.emptyList();
        jsonReader.beginObject();
        String strNextString = "";
        int iNextInt = 0;
        long jNextLong = 0;
        int iNextInt2 = 0;
        String strNextString2 = "";
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if ("nofill_urls".equals(strNextName)) {
                listEmptyList = zzawg.zza(jsonReader);
            } else if ("refresh_interval".equals(strNextName)) {
                iNextInt = jsonReader.nextInt();
            } else if ("gws_query_id".equals(strNextName)) {
                strNextString = jsonReader.nextString();
            } else if ("analytics_query_ad_event_id".equals(strNextName)) {
                strNextString2 = jsonReader.nextString();
            } else if ("response_code".equals(strNextName)) {
                iNextInt2 = jsonReader.nextInt();
            } else if ("latency".equals(strNextName)) {
                jNextLong = jsonReader.nextLong();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        this.zzdcb = listEmptyList;
        this.zzgju = iNextInt;
        this.zzbzn = strNextString;
        this.zzdlq = strNextString2;
        this.responseCode = iNextInt2;
        this.zzfvu = jNextLong;
    }
}
