package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.common.internal.ImagesContract;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzbwq {
    private final Executor executor;
    private final zzaxl zzblk;
    private final zzaay zzdeh;
    private final zzsd zzeen;
    private final zzdf zzegb;
    private final ScheduledExecutorService zzffn;
    private final zzbwl zzfoo;
    private final com.google.android.gms.ads.internal.zza zzfop;
    private final zzbxe zzfoq;
    private final Context zzlk;

    public zzbwq(Context context, zzbwl zzbwlVar, zzdf zzdfVar, zzaxl zzaxlVar, com.google.android.gms.ads.internal.zza zzaVar, zzsd zzsdVar, Executor executor, zzcwe zzcweVar, zzbxe zzbxeVar, ScheduledExecutorService scheduledExecutorService) {
        this.zzlk = context;
        this.zzfoo = zzbwlVar;
        this.zzegb = zzdfVar;
        this.zzblk = zzaxlVar;
        this.zzfop = zzaVar;
        this.zzeen = zzsdVar;
        this.executor = executor;
        this.zzdeh = zzcweVar.zzdeh;
        this.zzfoq = zzbxeVar;
        this.zzffn = scheduledExecutorService;
    }

    private static <T> zzddi<T> zza(zzddi<T> zzddiVar, T t) {
        final Object obj = null;
        return zzdcy.zzb(zzddiVar, Exception.class, new zzdcj(obj) { // from class: com.google.android.gms.internal.ads.zzbwx
            private final Object zzfow;

            {
                this.zzfow = obj;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj2) {
                Object obj3 = this.zzfow;
                zzaug.zza("Error during loading assets.", (Exception) obj2);
                return zzdcy.zzah(obj3);
            }
        }, zzaxn.zzdwn);
    }

    private final zzddi<List<zzaau>> zza(JSONArray jSONArray, boolean z, boolean z2) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return zzdcy.zzah(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = z2 ? jSONArray.length() : 1;
        for (int i2 = 0; i2 < length; i2++) {
            arrayList.add(zza(jSONArray.optJSONObject(i2), z));
        }
        return zzdcy.zzb(zzdcy.zzg(arrayList), zzbwt.zzdos, this.executor);
    }

    private final zzddi<zzaau> zza(JSONObject jSONObject, boolean z) {
        if (jSONObject == null) {
            return zzdcy.zzah(null);
        }
        final String strOptString = jSONObject.optString(ImagesContract.URL);
        if (TextUtils.isEmpty(strOptString)) {
            return zzdcy.zzah(null);
        }
        final double dOptDouble = jSONObject.optDouble("scale", 1.0d);
        boolean zOptBoolean = jSONObject.optBoolean("is_transparent", true);
        final int iOptInt = jSONObject.optInt("width", -1);
        final int iOptInt2 = jSONObject.optInt("height", -1);
        if (z) {
            return zzdcy.zzah(new zzaau(null, Uri.parse(strOptString), dOptDouble, iOptInt, iOptInt2));
        }
        return zza(jSONObject.optBoolean("require"), (zzddi<Object>) zzdcy.zzb(this.zzfoo.zza(strOptString, dOptDouble, zOptBoolean), new zzdal(strOptString, dOptDouble, iOptInt, iOptInt2) { // from class: com.google.android.gms.internal.ads.zzbws
            private final String zzczh;
            private final int zzdtl;
            private final int zzdtm;
            private final double zzfot;

            {
                this.zzczh = strOptString;
                this.zzfot = dOptDouble;
                this.zzdtl = iOptInt;
                this.zzdtm = iOptInt2;
            }

            @Override // com.google.android.gms.internal.ads.zzdal
            public final Object apply(Object obj) {
                String str = this.zzczh;
                return new zzaau(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(str), this.zzfot, this.zzdtl, this.zzdtm);
            }
        }, this.executor), (Object) null);
    }

    private static <T> zzddi<T> zza(boolean z, final zzddi<T> zzddiVar, T t) {
        return z ? zzdcy.zzb(zzddiVar, new zzdcj(zzddiVar) { // from class: com.google.android.gms.internal.ads.zzbww
            private final zzddi zzfov;

            {
                this.zzfov = zzddiVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj) {
                return obj != null ? this.zzfov : zzdcy.zzi(new zzcjh("Retrieve required value in native ad response failed.", 0));
            }
        }, zzaxn.zzdwn) : zza(zzddiVar, (Object) null);
    }

    private static Integer zzf(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException unused) {
            return null;
        }
    }

    public static List<zzxk> zzi(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("mute");
        if (jSONObjectOptJSONObject == null) {
            return Collections.emptyList();
        }
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("reasons");
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
            zzxk zzxkVarZzk = zzk(jSONArrayOptJSONArray.optJSONObject(i2));
            if (zzxkVarZzk != null) {
                arrayList.add(zzxkVarZzk);
            }
        }
        return arrayList;
    }

    public static zzxk zzj(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("mute");
        if (jSONObjectOptJSONObject2 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("default_reason")) == null) {
            return null;
        }
        return zzk(jSONObjectOptJSONObject);
    }

    private static zzxk zzk(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String strOptString = jSONObject.optString("reason");
        String strOptString2 = jSONObject.optString("ping_url");
        if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2)) {
            return null;
        }
        return new zzxk(strOptString, strOptString2);
    }

    final /* synthetic */ zzaat zza(JSONObject jSONObject, List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        String strOptString = jSONObject.optString(MimeTypes.BASE_TYPE_TEXT);
        Integer numZzf = zzf(jSONObject, "bg_color");
        Integer numZzf2 = zzf(jSONObject, "text_color");
        int iOptInt = jSONObject.optInt("text_size", -1);
        boolean zOptBoolean = jSONObject.optBoolean("allow_pub_rendering");
        int iOptInt2 = jSONObject.optInt("animation_ms", 1000);
        return new zzaat(strOptString, list, numZzf, numZzf2, iOptInt > 0 ? Integer.valueOf(iOptInt) : null, jSONObject.optInt("presentation_ms", 4000) + iOptInt2, this.zzdeh.zzbjy, zOptBoolean);
    }

    final /* synthetic */ zzddi zzb(String str, Object obj) throws zzbcf {
        com.google.android.gms.ads.internal.zzq.zzkk();
        zzbbw zzbbwVarZza = zzbcb.zza(this.zzlk, zzbdj.zzaar(), "native-omid", false, false, this.zzegb, this.zzblk, null, null, this.zzfop, this.zzeen, null, false);
        final zzaxw zzaxwVarZzl = zzaxw.zzl(zzbbwVarZza);
        zzbbwVarZza.zzzp().zza(new zzbdf(zzaxwVarZzl) { // from class: com.google.android.gms.internal.ads.zzbwz
            private final zzaxw zzefu;

            {
                this.zzefu = zzaxwVarZzl;
            }

            @Override // com.google.android.gms.internal.ads.zzbdf
            public final void zzad(boolean z) {
                this.zzefu.zzwp();
            }
        });
        zzbbwVarZza.loadData(str, "text/html", C.UTF8_NAME);
        return zzaxwVarZzl;
    }

    public final zzddi<zzaau> zzc(JSONObject jSONObject, String str) {
        return zza(jSONObject.optJSONObject(str), this.zzdeh.zzcvz);
    }

    public final zzddi<List<zzaau>> zzd(JSONObject jSONObject, String str) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        zzaay zzaayVar = this.zzdeh;
        return zza(jSONArrayOptJSONArray, zzaayVar.zzcvz, zzaayVar.zzbjx);
    }

    public final zzddi<zzaat> zze(JSONObject jSONObject, String str) {
        final JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(str);
        if (jSONObjectOptJSONObject == null) {
            return zzdcy.zzah(null);
        }
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("images");
        JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(TtmlNode.TAG_IMAGE);
        if (jSONArrayOptJSONArray == null && jSONObjectOptJSONObject2 != null) {
            jSONArrayOptJSONArray = new JSONArray();
            jSONArrayOptJSONArray.put(jSONObjectOptJSONObject2);
        }
        return zza(jSONObjectOptJSONObject.optBoolean("require"), (zzddi<Object>) zzdcy.zzb(zza(jSONArrayOptJSONArray, false, true), new zzdal(this, jSONObjectOptJSONObject) { // from class: com.google.android.gms.internal.ads.zzbwv
            private final JSONObject zzfch;
            private final zzbwq zzfou;

            {
                this.zzfou = this;
                this.zzfch = jSONObjectOptJSONObject;
            }

            @Override // com.google.android.gms.internal.ads.zzdal
            public final Object apply(Object obj) {
                return this.zzfou.zza(this.zzfch, (List) obj);
            }
        }, this.executor), (Object) null);
    }

    public final zzddi<zzbbw> zzl(JSONObject jSONObject) {
        JSONObject jSONObjectZza = zzawg.zza(jSONObject, "html_containers", "instream");
        if (jSONObjectZza != null) {
            return zza(jSONObjectZza.optBoolean("require"), this.zzfoq.zzp(jSONObjectZza.optString("base_url"), jSONObjectZza.optString("html")), (Object) null);
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(MimeTypes.BASE_TYPE_VIDEO);
        if (jSONObjectOptJSONObject == null) {
            return zzdcy.zzah(null);
        }
        if (!TextUtils.isEmpty(jSONObjectOptJSONObject.optString("vast_xml"))) {
            return zza((zzddi<Object>) zzdcy.zza(this.zzfoq.zzm(jSONObjectOptJSONObject), ((Integer) zzuv.zzon().zzd(zzza.zzcoe)).intValue(), TimeUnit.SECONDS, this.zzffn), (Object) null);
        }
        zzaxi.zzeu("Required field 'vast_xml' is missing");
        return zzdcy.zzah(null);
    }
}
