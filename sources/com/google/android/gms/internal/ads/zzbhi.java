package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzbhi implements zzaiq<zzbhm> {
    private final zzpe zzfbr;
    private final Context zzlk;
    private final PowerManager zzzd;

    public zzbhi(Context context, zzpe zzpeVar) {
        this.zzlk = context;
        this.zzfbr = zzpeVar;
        this.zzzd = (PowerManager) context.getSystemService("power");
    }

    @Override // com.google.android.gms.internal.ads.zzaiq
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final JSONObject zzj(zzbhm zzbhmVar) throws JSONException {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        zzpk zzpkVar = zzbhmVar.zzfcg;
        if (zzpkVar == null) {
            jSONObject = new JSONObject();
        } else {
            if (this.zzfbr.zzke() == null) {
                throw new JSONException("Active view Info cannot be null.");
            }
            boolean z = zzpkVar.zzbny;
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("afmaVersion", this.zzfbr.zzkd()).put("activeViewJSON", this.zzfbr.zzke()).put("timestamp", zzbhmVar.timestamp).put("adFormat", this.zzfbr.zzkc()).put("hashCode", this.zzfbr.zzkf()).put("isMraid", false).put("isStopped", false).put("isPaused", zzbhmVar.zzfcd).put("isNative", this.zzfbr.zzkg()).put("isScreenOn", Build.VERSION.SDK_INT >= 20 ? this.zzzd.isInteractive() : this.zzzd.isScreenOn()).put("appMuted", com.google.android.gms.ads.internal.zzq.zzko().zzot()).put("appVolume", com.google.android.gms.ads.internal.zzq.zzko().zzos()).put("deviceVolume", zzave.zzbe(this.zzlk.getApplicationContext()));
            Rect rect = new Rect();
            Display defaultDisplay = ((WindowManager) this.zzlk.getSystemService("window")).getDefaultDisplay();
            rect.right = defaultDisplay.getWidth();
            rect.bottom = defaultDisplay.getHeight();
            jSONObject3.put("windowVisibility", zzpkVar.zzzk).put("isAttachedToWindow", z).put("viewBox", new JSONObject().put("top", zzpkVar.zzbnz.top).put("bottom", zzpkVar.zzbnz.bottom).put(TtmlNode.LEFT, zzpkVar.zzbnz.left).put(TtmlNode.RIGHT, zzpkVar.zzbnz.right)).put("adBox", new JSONObject().put("top", zzpkVar.zzboa.top).put("bottom", zzpkVar.zzboa.bottom).put(TtmlNode.LEFT, zzpkVar.zzboa.left).put(TtmlNode.RIGHT, zzpkVar.zzboa.right)).put("globalVisibleBox", new JSONObject().put("top", zzpkVar.zzbob.top).put("bottom", zzpkVar.zzbob.bottom).put(TtmlNode.LEFT, zzpkVar.zzbob.left).put(TtmlNode.RIGHT, zzpkVar.zzbob.right)).put("globalVisibleBoxVisible", zzpkVar.zzboc).put("localVisibleBox", new JSONObject().put("top", zzpkVar.zzbod.top).put("bottom", zzpkVar.zzbod.bottom).put(TtmlNode.LEFT, zzpkVar.zzbod.left).put(TtmlNode.RIGHT, zzpkVar.zzbod.right)).put("localVisibleBoxVisible", zzpkVar.zzboe).put("hitBox", new JSONObject().put("top", zzpkVar.zzbof.top).put("bottom", zzpkVar.zzbof.bottom).put(TtmlNode.LEFT, zzpkVar.zzbof.left).put(TtmlNode.RIGHT, zzpkVar.zzbof.right)).put("screenDensity", this.zzlk.getResources().getDisplayMetrics().density);
            jSONObject3.put("isVisible", zzbhmVar.zzbnp);
            if (((Boolean) zzuv.zzon().zzd(zzza.zzcma)).booleanValue()) {
                JSONArray jSONArray2 = new JSONArray();
                List<Rect> list = zzpkVar.zzboh;
                if (list != null) {
                    for (Rect rect2 : list) {
                        jSONArray2.put(new JSONObject().put("top", rect2.top).put("bottom", rect2.bottom).put(TtmlNode.LEFT, rect2.left).put(TtmlNode.RIGHT, rect2.right));
                    }
                }
                jSONObject3.put("scrollableContainerBoxes", jSONArray2);
            }
            if (!TextUtils.isEmpty(zzbhmVar.zzfcf)) {
                jSONObject3.put("doneReasonCode", "u");
            }
            jSONObject = jSONObject3;
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}
