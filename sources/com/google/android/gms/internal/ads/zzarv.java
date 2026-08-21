package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzdut;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzarv implements zzasi {
    private static List<Future<Void>> zzdog = Collections.synchronizedList(new ArrayList());
    private final zzasd zzdlj;
    private final zzdve zzdoh;
    private final LinkedHashMap<String, zzdvh> zzdoi;
    private final zzask zzdol;
    private boolean zzdom;
    private final zzasj zzdon;
    private final Context zzlk;
    private final List<String> zzdoj = new ArrayList();
    private final List<String> zzdok = new ArrayList();
    private final Object lock = new Object();
    private HashSet<String> zzdoo = new HashSet<>();
    private boolean zzdop = false;
    private boolean zzdoq = false;
    private boolean zzdor = false;

    public zzarv(Context context, zzaxl zzaxlVar, zzasd zzasdVar, String str, zzask zzaskVar) {
        Preconditions.checkNotNull(zzasdVar, "SafeBrowsing config is not present.");
        this.zzlk = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzdoi = new LinkedHashMap<>();
        this.zzdol = zzaskVar;
        this.zzdlj = zzasdVar;
        Iterator<String> it = this.zzdlj.zzdpa.iterator();
        while (it.hasNext()) {
            this.zzdoo.add(it.next().toLowerCase(Locale.ENGLISH));
        }
        this.zzdoo.remove("cookie".toLowerCase(Locale.ENGLISH));
        zzdve zzdveVar = new zzdve();
        zzdveVar.zzhvf = zzdut.zzb.zzg.OCTAGON_AD;
        zzdveVar.url = str;
        zzdveVar.zzhvh = str;
        zzdut.zzb.C0160zzb.zza zzaVarZzbcn = zzdut.zzb.C0160zzb.zzbcn();
        String str2 = this.zzdlj.zzdow;
        if (str2 != null) {
            zzaVarZzbcn.zzhn(str2);
        }
        zzdveVar.zzhvj = (zzdut.zzb.C0160zzb) zzaVarZzbcn.zzazr();
        zzdut.zzb.zzi.zza zzaVarZzbm = zzdut.zzb.zzi.zzbcx().zzbm(Wrappers.packageManager(this.zzlk).isCallerInstantApp());
        String str3 = zzaxlVar.zzblz;
        if (str3 != null) {
            zzaVarZzbm.zzhq(str3);
        }
        long apkVersion = GoogleApiAvailabilityLight.getInstance().getApkVersion(this.zzlk);
        if (apkVersion > 0) {
            zzaVarZzbm.zzfo(apkVersion);
        }
        zzdveVar.zzhvt = (zzdut.zzb.zzi) zzaVarZzbm.zzazr();
        this.zzdoh = zzdveVar;
        this.zzdon = new zzasj(this.zzlk, this.zzdlj.zzdpd, this);
    }

    private final zzdvh zzdt(String str) {
        zzdvh zzdvhVar;
        synchronized (this.lock) {
            zzdvhVar = this.zzdoi.get(str);
        }
        return zzdvhVar;
    }

    static final /* synthetic */ Void zzdu(String str) {
        return null;
    }

    private final zzddi<Void> zztq() {
        zzddi<Void> zzddiVarZzb;
        if (!((this.zzdom && this.zzdlj.zzdpc) || (this.zzdor && this.zzdlj.zzdpb) || (!this.zzdom && this.zzdlj.zzdoz))) {
            return zzdcy.zzah(null);
        }
        synchronized (this.lock) {
            this.zzdoh.zzhvk = new zzdvh[this.zzdoi.size()];
            this.zzdoi.values().toArray(this.zzdoh.zzhvk);
            this.zzdoh.zzhvu = (String[]) this.zzdoj.toArray(new String[0]);
            this.zzdoh.zzhvv = (String[]) this.zzdok.toArray(new String[0]);
            if (zzasf.isEnabled()) {
                String str = this.zzdoh.url;
                String str2 = this.zzdoh.zzhvl;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 53 + String.valueOf(str2).length());
                sb.append("Sending SB report\n  url: ");
                sb.append(str);
                sb.append("\n  clickUrl: ");
                sb.append(str2);
                sb.append("\n  resources: \n");
                StringBuilder sb2 = new StringBuilder(sb.toString());
                for (zzdvh zzdvhVar : this.zzdoh.zzhvk) {
                    sb2.append("    [");
                    sb2.append(zzdvhVar.zzhwj.length);
                    sb2.append("] ");
                    sb2.append(zzdvhVar.url);
                }
                zzasf.zzdv(sb2.toString());
            }
            zzddi<String> zzddiVarZza = new zzavy(this.zzlk).zza(1, this.zzdlj.zzdox, null, zzdus.zzb(this.zzdoh));
            if (zzasf.isEnabled()) {
                zzddiVarZza.addListener(new zzasc(this), zzaxn.zzdwi);
            }
            zzddiVarZzb = zzdcy.zzb(zzddiVarZza, zzarx.zzdos, zzaxn.zzdwn);
        }
        return zzddiVarZzb;
    }

    @Override // com.google.android.gms.internal.ads.zzasi
    public final void zza(String str, Map<String, String> map, int i2) {
        synchronized (this.lock) {
            if (i2 == 3) {
                this.zzdor = true;
            }
            if (this.zzdoi.containsKey(str)) {
                if (i2 == 3) {
                    this.zzdoi.get(str).zzhwi = zzdut.zzb.zzh.zza.zzhj(i2);
                }
                return;
            }
            zzdvh zzdvhVar = new zzdvh();
            zzdvhVar.zzhwi = zzdut.zzb.zzh.zza.zzhj(i2);
            zzdvhVar.zzhwc = Integer.valueOf(this.zzdoi.size());
            zzdvhVar.url = str;
            zzdvhVar.zzhwd = new zzdvg();
            if (this.zzdoo.size() > 0 && map != null) {
                ArrayList arrayList = new ArrayList();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey() != null ? entry.getKey() : "";
                    String value = entry.getValue() != null ? entry.getValue() : "";
                    if (this.zzdoo.contains(key.toLowerCase(Locale.ENGLISH))) {
                        arrayList.add((zzdut.zzb.zzc) ((zzdqw) zzdut.zzb.zzc.zzbcp().zzdd(zzdpm.zzhh(key)).zzde(zzdpm.zzhh(value)).zzazr()));
                    }
                }
                zzdut.zzb.zzc[] zzcVarArr = new zzdut.zzb.zzc[arrayList.size()];
                arrayList.toArray(zzcVarArr);
                zzdvhVar.zzhwd.zzhvx = zzcVarArr;
            }
            this.zzdoi.put(str, zzdvhVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasi
    public final String[] zza(String[] strArr) {
        return (String[]) this.zzdon.zzb(strArr).toArray(new String[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzasi
    public final void zzdq(String str) {
        synchronized (this.lock) {
            this.zzdoh.zzhvl = str;
        }
    }

    final void zzdr(String str) {
        synchronized (this.lock) {
            this.zzdoj.add(str);
        }
    }

    final void zzds(String str) {
        synchronized (this.lock) {
            this.zzdok.add(str);
        }
    }

    final /* synthetic */ zzddi zzh(Map map) {
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    JSONArray jSONArrayOptJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                    if (jSONArrayOptJSONArray != null) {
                        synchronized (this.lock) {
                            int length = jSONArrayOptJSONArray.length();
                            zzdvh zzdvhVarZzdt = zzdt(str);
                            if (zzdvhVarZzdt == null) {
                                String strValueOf = String.valueOf(str);
                                zzasf.zzdv(strValueOf.length() != 0 ? "Cannot find the corresponding resource object for ".concat(strValueOf) : new String("Cannot find the corresponding resource object for "));
                            } else {
                                zzdvhVarZzdt.zzhwj = new String[length];
                                for (int i2 = 0; i2 < length; i2++) {
                                    zzdvhVarZzdt.zzhwj[i2] = jSONArrayOptJSONArray.getJSONObject(i2).getString("threat_type");
                                }
                                this.zzdom = (length > 0) | this.zzdom;
                            }
                        }
                    }
                }
            } catch (JSONException e2) {
                if (((Boolean) zzuv.zzon().zzd(zzza.zzcpj)).booleanValue()) {
                    zzaxi.zzb("Failed to get SafeBrowsing metadata", e2);
                }
                return zzdcy.zzi(new Exception("Safebrowsing report transmission failed."));
            }
        }
        if (this.zzdom) {
            synchronized (this.lock) {
                this.zzdoh.zzhvf = zzdut.zzb.zzg.OCTAGON_AD_SB_MATCH;
            }
        }
        return zztq();
    }

    @Override // com.google.android.gms.internal.ads.zzasi
    public final void zzj(View view) {
        if (this.zzdlj.zzdoy && !this.zzdoq) {
            com.google.android.gms.ads.internal.zzq.zzkj();
            Bitmap bitmapZzl = zzaul.zzl(view);
            if (bitmapZzl == null) {
                zzasf.zzdv("Failed to capture the webview bitmap.");
            } else {
                this.zzdoq = true;
                zzaul.zzc(new zzasa(this, bitmapZzl));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasi
    public final zzasd zztm() {
        return this.zzdlj;
    }

    @Override // com.google.android.gms.internal.ads.zzasi
    public final boolean zztn() {
        return PlatformVersion.isAtLeastKitKat() && this.zzdlj.zzdoy && !this.zzdoq;
    }

    @Override // com.google.android.gms.internal.ads.zzasi
    public final void zzto() {
        this.zzdop = true;
    }

    @Override // com.google.android.gms.internal.ads.zzasi
    public final void zztp() {
        synchronized (this.lock) {
            zzddi zzddiVarZzb = zzdcy.zzb(this.zzdol.zza(this.zzlk, this.zzdoi.keySet()), new zzdcj(this) { // from class: com.google.android.gms.internal.ads.zzary
                private final zzarv zzdot;

                {
                    this.zzdot = this;
                }

                @Override // com.google.android.gms.internal.ads.zzdcj
                public final zzddi zzf(Object obj) {
                    return this.zzdot.zzh((Map) obj);
                }
            }, zzaxn.zzdwn);
            zzddi zzddiVarZza = zzdcy.zza(zzddiVarZzb, 10L, TimeUnit.SECONDS, zzaxn.zzdwl);
            zzdcy.zza(zzddiVarZzb, new zzarz(this, zzddiVarZza), zzaxn.zzdwn);
            zzdog.add(zzddiVarZza);
        }
    }
}
