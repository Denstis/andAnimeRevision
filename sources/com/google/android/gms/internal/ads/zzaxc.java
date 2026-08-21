package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.util.JsonWriter;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.IOException;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class zzaxc {
    private static boolean enabled = false;
    private static boolean zzdvy = false;
    private final List<String> zzdwa;
    private static Object lock = new Object();
    private static Clock zzbmp = DefaultClock.getInstance();
    private static final Set<String> zzdvz = new HashSet(Arrays.asList(new String[0]));

    public zzaxc() {
        this(null);
    }

    public zzaxc(String str) {
        List<String> listAsList;
        if (isEnabled()) {
            String[] strArr = new String[1];
            String strValueOf = String.valueOf(UUID.randomUUID().toString());
            strArr[0] = strValueOf.length() != 0 ? "network_request_".concat(strValueOf) : new String("network_request_");
            listAsList = Arrays.asList(strArr);
        } else {
            listAsList = new ArrayList<>();
        }
        this.zzdwa = listAsList;
    }

    public static boolean isEnabled() {
        boolean z;
        synchronized (lock) {
            z = zzdvy && enabled;
        }
        return z;
    }

    static final /* synthetic */ void zza(int i2, Map map, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("code").value(i2);
        jsonWriter.endObject();
        zza(jsonWriter, (Map<String, ?>) map);
        jsonWriter.endObject();
    }

    private static void zza(JsonWriter jsonWriter, Map<String, ?> map) throws IOException {
        if (map == null) {
            return;
        }
        jsonWriter.name("headers").beginArray();
        Iterator<Map.Entry<String, ?>> it = map.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, ?> next = it.next();
            String key = next.getKey();
            if (!zzdvz.contains(key)) {
                if (!(next.getValue() instanceof List)) {
                    if (!(next.getValue() instanceof String)) {
                        zzaxi.zzes("Connection headers should be either Map<String, String> or Map<String, List<String>>");
                        break;
                    }
                    jsonWriter.beginObject();
                    jsonWriter.name(AppMeasurementSdk.ConditionalUserProperty.NAME).value(key);
                    jsonWriter.name("value").value((String) next.getValue());
                    jsonWriter.endObject();
                } else {
                    for (String str : (List) next.getValue()) {
                        jsonWriter.beginObject();
                        jsonWriter.name(AppMeasurementSdk.ConditionalUserProperty.NAME).value(key);
                        jsonWriter.name("value").value(str);
                        jsonWriter.endObject();
                    }
                }
            }
        }
        jsonWriter.endArray();
    }

    static final /* synthetic */ void zza(String str, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        if (str != null) {
            jsonWriter.name("error_description").value(str);
        }
        jsonWriter.endObject();
    }

    private final void zza(String str, zzaxf zzaxfVar) {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(zzbmp.currentTimeMillis());
            jsonWriter.name("event").value(str);
            jsonWriter.name("components").beginArray();
            Iterator<String> it = this.zzdwa.iterator();
            while (it.hasNext()) {
                jsonWriter.value(it.next());
            }
            jsonWriter.endArray();
            zzaxfVar.zzb(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e2) {
            zzaxi.zzc("unable to log", e2);
        }
        zzer(stringWriter.toString());
    }

    static final /* synthetic */ void zza(String str, String str2, Map map, byte[] bArr, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("uri").value(str);
        jsonWriter.name("verb").value(str2);
        jsonWriter.endObject();
        zza(jsonWriter, (Map<String, ?>) map);
        if (bArr != null) {
            jsonWriter.name(TtmlNode.TAG_BODY).value(Base64Utils.encode(bArr));
        }
        jsonWriter.endObject();
    }

    static final /* synthetic */ void zza(byte[] bArr, JsonWriter jsonWriter) throws IOException {
        String str;
        jsonWriter.name("params").beginObject();
        int length = bArr.length;
        String strEncode = Base64Utils.encode(bArr);
        if (length >= 10000) {
            strEncode = zzawy.zzen(strEncode);
            if (strEncode != null) {
                str = "bodydigest";
            }
            jsonWriter.name("bodylength").value(length);
            jsonWriter.endObject();
        }
        str = TtmlNode.TAG_BODY;
        jsonWriter.name(str).value(strEncode);
        jsonWriter.name("bodylength").value(length);
        jsonWriter.endObject();
    }

    public static void zzak(boolean z) {
        synchronized (lock) {
            zzdvy = true;
            enabled = z;
        }
    }

    private final void zzb(final String str, final String str2, final Map<String, ?> map, final byte[] bArr) {
        zza("onNetworkRequest", new zzaxf(str, str2, map, bArr) { // from class: com.google.android.gms.internal.ads.zzaxb
            private final String zzcyz;
            private final Map zzcze;
            private final String zzczh;
            private final byte[] zzdvx;

            {
                this.zzczh = str;
                this.zzcyz = str2;
                this.zzcze = map;
                this.zzdvx = bArr;
            }

            @Override // com.google.android.gms.internal.ads.zzaxf
            public final void zzb(JsonWriter jsonWriter) throws IOException {
                zzaxc.zza(this.zzczh, this.zzcyz, this.zzcze, this.zzdvx, jsonWriter);
            }
        });
    }

    private final void zzb(final Map<String, ?> map, final int i2) {
        zza("onNetworkResponse", new zzaxf(i2, map) { // from class: com.google.android.gms.internal.ads.zzaxe
            private final int zzdwc;
            private final Map zzdwd;

            {
                this.zzdwc = i2;
                this.zzdwd = map;
            }

            @Override // com.google.android.gms.internal.ads.zzaxf
            public final void zzb(JsonWriter jsonWriter) throws IOException {
                zzaxc.zza(this.zzdwc, this.zzdwd, jsonWriter);
            }
        });
    }

    public static boolean zzbo(Context context) {
        if (Build.VERSION.SDK_INT < 17) {
            return false;
        }
        if (!((Boolean) zzuv.zzon().zzd(zzza.zzclr)).booleanValue()) {
            return false;
        }
        try {
            return Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0;
        } catch (Exception e2) {
            zzaxi.zzd("Fail to determine debug setting.", e2);
            return false;
        }
    }

    private final void zzeq(final String str) {
        zza("onNetworkRequestError", new zzaxf(str) { // from class: com.google.android.gms.internal.ads.zzaxg
            private final String zzczh;

            {
                this.zzczh = str;
            }

            @Override // com.google.android.gms.internal.ads.zzaxf
            public final void zzb(JsonWriter jsonWriter) throws IOException {
                zzaxc.zza(this.zzczh, jsonWriter);
            }
        });
    }

    private static synchronized void zzer(String str) {
        zzaxi.zzet("GMA Debug BEGIN");
        int i2 = 0;
        while (i2 < str.length()) {
            int i3 = i2 + 4000;
            String strValueOf = String.valueOf(str.substring(i2, Math.min(i3, str.length())));
            zzaxi.zzet(strValueOf.length() != 0 ? "GMA Debug CONTENT ".concat(strValueOf) : new String("GMA Debug CONTENT "));
            i2 = i3;
        }
        zzaxi.zzet("GMA Debug FINISH");
    }

    public static void zzwm() {
        synchronized (lock) {
            zzdvy = false;
            enabled = false;
            zzaxi.zzeu("Ad debug logging enablement is out of date.");
        }
    }

    public static boolean zzwn() {
        boolean z;
        synchronized (lock) {
            z = zzdvy;
        }
        return z;
    }

    public final void zza(String str, String str2, Map<String, ?> map, byte[] bArr) {
        if (isEnabled()) {
            zzb(str, str2, map, bArr);
        }
    }

    public final void zza(HttpURLConnection httpURLConnection, int i2) {
        if (isEnabled()) {
            String responseMessage = null;
            zzb(httpURLConnection.getHeaderFields() == null ? null : new HashMap(httpURLConnection.getHeaderFields()), i2);
            if (i2 < 200 || i2 >= 300) {
                try {
                    responseMessage = httpURLConnection.getResponseMessage();
                } catch (IOException e2) {
                    String strValueOf = String.valueOf(e2.getMessage());
                    zzaxi.zzeu(strValueOf.length() != 0 ? "Can not get error message from error HttpURLConnection\n".concat(strValueOf) : new String("Can not get error message from error HttpURLConnection\n"));
                }
                zzeq(responseMessage);
            }
        }
    }

    public final void zza(HttpURLConnection httpURLConnection, byte[] bArr) {
        if (isEnabled()) {
            zzb(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), httpURLConnection.getRequestProperties() == null ? null : new HashMap(httpURLConnection.getRequestProperties()), bArr);
        }
    }

    public final void zza(Map<String, ?> map, int i2) {
        if (isEnabled()) {
            zzb(map, i2);
            if (i2 < 200 || i2 >= 300) {
                zzeq(null);
            }
        }
    }

    public final void zzep(String str) {
        if (isEnabled() && str != null) {
            zzi(str.getBytes());
        }
    }

    public final void zzi(final byte[] bArr) {
        zza("onNetworkResponseBody", new zzaxf(bArr) { // from class: com.google.android.gms.internal.ads.zzaxd
            private final byte[] zzdwb;

            {
                this.zzdwb = bArr;
            }

            @Override // com.google.android.gms.internal.ads.zzaxf
            public final void zzb(JsonWriter jsonWriter) throws IOException {
                zzaxc.zza(this.zzdwb, jsonWriter);
            }
        });
    }
}
