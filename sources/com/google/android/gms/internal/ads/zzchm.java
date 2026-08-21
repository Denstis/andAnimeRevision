package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzchm {
    private final AtomicReference<zzajx> zzfyg = new AtomicReference<>();

    zzchm() {
    }

    private final zzajx zzaku() throws RemoteException {
        zzajx zzajxVar = this.zzfyg.get();
        if (zzajxVar != null) {
            return zzajxVar;
        }
        zzaxi.zzeu("Unexpected call to adapter creator.");
        throw new RemoteException();
    }

    private final zzajy zzf(String str, JSONObject jSONObject) throws RemoteException {
        zzajx zzajxVarZzaku = zzaku();
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            try {
                return zzajxVarZzaku.zzda(jSONObject.getString("class_name")) ? zzajxVarZzaku.zzcz("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") : zzajxVarZzaku.zzcz("com.google.ads.mediation.customevent.CustomEventAdapter");
            } catch (JSONException e2) {
                zzaxi.zzc("Invalid custom event.", e2);
            }
        }
        return zzajxVarZzaku.zzcz(str);
    }

    public final boolean zzakt() {
        return this.zzfyg.get() != null;
    }

    public final void zzb(zzajx zzajxVar) {
        this.zzfyg.compareAndSet(null, zzajxVar);
    }

    public final zzamd zzdd(String str) {
        return zzaku().zzdd(str);
    }

    public final zzcwm zze(String str, JSONObject jSONObject) throws zzcwh {
        try {
            return new zzcwm("com.google.ads.mediation.admob.AdMobAdapter".equals(str) ? new zzakt(new AdMobAdapter()) : "com.google.ads.mediation.AdUrlAdapter".equals(str) ? new zzakt(new AdUrlAdapter()) : "com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str) ? new zzakt(new zzamt()) : zzf(str, jSONObject));
        } catch (Throwable th) {
            throw new zzcwh(th);
        }
    }
}
