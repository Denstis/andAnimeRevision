package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzaex implements zzaer<Object> {
    private final Object lock = new Object();
    private final Map<String, zzaez> zzcye = new HashMap();

    public final <EngineT extends zzahk> zzddi<JSONObject> zza(EngineT enginet, String str, JSONObject jSONObject) {
        zzaxv zzaxvVar = new zzaxv();
        com.google.android.gms.ads.internal.zzq.zzkj();
        String strZzvm = zzaul.zzvm();
        zza(strZzvm, new zzaew(this, zzaxvVar));
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(TtmlNode.ATTR_ID, strZzvm);
            jSONObject2.put("args", jSONObject);
            enginet.zza(str, jSONObject2);
        } catch (Exception e2) {
            zzaxvVar.setException(e2);
        }
        return zzaxvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final void zza(Object obj, Map<String, String> map) {
        String strConcat;
        String str = map.get(TtmlNode.ATTR_ID);
        String str2 = map.get("fail");
        String str3 = map.get("fail_reason");
        String str4 = map.get("fail_stack");
        String str5 = map.get("result");
        if (TextUtils.isEmpty(str4)) {
            str3 = "Unknown Fail Reason.";
        }
        if (TextUtils.isEmpty(str4)) {
            strConcat = "";
        } else {
            String strValueOf = String.valueOf(str4);
            strConcat = strValueOf.length() != 0 ? "\n".concat(strValueOf) : new String("\n");
        }
        synchronized (this.lock) {
            zzaez zzaezVarRemove = this.zzcye.remove(str);
            if (zzaezVarRemove == null) {
                String strValueOf2 = String.valueOf(str);
                zzaxi.zzeu(strValueOf2.length() != 0 ? "Received result for unexpected method invocation: ".concat(strValueOf2) : new String("Received result for unexpected method invocation: "));
                return;
            }
            if (!TextUtils.isEmpty(str2)) {
                String strValueOf3 = String.valueOf(str3);
                String strValueOf4 = String.valueOf(strConcat);
                zzaezVarRemove.onFailure(strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3));
            } else {
                if (str5 == null) {
                    zzaezVarRemove.zzc(null);
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(str5);
                    if (zzaug.zzuu()) {
                        String strValueOf5 = String.valueOf(jSONObject.toString(2));
                        zzaug.zzdy(strValueOf5.length() != 0 ? "Result GMSG: ".concat(strValueOf5) : new String("Result GMSG: "));
                    }
                    zzaezVarRemove.zzc(jSONObject);
                } catch (JSONException e2) {
                    zzaezVarRemove.onFailure(e2.getMessage());
                }
            }
        }
    }

    public final void zza(String str, zzaez zzaezVar) {
        synchronized (this.lock) {
            this.zzcye.put(str, zzaezVar);
        }
    }
}
