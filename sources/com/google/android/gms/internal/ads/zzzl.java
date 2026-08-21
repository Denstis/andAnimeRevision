package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.consent.ConsentSdkUtil;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzzl {
    private static zzzl zzcty;
    private final zzzg zzctz;

    private zzzl(zzzg zzzgVar) {
        this.zzctz = zzzgVar;
    }

    public static synchronized zzzl zzj(Context context) {
        zzzg zzzpVar;
        if (zzcty == null) {
            try {
                zzzpVar = (zzzg) zzaxh.zza(context, "com.google.android.gms.ads.consent.DynamiteConsentUtil", zzzk.zzbty);
            } catch (zzaxj e2) {
                zzaxi.zzb("Loading exception", e2);
                zzzpVar = new zzzp();
            }
            try {
                zzzpVar.zzr(ObjectWrapper.wrap(context.getApplicationContext()));
            } catch (RemoteException unused) {
            }
            zzcty = new zzzl(zzzpVar);
        }
        return zzcty;
    }

    public final void zza(Map<String, String> map, ConsentSdkUtil.ConsentInformationCallback consentInformationCallback) {
        Bundle bundle = new Bundle();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            bundle.putString(entry.getKey(), entry.getValue());
        }
        zzzm zzzmVar = new zzzm(consentInformationCallback);
        try {
            this.zzctz.zza(bundle, zzzmVar);
        } catch (RemoteException e2) {
            zzaxi.zzb("Remote exception: ", e2);
            zzzmVar.onFailure(3);
        }
    }
}
