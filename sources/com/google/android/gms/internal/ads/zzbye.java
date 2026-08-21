package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzbye implements zzaer<Object> {
    private final zzdvv<zzbyb> zzfkw;
    private final zzbyh zzfnd;
    private final zzaco zzfpn;

    public zzbye(zzbuy zzbuyVar, zzbur zzburVar, zzbyh zzbyhVar, zzdvv<zzbyb> zzdvvVar) {
        this.zzfpn = zzbuyVar.zzfv(zzburVar.getCustomTemplateId());
        this.zzfnd = zzbyhVar;
        this.zzfkw = zzdvvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final void zza(Object obj, Map<String, String> map) {
        String str = map.get("asset");
        try {
            this.zzfpn.zza(this.zzfkw.get(), str);
        } catch (RemoteException e2) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40);
            sb.append("Failed to call onCustomClick for asset ");
            sb.append(str);
            sb.append(".");
            zzaxi.zzd(sb.toString(), e2);
        }
    }

    public final void zzajf() {
        if (this.zzfpn == null) {
            return;
        }
        this.zzfnd.zza("/nativeAdCustomClick", this);
    }
}
