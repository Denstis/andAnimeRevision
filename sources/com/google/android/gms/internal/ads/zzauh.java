package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Looper;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzauh implements zzaui {
    private SharedPreferences zzcfy;
    private boolean zzdsa;
    private zzddi<?> zzdsc;
    private SharedPreferences.Editor zzdse;
    private String zzdsg;
    private String zzdsh;
    private final Object lock = new Object();
    private final List<Runnable> zzdsb = new ArrayList();
    private zzpz zzdsd = null;
    private boolean zzdsf = false;
    private boolean zzdjb = true;
    private boolean zzdjo = false;
    private String zzdjr = "";
    private long zzdsi = 0;
    private long zzdsj = 0;
    private long zzdsk = 0;
    private int zzdsl = -1;
    private int zzdsm = 0;
    private Set<String> zzdsn = Collections.emptySet();
    private JSONObject zzdso = new JSONObject();
    private boolean zzdla = true;
    private boolean zzdll = true;
    private String zzdsp = null;
    private int zzdsq = -1;

    private final void zzc(Bundle bundle) {
        zzaxn.zzdwi.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzauj
            private final zzauh zzdsr;

            {
                this.zzdsr = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzdsr.zzux();
            }
        });
    }

    private final void zzuv() {
        zzddi<?> zzddiVar = this.zzdsc;
        if (zzddiVar == null || zzddiVar.isDone()) {
            return;
        }
        try {
            this.zzdsc.get(1L, TimeUnit.SECONDS);
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            zzaxi.zzd("Interrupted while waiting for preferences loaded.", e2);
        } catch (CancellationException e3) {
            e = e3;
            zzaxi.zzc("Fail to initialize AdSharedPreferenceManager.", e);
        } catch (ExecutionException e4) {
            e = e4;
            zzaxi.zzc("Fail to initialize AdSharedPreferenceManager.", e);
        } catch (TimeoutException e5) {
            e = e5;
            zzaxi.zzc("Fail to initialize AdSharedPreferenceManager.", e);
        }
    }

    private final Bundle zzuw() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("listener_registration_bundle", true);
        synchronized (this.lock) {
            bundle.putBoolean("use_https", this.zzdjb);
            bundle.putBoolean("content_url_opted_out", this.zzdla);
            bundle.putBoolean("content_vertical_opted_out", this.zzdll);
            bundle.putBoolean("auto_collect_location", this.zzdjo);
            bundle.putInt("version_code", this.zzdsm);
            bundle.putStringArray("never_pool_slots", (String[]) this.zzdsn.toArray(new String[0]));
            bundle.putString("app_settings_json", this.zzdjr);
            bundle.putLong("app_settings_last_update_ms", this.zzdsi);
            bundle.putLong("app_last_background_time_ms", this.zzdsj);
            bundle.putInt("request_in_session_count", this.zzdsl);
            bundle.putLong("first_ad_req_time_ms", this.zzdsk);
            bundle.putString("native_advanced_settings", this.zzdso.toString());
            bundle.putString("display_cutout", this.zzdsp);
            bundle.putInt("app_measurement_npa", this.zzdsq);
            if (this.zzdsg != null) {
                bundle.putString("content_url_hashes", this.zzdsg);
            }
            if (this.zzdsh != null) {
                bundle.putString("content_vertical_hashes", this.zzdsh);
            }
        }
        return bundle;
    }

    public final void zza(final Context context, String str, boolean z) {
        final String strConcat;
        synchronized (this.lock) {
            if (this.zzcfy != null) {
                return;
            }
            if (str == null) {
                strConcat = "admob";
            } else {
                String strValueOf = String.valueOf(str);
                strConcat = strValueOf.length() != 0 ? "admob__".concat(strValueOf) : new String("admob__");
            }
            this.zzdsc = zzaxn.zzdwi.submit(new Runnable(this, context, strConcat) { // from class: com.google.android.gms.internal.ads.zzauk
                private final Context zzcfb;
                private final String zzdbt;
                private final zzauh zzdsr;

                {
                    this.zzdsr = this;
                    this.zzcfb = context;
                    this.zzdbt = strConcat;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzdsr.zzp(this.zzcfb, this.zzdbt);
                }
            });
            this.zzdsa = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final void zzah(boolean z) {
        zzuv();
        synchronized (this.lock) {
            if (this.zzdla == z) {
                return;
            }
            this.zzdla = z;
            if (this.zzdse != null) {
                this.zzdse.putBoolean("content_url_opted_out", z);
                this.zzdse.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("content_url_opted_out", this.zzdla);
            bundle.putBoolean("content_vertical_opted_out", this.zzdll);
            zzc(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final void zzai(boolean z) {
        zzuv();
        synchronized (this.lock) {
            if (this.zzdll == z) {
                return;
            }
            this.zzdll = z;
            if (this.zzdse != null) {
                this.zzdse.putBoolean("content_vertical_opted_out", z);
                this.zzdse.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("content_url_opted_out", this.zzdla);
            bundle.putBoolean("content_vertical_opted_out", this.zzdll);
            zzc(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final void zzaj(boolean z) {
        zzuv();
        synchronized (this.lock) {
            if (this.zzdjo == z) {
                return;
            }
            this.zzdjo = z;
            if (this.zzdse != null) {
                this.zzdse.putBoolean("auto_collect_location", z);
                this.zzdse.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("auto_collect_location", z);
            zzc(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final void zzb(Runnable runnable) {
        this.zzdsb.add(runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final void zzc(String str, String str2, boolean z) {
        zzuv();
        synchronized (this.lock) {
            JSONArray jSONArrayOptJSONArray = this.zzdso.optJSONArray(str);
            if (jSONArrayOptJSONArray == null) {
                jSONArrayOptJSONArray = new JSONArray();
            }
            int length = jSONArrayOptJSONArray.length();
            int i2 = 0;
            while (true) {
                if (i2 < jSONArrayOptJSONArray.length()) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                    if (jSONObjectOptJSONObject == null) {
                        return;
                    }
                    if (!str2.equals(jSONObjectOptJSONObject.optString("template_id"))) {
                        i2++;
                    } else if (z && jSONObjectOptJSONObject.optBoolean("uses_media_view", false)) {
                        return;
                    } else {
                        length = i2;
                    }
                }
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("template_id", str2);
                jSONObject.put("uses_media_view", z);
                jSONObject.put("timestamp_ms", com.google.android.gms.ads.internal.zzq.zzkq().currentTimeMillis());
                jSONArrayOptJSONArray.put(length, jSONObject);
                this.zzdso.put(str, jSONArrayOptJSONArray);
            } catch (JSONException e2) {
                zzaxi.zzd("Could not update native advanced settings", e2);
            }
            if (this.zzdse != null) {
                this.zzdse.putString("native_advanced_settings", this.zzdso.toString());
                this.zzdse.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putString("native_advanced_settings", this.zzdso.toString());
            zzc(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final void zzcm(int i2) {
        zzuv();
        synchronized (this.lock) {
            if (this.zzdsm == i2) {
                return;
            }
            this.zzdsm = i2;
            if (this.zzdse != null) {
                this.zzdse.putInt("version_code", i2);
                this.zzdse.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putInt("version_code", i2);
            zzc(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final void zzcn(int i2) {
        zzuv();
        synchronized (this.lock) {
            if (this.zzdsl == i2) {
                return;
            }
            this.zzdsl = i2;
            if (this.zzdse != null) {
                this.zzdse.putInt("request_in_session_count", i2);
                this.zzdse.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putInt("request_in_session_count", i2);
            zzc(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final void zzdz(String str) {
        zzuv();
        synchronized (this.lock) {
            if (str != null) {
                if (!str.equals(this.zzdsg)) {
                    this.zzdsg = str;
                    if (this.zzdse != null) {
                        this.zzdse.putString("content_url_hashes", str);
                        this.zzdse.apply();
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString("content_url_hashes", str);
                    zzc(bundle);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final void zzea(String str) {
        zzuv();
        synchronized (this.lock) {
            if (str != null) {
                if (!str.equals(this.zzdsh)) {
                    this.zzdsh = str;
                    if (this.zzdse != null) {
                        this.zzdse.putString("content_vertical_hashes", str);
                        this.zzdse.apply();
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString("content_vertical_hashes", str);
                    zzc(bundle);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final void zzeb(String str) {
        zzuv();
        synchronized (this.lock) {
            long jCurrentTimeMillis = com.google.android.gms.ads.internal.zzq.zzkq().currentTimeMillis();
            this.zzdsi = jCurrentTimeMillis;
            if (str != null && !str.equals(this.zzdjr)) {
                this.zzdjr = str;
                if (this.zzdse != null) {
                    this.zzdse.putString("app_settings_json", str);
                    this.zzdse.putLong("app_settings_last_update_ms", jCurrentTimeMillis);
                    this.zzdse.apply();
                }
                Bundle bundle = new Bundle();
                bundle.putString("app_settings_json", str);
                bundle.putLong("app_settings_last_update_ms", jCurrentTimeMillis);
                zzc(bundle);
                Iterator<Runnable> it = this.zzdsb.iterator();
                while (it.hasNext()) {
                    it.next().run();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final void zzec(String str) {
        zzuv();
        synchronized (this.lock) {
            if (TextUtils.equals(this.zzdsp, str)) {
                return;
            }
            this.zzdsp = str;
            if (this.zzdse != null) {
                this.zzdse.putString("display_cutout", str);
                this.zzdse.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putString("display_cutout", str);
            zzc(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final void zzet(long j2) {
        zzuv();
        synchronized (this.lock) {
            if (this.zzdsj == j2) {
                return;
            }
            this.zzdsj = j2;
            if (this.zzdse != null) {
                this.zzdse.putLong("app_last_background_time_ms", j2);
                this.zzdse.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putLong("app_last_background_time_ms", j2);
            zzc(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final void zzeu(long j2) {
        zzuv();
        synchronized (this.lock) {
            if (this.zzdsk == j2) {
                return;
            }
            this.zzdsk = j2;
            if (this.zzdse != null) {
                this.zzdse.putLong("first_ad_req_time_ms", j2);
                this.zzdse.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putLong("first_ad_req_time_ms", j2);
            zzc(bundle);
        }
    }

    final /* synthetic */ void zzp(Context context, String str) {
        boolean z = false;
        SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        synchronized (this.lock) {
            this.zzcfy = sharedPreferences;
            this.zzdse = editorEdit;
            if (PlatformVersion.isAtLeastM() && !NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted()) {
                z = true;
            }
            this.zzdsf = z;
            this.zzdjb = this.zzcfy.getBoolean("use_https", this.zzdjb);
            this.zzdla = this.zzcfy.getBoolean("content_url_opted_out", this.zzdla);
            this.zzdsg = this.zzcfy.getString("content_url_hashes", this.zzdsg);
            this.zzdjo = this.zzcfy.getBoolean("auto_collect_location", this.zzdjo);
            this.zzdll = this.zzcfy.getBoolean("content_vertical_opted_out", this.zzdll);
            this.zzdsh = this.zzcfy.getString("content_vertical_hashes", this.zzdsh);
            this.zzdsm = this.zzcfy.getInt("version_code", this.zzdsm);
            this.zzdjr = this.zzcfy.getString("app_settings_json", this.zzdjr);
            this.zzdsi = this.zzcfy.getLong("app_settings_last_update_ms", this.zzdsi);
            this.zzdsj = this.zzcfy.getLong("app_last_background_time_ms", this.zzdsj);
            this.zzdsl = this.zzcfy.getInt("request_in_session_count", this.zzdsl);
            this.zzdsk = this.zzcfy.getLong("first_ad_req_time_ms", this.zzdsk);
            this.zzdsn = this.zzcfy.getStringSet("never_pool_slots", this.zzdsn);
            this.zzdsp = this.zzcfy.getString("display_cutout", this.zzdsp);
            this.zzdsq = this.zzcfy.getInt("app_measurement_npa", this.zzdsq);
            try {
                this.zzdso = new JSONObject(this.zzcfy.getString("native_advanced_settings", "{}"));
            } catch (JSONException e2) {
                zzaxi.zzd("Could not convert native advanced settings to json object", e2);
            }
            zzc(zzuw());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final zzpz zzux() {
        if (!this.zzdsa || !PlatformVersion.isAtLeastIceCreamSandwich()) {
            return null;
        }
        if (zzuy() && zzva()) {
            return null;
        }
        if (!((Boolean) zzuv.zzon().zzd(zzza.zzcin)).booleanValue()) {
            return null;
        }
        synchronized (this.lock) {
            if (Looper.getMainLooper() == null) {
                return null;
            }
            if (this.zzdsd == null) {
                this.zzdsd = new zzpz();
            }
            this.zzdsd.zzlu();
            zzaxi.zzet("start fetching content...");
            return this.zzdsd;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final boolean zzuy() {
        boolean z;
        zzuv();
        synchronized (this.lock) {
            z = this.zzdla;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final String zzuz() {
        String str;
        zzuv();
        synchronized (this.lock) {
            str = this.zzdsg;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final boolean zzva() {
        boolean z;
        zzuv();
        synchronized (this.lock) {
            z = this.zzdll;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final String zzvb() {
        String str;
        zzuv();
        synchronized (this.lock) {
            str = this.zzdsh;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final boolean zzvc() {
        boolean z;
        zzuv();
        synchronized (this.lock) {
            z = this.zzdjo;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final int zzvd() {
        int i2;
        zzuv();
        synchronized (this.lock) {
            i2 = this.zzdsm;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final zzats zzve() {
        zzats zzatsVar;
        zzuv();
        synchronized (this.lock) {
            zzatsVar = new zzats(this.zzdjr, this.zzdsi);
        }
        return zzatsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final long zzvf() {
        long j2;
        zzuv();
        synchronized (this.lock) {
            j2 = this.zzdsj;
        }
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final int zzvg() {
        int i2;
        zzuv();
        synchronized (this.lock) {
            i2 = this.zzdsl;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final long zzvh() {
        long j2;
        zzuv();
        synchronized (this.lock) {
            j2 = this.zzdsk;
        }
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final JSONObject zzvi() {
        JSONObject jSONObject;
        zzuv();
        synchronized (this.lock) {
            jSONObject = this.zzdso;
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final void zzvj() {
        zzuv();
        synchronized (this.lock) {
            this.zzdso = new JSONObject();
            if (this.zzdse != null) {
                this.zzdse.remove("native_advanced_settings");
                this.zzdse.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putString("native_advanced_settings", "{}");
            zzc(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaui
    public final String zzvk() {
        String str;
        zzuv();
        synchronized (this.lock) {
            str = this.zzdsp;
        }
        return str;
    }
}
