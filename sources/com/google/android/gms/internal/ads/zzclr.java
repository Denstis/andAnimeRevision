package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzclr {
    private final Executor executor;
    private final Map<String, zzclu> zzgbh = new ConcurrentHashMap();
    private final Map<String, Map<String, List<zzclu>>> zzgbi = new ConcurrentHashMap();
    private JSONObject zzgbj;

    public zzclr(Executor executor) {
        this.executor = executor;
    }

    private static boolean zza(JSONArray jSONArray, String str) {
        if (jSONArray != null && str != null) {
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                try {
                } catch (PatternSyntaxException e2) {
                    com.google.android.gms.ads.internal.zzq.zzkn().zza(e2, "RtbAdapterMap.hasAtleastOneRegexMatch");
                }
                if (Pattern.compile(jSONArray.optString(i2)).matcher(str).lookingAt()) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzakz, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final synchronized void zzalc() {
        JSONArray jSONArrayOptJSONArray;
        JSONObject jSONObjectZzuq = com.google.android.gms.ads.internal.zzq.zzkn().zzuh().zzve().zzuq();
        if (jSONObjectZzuq != null) {
            try {
                JSONArray jSONArrayOptJSONArray2 = jSONObjectZzuq.optJSONArray("ad_unit_id_settings");
                this.zzgbj = jSONObjectZzuq.optJSONObject("ad_unit_patterns");
                if (jSONArrayOptJSONArray2 != null) {
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                        JSONObject jSONObject = jSONArrayOptJSONArray2.getJSONObject(i2);
                        String strOptString = jSONObject.optString("ad_unit_id", "");
                        String strOptString2 = jSONObject.optString("format", "");
                        ArrayList arrayList = new ArrayList();
                        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("mediation_config");
                        if (jSONObjectOptJSONObject != null && (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("ad_networks")) != null) {
                            for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                                JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i3);
                                ArrayList arrayList2 = new ArrayList();
                                if (jSONObject2 != null) {
                                    JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("data");
                                    Bundle bundle = new Bundle();
                                    if (jSONObjectOptJSONObject2 != null) {
                                        Iterator<String> itKeys = jSONObjectOptJSONObject2.keys();
                                        while (itKeys.hasNext()) {
                                            String next = itKeys.next();
                                            bundle.putString(next, jSONObjectOptJSONObject2.optString(next, ""));
                                        }
                                    }
                                    JSONArray jSONArrayOptJSONArray3 = jSONObject2.optJSONArray("rtb_adapters");
                                    if (jSONArrayOptJSONArray3 != null) {
                                        ArrayList arrayList3 = new ArrayList();
                                        for (int i4 = 0; i4 < jSONArrayOptJSONArray3.length(); i4++) {
                                            String strOptString3 = jSONArrayOptJSONArray3.optString(i4, "");
                                            if (!TextUtils.isEmpty(strOptString3)) {
                                                arrayList3.add(strOptString3);
                                            }
                                        }
                                        int size = arrayList3.size();
                                        int i5 = 0;
                                        while (i5 < size) {
                                            Object obj = arrayList3.get(i5);
                                            i5++;
                                            String str = (String) obj;
                                            zzgd(str);
                                            if (this.zzgbh.get(str) != null) {
                                                arrayList2.add(new zzclu(str, strOptString2, bundle));
                                            }
                                        }
                                    }
                                }
                                arrayList.addAll(arrayList2);
                            }
                        }
                        if (!TextUtils.isEmpty(strOptString2) && !TextUtils.isEmpty(strOptString)) {
                            Map<String, List<zzclu>> concurrentHashMap = this.zzgbi.get(strOptString2);
                            if (concurrentHashMap == null) {
                                concurrentHashMap = new ConcurrentHashMap<>();
                            }
                            this.zzgbi.put(strOptString2, concurrentHashMap);
                            List<zzclu> arrayList4 = concurrentHashMap.get(strOptString);
                            if (arrayList4 == null) {
                                arrayList4 = new ArrayList<>();
                            }
                            arrayList4.addAll(arrayList);
                            concurrentHashMap.put(strOptString, arrayList4);
                        }
                    }
                }
            } catch (JSONException e2) {
                zzaug.zza("Malformed config loading JSON.", e2);
            }
        }
    }

    public final void zzaky() {
        com.google.android.gms.ads.internal.zzq.zzkn().zzuh().zzb(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzclq
            private final zzclr zzgbg;

            {
                this.zzgbg = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzgbg.zzalb();
            }
        });
        this.executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzclt
            private final zzclr zzgbg;

            {
                this.zzgbg = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzgbg.zzala();
            }
        });
    }

    final /* synthetic */ void zzalb() {
        this.executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcls
            private final zzclr zzgbg;

            {
                this.zzgbg = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzgbg.zzalc();
            }
        });
    }

    public final void zzgd(String str) {
        if (TextUtils.isEmpty(str) || this.zzgbh.containsKey(str)) {
            return;
        }
        this.zzgbh.put(str, new zzclu(str, "", new Bundle()));
    }

    public final Map<String, List<Bundle>> zzs(String str, String str2) {
        JSONObject jSONObject;
        JSONArray jSONArrayOptJSONArray;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return Collections.emptyMap();
        }
        Map<String, List<zzclu>> map = this.zzgbi.get(str);
        if (map == null) {
            return Collections.emptyMap();
        }
        List<zzclu> list = map.get(str2);
        if (list == null) {
            String strOptString = "";
            if (((Boolean) zzuv.zzon().zzd(zzza.zzcmk)).booleanValue() && (jSONObject = this.zzgbj) != null && (jSONArrayOptJSONArray = jSONObject.optJSONArray(str)) != null) {
                int i2 = 0;
                while (true) {
                    if (i2 >= jSONArrayOptJSONArray.length()) {
                        break;
                    }
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                    if (jSONObjectOptJSONObject != null) {
                        JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("including");
                        JSONArray jSONArrayOptJSONArray3 = jSONObjectOptJSONObject.optJSONArray("excluding");
                        if (zza(jSONArrayOptJSONArray2, str2) && !zza(jSONArrayOptJSONArray3, str2)) {
                            strOptString = jSONObjectOptJSONObject.optString("effective_ad_unit_id", "");
                            break;
                        }
                    }
                    i2++;
                }
            }
            list = map.get(strOptString);
        }
        if (list == null) {
            return Collections.emptyMap();
        }
        HashMap map2 = new HashMap();
        for (zzclu zzcluVar : list) {
            String str3 = zzcluVar.zzffi;
            if (!map2.containsKey(str3)) {
                map2.put(str3, new ArrayList());
            }
            ((List) map2.get(str3)).add(zzcluVar.zzeik);
        }
        return map2;
    }
}
