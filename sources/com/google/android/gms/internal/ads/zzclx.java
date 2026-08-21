package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzclx extends zzamh {
    private final String zzcyn;
    private final zzamd zzgbl;
    private zzaxv<JSONObject> zzgbm;
    private final JSONObject zzgbn = new JSONObject();
    private boolean zzgbo = false;

    public zzclx(String str, zzamd zzamdVar, zzaxv<JSONObject> zzaxvVar) {
        this.zzgbm = zzaxvVar;
        this.zzcyn = str;
        this.zzgbl = zzamdVar;
        try {
            this.zzgbn.put("adapter_version", this.zzgbl.zzsg().toString());
            this.zzgbn.put("sdk_version", this.zzgbl.zzsh().toString());
            this.zzgbn.put(AppMeasurementSdk.ConditionalUserProperty.NAME, this.zzcyn);
        } catch (RemoteException | NullPointerException | JSONException unused) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzame
    public final synchronized void onFailure(String str) {
        if (this.zzgbo) {
            return;
        }
        try {
            this.zzgbn.put("signal_error", str);
        } catch (JSONException unused) {
        }
        this.zzgbm.set(this.zzgbn);
        this.zzgbo = true;
    }

    @Override // com.google.android.gms.internal.ads.zzame
    public final synchronized void zzdi(String str) {
        if (this.zzgbo) {
            return;
        }
        if (str == null) {
            onFailure("Adapter returned null signals");
            return;
        }
        try {
            this.zzgbn.put("signals", str);
        } catch (JSONException unused) {
        }
        this.zzgbm.set(this.zzgbn);
        this.zzgbo = true;
    }
}
