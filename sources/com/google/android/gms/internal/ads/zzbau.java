package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzbau implements zzaer<zzazj> {
    private boolean zzedc;

    private static int zza(Context context, Map<String, String> map, String str, int i2) {
        String str2 = map.get(str);
        if (str2 == null) {
            return i2;
        }
        try {
            zzuv.zzoj();
            return zzawy.zza(context, Integer.parseInt(str2));
        } catch (NumberFormatException unused) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(str2).length());
            sb.append("Could not parse ");
            sb.append(str);
            sb.append(" in a video GMSG: ");
            sb.append(str2);
            zzaxi.zzeu(sb.toString());
            return i2;
        }
    }

    private static void zza(zzayw zzaywVar, Map<String, String> map) {
        String str = map.get("minBufferMs");
        String str2 = map.get("maxBufferMs");
        String str3 = map.get("bufferForPlaybackMs");
        String str4 = map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = map.get("socketReceiveBufferSize");
        if (str != null) {
            try {
                zzaywVar.zzcs(Integer.parseInt(str));
            } catch (NumberFormatException unused) {
                zzaxi.zzeu(String.format("Could not parse buffer parameters in loadControl video GMSG: (%s, %s)", str, str2));
                return;
            }
        }
        if (str2 != null) {
            zzaywVar.zzct(Integer.parseInt(str2));
        }
        if (str3 != null) {
            zzaywVar.zzcu(Integer.parseInt(str3));
        }
        if (str4 != null) {
            zzaywVar.zzcv(Integer.parseInt(str4));
        }
        if (str5 != null) {
            zzaywVar.zzcw(Integer.parseInt(str5));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final /* synthetic */ void zza(zzazj zzazjVar, Map map) {
        int i2;
        zzazj zzazjVar2 = zzazjVar;
        String str = (String) map.get("action");
        if (str == null) {
            zzaxi.zzeu("Action missing from video GMSG.");
            return;
        }
        if (zzaxi.isLoggable(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String string = jSONObject.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13 + String.valueOf(string).length());
            sb.append("Video GMSG: ");
            sb.append(str);
            sb.append(" ");
            sb.append(string);
            zzaxi.zzdv(sb.toString());
        }
        if ("background".equals(str)) {
            String str2 = (String) map.get(TtmlNode.ATTR_TTS_COLOR);
            if (TextUtils.isEmpty(str2)) {
                zzaxi.zzeu("Color parameter missing from color video GMSG.");
                return;
            }
            try {
                zzazjVar2.setBackgroundColor(Color.parseColor(str2));
                return;
            } catch (IllegalArgumentException unused) {
                zzaxi.zzeu("Invalid color parameter in video GMSG.");
                return;
            }
        }
        if ("decoderProps".equals(str)) {
            String str3 = (String) map.get("mimeTypes");
            if (str3 == null) {
                zzaxi.zzeu("No MIME types specified for decoder properties inspection.");
                zzayw.zza(zzazjVar2, "missingMimeTypes");
                return;
            }
            if (Build.VERSION.SDK_INT < 16) {
                zzaxi.zzeu("Video decoder properties available on API versions >= 16.");
                zzayw.zza(zzazjVar2, "deficientApiVersion");
                return;
            }
            HashMap map2 = new HashMap();
            for (String str4 : str3.split(",")) {
                map2.put(str4, zzaww.zzem(str4.trim()));
            }
            zzayw.zza(zzazjVar2, map2);
            return;
        }
        zzazc zzazcVarZzxk = zzazjVar2.zzxk();
        if (zzazcVarZzxk == null) {
            zzaxi.zzeu("Could not get underlay container for a video GMSG.");
            return;
        }
        boolean zEquals = "new".equals(str);
        boolean zEquals2 = "position".equals(str);
        if (zEquals || zEquals2) {
            Context context = zzazjVar2.getContext();
            int iZza = zza(context, map, "x", 0);
            int iZza2 = zza(context, map, "y", 0);
            int iZza3 = zza(context, map, "w", -1);
            int iZza4 = zza(context, map, "h", -1);
            int iMin = Math.min(iZza3, zzazjVar2.zzxt() - iZza);
            int iMin2 = Math.min(iZza4, zzazjVar2.zzxs() - iZza2);
            try {
                i2 = Integer.parseInt((String) map.get("player"));
            } catch (NumberFormatException unused2) {
                i2 = 0;
            }
            boolean z = Boolean.parseBoolean((String) map.get("spherical"));
            if (!zEquals || zzazcVarZzxk.zzxg() != null) {
                zzazcVarZzxk.zze(iZza, iZza2, iMin, iMin2);
                return;
            }
            zzazcVarZzxk.zza(iZza, iZza2, iMin, iMin2, i2, z, new zzazk((String) map.get("flags")));
            zzayw zzaywVarZzxg = zzazcVarZzxk.zzxg();
            if (zzaywVarZzxg != null) {
                zza(zzaywVarZzxg, (Map<String, String>) map);
                return;
            }
            return;
        }
        zzbco zzbcoVarZzxl = zzazjVar2.zzxl();
        if (zzbcoVarZzxl != null) {
            if ("timeupdate".equals(str)) {
                String str5 = (String) map.get("currentTime");
                if (str5 == null) {
                    zzaxi.zzeu("currentTime parameter missing from timeupdate video GMSG.");
                    return;
                }
                try {
                    zzbcoVarZzxl.zze(Float.parseFloat(str5));
                    return;
                } catch (NumberFormatException unused3) {
                    String strValueOf = String.valueOf(str5);
                    zzaxi.zzeu(strValueOf.length() != 0 ? "Could not parse currentTime parameter from timeupdate video GMSG: ".concat(strValueOf) : new String("Could not parse currentTime parameter from timeupdate video GMSG: "));
                    return;
                }
            }
            if ("skip".equals(str)) {
                zzbcoVarZzxl.zzaap();
                return;
            }
        }
        zzayw zzaywVarZzxg2 = zzazcVarZzxk.zzxg();
        if (zzaywVarZzxg2 == null) {
            zzayw.zzb(zzazjVar2);
            return;
        }
        if ("click".equals(str)) {
            Context context2 = zzazjVar2.getContext();
            int iZza5 = zza(context2, map, "x", 0);
            int iZza6 = zza(context2, map, "y", 0);
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, iZza5, iZza6, 0);
            zzaywVarZzxg2.zze(motionEventObtain);
            motionEventObtain.recycle();
            return;
        }
        if ("currentTime".equals(str)) {
            String str6 = (String) map.get("time");
            if (str6 == null) {
                zzaxi.zzeu("Time parameter missing from currentTime video GMSG.");
                return;
            }
            try {
                zzaywVarZzxg2.seekTo((int) (Float.parseFloat(str6) * 1000.0f));
                return;
            } catch (NumberFormatException unused4) {
                String strValueOf2 = String.valueOf(str6);
                zzaxi.zzeu(strValueOf2.length() != 0 ? "Could not parse time parameter from currentTime video GMSG: ".concat(strValueOf2) : new String("Could not parse time parameter from currentTime video GMSG: "));
                return;
            }
        }
        if ("hide".equals(str)) {
            zzaywVarZzxg2.setVisibility(4);
            return;
        }
        if ("load".equals(str)) {
            zzaywVarZzxg2.zzhk();
            return;
        }
        if ("loadControl".equals(str)) {
            zza(zzaywVarZzxg2, (Map<String, String>) map);
            return;
        }
        if ("muted".equals(str)) {
            if (Boolean.parseBoolean((String) map.get("muted"))) {
                zzaywVarZzxg2.zzxa();
                return;
            } else {
                zzaywVarZzxg2.zzxb();
                return;
            }
        }
        if ("pause".equals(str)) {
            zzaywVarZzxg2.pause();
            return;
        }
        if ("play".equals(str)) {
            zzaywVarZzxg2.play();
            return;
        }
        if ("show".equals(str)) {
            zzaywVarZzxg2.setVisibility(0);
            return;
        }
        if ("src".equals(str)) {
            String str7 = (String) map.get("src");
            String[] strArr = {str7};
            String str8 = (String) map.get("demuxed");
            if (str8 != null) {
                try {
                    JSONArray jSONArray = new JSONArray(str8);
                    String[] strArr2 = new String[jSONArray.length()];
                    for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                        strArr2[i3] = jSONArray.getString(i3);
                    }
                    strArr = strArr2;
                } catch (JSONException unused5) {
                    String strValueOf3 = String.valueOf(str8);
                    zzaxi.zzeu(strValueOf3.length() != 0 ? "Malformed demuxed URL list for playback: ".concat(strValueOf3) : new String("Malformed demuxed URL list for playback: "));
                    strArr = new String[]{str7};
                }
            }
            zzaywVarZzxg2.zzc(str7, strArr);
            return;
        }
        if ("touchMove".equals(str)) {
            Context context3 = zzazjVar2.getContext();
            zzaywVarZzxg2.zza(zza(context3, map, "dx", 0), zza(context3, map, "dy", 0));
            if (this.zzedc) {
                return;
            }
            zzazjVar2.zzsv();
            this.zzedc = true;
            return;
        }
        if (!"volume".equals(str)) {
            if ("watermark".equals(str)) {
                zzaywVarZzxg2.zzxc();
                return;
            } else {
                String strValueOf4 = String.valueOf(str);
                zzaxi.zzeu(strValueOf4.length() != 0 ? "Unknown video action: ".concat(strValueOf4) : new String("Unknown video action: "));
                return;
            }
        }
        String str9 = (String) map.get("volume");
        if (str9 == null) {
            zzaxi.zzeu("Level parameter missing from volume video GMSG.");
            return;
        }
        try {
            zzaywVarZzxg2.setVolume(Float.parseFloat(str9));
        } catch (NumberFormatException unused6) {
            String strValueOf5 = String.valueOf(str9);
            zzaxi.zzeu(strValueOf5.length() != 0 ? "Could not parse volume parameter from volume video GMSG: ".concat(strValueOf5) : new String("Could not parse volume parameter from volume video GMSG: "));
        }
    }
}
