package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import android.util.JsonToken;
import android.util.JsonWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzawg {
    private static final zzawi<Map<String, ?>> zzdut = new zzawf();

    public static String zza(zzawh zzawhVar) {
        return zzk(zzawhVar);
    }

    public static List<String> zza(JsonReader jsonReader) {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(jsonReader.nextString());
        }
        jsonReader.endArray();
        return arrayList;
    }

    public static List<String> zza(JSONArray jSONArray, List<String> list) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray == null) {
            return arrayList;
        }
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            arrayList.add(jSONArray.getString(i2));
        }
        return arrayList;
    }

    public static JSONObject zza(String str, Object obj) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(str, obj);
        return jSONObject;
    }

    public static JSONObject zza(JSONObject jSONObject, String... strArr) {
        JSONObject jSONObjectZzb = zzb(jSONObject, strArr);
        if (jSONObjectZzb == null) {
            return null;
        }
        return jSONObjectZzb.optJSONObject(strArr[strArr.length - 1]);
    }

    private static void zza(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
            return;
        }
        if (obj instanceof Number) {
            jsonWriter.value((Number) obj);
            return;
        }
        if (obj instanceof Boolean) {
            jsonWriter.value(((Boolean) obj).booleanValue());
            return;
        }
        if (obj instanceof String) {
            jsonWriter.value((String) obj);
            return;
        }
        if (obj instanceof zzawh) {
            ((zzawh) obj).zza(jsonWriter);
            return;
        }
        if (!(obj instanceof Map)) {
            if (!(obj instanceof List)) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginArray();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                zza(jsonWriter, it.next());
            }
            jsonWriter.endArray();
            return;
        }
        jsonWriter.beginObject();
        for (Map.Entry entry : ((Map) obj).entrySet()) {
            Object key = entry.getKey();
            if (key instanceof String) {
                zza(jsonWriter.name((String) key), entry.getValue());
            }
        }
        jsonWriter.endObject();
    }

    private static void zza(JsonWriter jsonWriter, JSONArray jSONArray) throws IOException {
        try {
            jsonWriter.beginArray();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                Object obj = jSONArray.get(i2);
                if (obj instanceof String) {
                    jsonWriter.value((String) obj);
                } else if (obj instanceof Number) {
                    jsonWriter.value((Number) obj);
                } else if (obj instanceof Boolean) {
                    jsonWriter.value(((Boolean) obj).booleanValue());
                } else if (obj instanceof JSONObject) {
                    zza(jsonWriter, (JSONObject) obj);
                } else {
                    if (!(obj instanceof JSONArray)) {
                        String strValueOf = String.valueOf(obj);
                        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 23);
                        sb.append("unable to write field: ");
                        sb.append(strValueOf);
                        throw new JSONException(sb.toString());
                    }
                    zza(jsonWriter, (JSONArray) obj);
                }
            }
            jsonWriter.endArray();
        } catch (JSONException e2) {
            throw new IOException(e2);
        }
    }

    public static void zza(JsonWriter jsonWriter, JSONObject jSONObject) throws IOException {
        try {
            jsonWriter.beginObject();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSONObject.get(next);
                if (obj instanceof String) {
                    jsonWriter.name(next).value((String) obj);
                } else if (obj instanceof Number) {
                    jsonWriter.name(next).value((Number) obj);
                } else if (obj instanceof Boolean) {
                    jsonWriter.name(next).value(((Boolean) obj).booleanValue());
                } else if (obj instanceof JSONObject) {
                    zza(jsonWriter.name(next), (JSONObject) obj);
                } else {
                    if (!(obj instanceof JSONArray)) {
                        String strValueOf = String.valueOf(obj);
                        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 23);
                        sb.append("unable to write field: ");
                        sb.append(strValueOf);
                        throw new JSONException(sb.toString());
                    }
                    zza(jsonWriter.name(next), (JSONArray) obj);
                }
            }
            jsonWriter.endObject();
        } catch (JSONException e2) {
            throw new IOException(e2);
        }
    }

    public static boolean zza(boolean z, JSONObject jSONObject, String... strArr) {
        JSONObject jSONObjectZzb = zzb(jSONObject, strArr);
        if (jSONObjectZzb == null) {
            return false;
        }
        return jSONObjectZzb.optBoolean(strArr[strArr.length - 1], false);
    }

    public static Map<String, String> zzb(JsonReader jsonReader) throws IOException {
        HashMap map = new HashMap();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            map.put(jsonReader.nextName(), jsonReader.nextString());
        }
        jsonReader.endObject();
        return map;
    }

    public static JSONObject zzb(JSONObject jSONObject, String str) throws JSONException {
        try {
            return jSONObject.getJSONObject(str);
        } catch (JSONException unused) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject.put(str, jSONObject2);
            return jSONObject2;
        }
    }

    private static JSONObject zzb(JSONObject jSONObject, String[] strArr) {
        for (int i2 = 0; i2 < strArr.length - 1; i2++) {
            if (jSONObject == null) {
                return null;
            }
            jSONObject = jSONObject.optJSONObject(strArr[i2]);
        }
        return jSONObject;
    }

    public static JSONObject zzc(JsonReader jsonReader) {
        Object objZzd;
        JSONObject jSONObject = new JSONObject();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            JsonToken jsonTokenPeek = jsonReader.peek();
            if (JsonToken.BEGIN_ARRAY.equals(jsonTokenPeek)) {
                objZzd = zzd(jsonReader);
            } else if (JsonToken.BEGIN_OBJECT.equals(jsonTokenPeek)) {
                objZzd = zzc(jsonReader);
            } else if (JsonToken.BOOLEAN.equals(jsonTokenPeek)) {
                jSONObject.put(strNextName, jsonReader.nextBoolean());
            } else if (JsonToken.NUMBER.equals(jsonTokenPeek)) {
                jSONObject.put(strNextName, jsonReader.nextDouble());
            } else {
                if (!JsonToken.STRING.equals(jsonTokenPeek)) {
                    String strValueOf = String.valueOf(jsonTokenPeek);
                    StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 23);
                    sb.append("unexpected json token: ");
                    sb.append(strValueOf);
                    throw new IllegalStateException(sb.toString());
                }
                objZzd = jsonReader.nextString();
            }
            jSONObject.put(strNextName, objZzd);
        }
        jsonReader.endObject();
        return jSONObject;
    }

    public static JSONArray zzd(JsonReader jsonReader) throws JSONException, IOException {
        Object objZzd;
        JSONArray jSONArray = new JSONArray();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            JsonToken jsonTokenPeek = jsonReader.peek();
            if (JsonToken.BEGIN_ARRAY.equals(jsonTokenPeek)) {
                objZzd = zzd(jsonReader);
            } else if (JsonToken.BEGIN_OBJECT.equals(jsonTokenPeek)) {
                objZzd = zzc(jsonReader);
            } else if (JsonToken.BOOLEAN.equals(jsonTokenPeek)) {
                jSONArray.put(jsonReader.nextBoolean());
            } else if (JsonToken.NUMBER.equals(jsonTokenPeek)) {
                jSONArray.put(jsonReader.nextDouble());
            } else {
                if (!JsonToken.STRING.equals(jsonTokenPeek)) {
                    String strValueOf = String.valueOf(jsonTokenPeek);
                    StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 23);
                    sb.append("unexpected json token: ");
                    sb.append(strValueOf);
                    throw new IllegalStateException(sb.toString());
                }
                objZzd = jsonReader.nextString();
            }
            jSONArray.put(objZzd);
        }
        jsonReader.endArray();
        return jSONArray;
    }

    private static String zzk(Object obj) {
        if (obj == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        try {
            JsonWriter jsonWriter = new JsonWriter(stringWriter);
            zza(jsonWriter, obj);
            jsonWriter.close();
            return stringWriter.toString();
        } catch (IOException e2) {
            zzaxi.zzc("Error when writing JSON.", e2);
            return null;
        }
    }
}
