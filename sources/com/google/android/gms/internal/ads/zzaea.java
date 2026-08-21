package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzaea {
    public static final zzaer<zzbbw> zzcxe = zzaed.zzcxw;
    public static final zzaer<zzbbw> zzcxf = zzaec.zzcxw;
    public static final zzaer<zzbbw> zzcxg = zzaef.zzcxw;
    public static final zzaer<zzbbw> zzcxh = new zzaeg();
    public static final zzaer<zzbbw> zzcxi = new zzaej();
    public static final zzaer<zzbbw> zzcxj = zzaee.zzcxw;
    public static final zzaer<Object> zzcxk = new zzaei();
    public static final zzaer<zzbbw> zzcxl = new zzael();
    public static final zzaer<zzbbw> zzcxm = zzaeh.zzcxw;
    public static final zzaer<zzbbw> zzcxn = new zzaek();
    public static final zzaer<zzbbw> zzcxo = new zzaen();
    public static final zzaer<zzazj> zzcxp = new zzbau();
    public static final zzaer<zzazj> zzcxq = new zzbat();
    public static final zzaer<zzbbw> zzcxr = new zzaeb();
    public static final zzaex zzcxs = new zzaex();
    public static final zzaer<zzbbw> zzcxt = new zzaem();
    public static final zzaer<zzbbw> zzcxu = new zzaep();
    public static final zzaer<zzbbw> zzcxv = new zzaeo();

    static final /* synthetic */ void zza(zzagn zzagnVar, Map map) throws zzdi {
        String str = (String) map.get("u");
        if (str == null) {
            zzaxi.zzeu("URL missing from click GMSG.");
            return;
        }
        Uri uriZza = Uri.parse(str);
        try {
            zzdf zzdfVarZzzs = ((zzbdb) zzagnVar).zzzs();
            if (zzdfVarZzzs != null && zzdfVarZzzs.zzc(uriZza)) {
                uriZza = zzdfVarZzzs.zza(uriZza, ((zzbct) zzagnVar).getContext(), ((zzbdd) zzagnVar).getView(), ((zzbct) zzagnVar).zzxn());
            }
        } catch (zzdi unused) {
            String strValueOf = String.valueOf(str);
            zzaxi.zzeu(strValueOf.length() != 0 ? "Unable to append parameter to URL: ".concat(strValueOf) : new String("Unable to append parameter to URL: "));
        }
        zzbct zzbctVar = (zzbct) zzagnVar;
        new zzawl(zzbctVar.getContext(), ((zzbde) zzagnVar).zzxr().zzblz, zzate.zzc(uriZza, zzbctVar.getContext())).zzut();
    }

    static final /* synthetic */ void zza(zzbct zzbctVar, Map map) {
        String str = (String) map.get("u");
        if (str == null) {
            zzaxi.zzeu("URL missing from httpTrack GMSG.");
        } else {
            new zzawl(zzbctVar.getContext(), ((zzbde) zzbctVar).zzxr().zzblz, str).zzut();
        }
    }

    static final /* synthetic */ void zza(zzbdb zzbdbVar, Map map) {
        String str = (String) map.get("tx");
        String str2 = (String) map.get("ty");
        String str3 = (String) map.get("td");
        try {
            int i2 = Integer.parseInt(str);
            int i3 = Integer.parseInt(str2);
            int i4 = Integer.parseInt(str3);
            zzdf zzdfVarZzzs = zzbdbVar.zzzs();
            if (zzdfVarZzzs != null) {
                zzdfVarZzzs.zzcd().zza(i2, i3, i4);
            }
        } catch (NumberFormatException unused) {
            zzaxi.zzeu("Could not parse touch parameters from gmsg.");
        }
    }

    static final /* synthetic */ void zzb(zzbct zzbctVar, Map map) {
        JSONException jSONException;
        String str;
        PackageManager packageManager = zzbctVar.getContext().getPackageManager();
        try {
            try {
                JSONArray jSONArray = new JSONObject((String) map.get("data")).getJSONArray("intents");
                JSONObject jSONObject = new JSONObject();
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    try {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                        String strOptString = jSONObject2.optString(TtmlNode.ATTR_ID);
                        String strOptString2 = jSONObject2.optString("u");
                        String strOptString3 = jSONObject2.optString("i");
                        String strOptString4 = jSONObject2.optString("m");
                        String strOptString5 = jSONObject2.optString(TtmlNode.TAG_P);
                        String strOptString6 = jSONObject2.optString("c");
                        jSONObject2.optString("f");
                        jSONObject2.optString("e");
                        String strOptString7 = jSONObject2.optString("intent_url");
                        Intent uri = null;
                        if (!TextUtils.isEmpty(strOptString7)) {
                            try {
                                uri = Intent.parseUri(strOptString7, 0);
                            } catch (URISyntaxException e2) {
                                String strValueOf = String.valueOf(strOptString7);
                                zzaxi.zzc(strValueOf.length() != 0 ? "Error parsing the url: ".concat(strValueOf) : new String("Error parsing the url: "), e2);
                            }
                        }
                        if (uri == null) {
                            uri = new Intent();
                            if (!TextUtils.isEmpty(strOptString2)) {
                                uri.setData(Uri.parse(strOptString2));
                            }
                            if (!TextUtils.isEmpty(strOptString3)) {
                                uri.setAction(strOptString3);
                            }
                            if (!TextUtils.isEmpty(strOptString4)) {
                                uri.setType(strOptString4);
                            }
                            if (!TextUtils.isEmpty(strOptString5)) {
                                uri.setPackage(strOptString5);
                            }
                            if (!TextUtils.isEmpty(strOptString6)) {
                                String[] strArrSplit = strOptString6.split("/", 2);
                                if (strArrSplit.length == 2) {
                                    uri.setComponent(new ComponentName(strArrSplit[0], strArrSplit[1]));
                                }
                            }
                        }
                        try {
                            jSONObject.put(strOptString, packageManager.resolveActivity(uri, C.DEFAULT_BUFFER_SEGMENT_SIZE) != null);
                        } catch (JSONException e3) {
                            jSONException = e3;
                            str = "Error constructing openable urls response.";
                            zzaxi.zzc(str, jSONException);
                        }
                    } catch (JSONException e4) {
                        jSONException = e4;
                        str = "Error parsing the intent data.";
                    }
                }
                ((zzagn) zzbctVar).zzb("openableIntents", jSONObject);
            } catch (JSONException unused) {
                ((zzagn) zzbctVar).zzb("openableIntents", new JSONObject());
            }
        } catch (JSONException unused2) {
            ((zzagn) zzbctVar).zzb("openableIntents", new JSONObject());
        }
    }

    static final /* synthetic */ void zzc(zzbct zzbctVar, Map map) {
        String str = (String) map.get("urls");
        if (TextUtils.isEmpty(str)) {
            zzaxi.zzeu("URLs missing in canOpenURLs GMSG.");
            return;
        }
        String[] strArrSplit = str.split(",");
        HashMap map2 = new HashMap();
        PackageManager packageManager = zzbctVar.getContext().getPackageManager();
        for (String str2 : strArrSplit) {
            String[] strArrSplit2 = str2.split(";", 2);
            boolean z = true;
            if (packageManager.resolveActivity(new Intent(strArrSplit2.length > 1 ? strArrSplit2[1].trim() : "android.intent.action.VIEW", Uri.parse(strArrSplit2[0].trim())), C.DEFAULT_BUFFER_SEGMENT_SIZE) == null) {
                z = false;
            }
            map2.put(str2, Boolean.valueOf(z));
        }
        ((zzagn) zzbctVar).zza("openableURLs", map2);
    }
}
