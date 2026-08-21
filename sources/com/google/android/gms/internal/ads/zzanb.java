package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzanb {
    private final zzbbw zzczi;
    private final boolean zzdgc;
    private final String zzdgd;

    public zzanb(zzbbw zzbbwVar, Map<String, String> map) {
        this.zzczi = zzbbwVar;
        this.zzdgd = map.get("forceOrientation");
        this.zzdgc = map.containsKey("allowOrientationChange") ? Boolean.parseBoolean(map.get("allowOrientationChange")) : true;
    }

    public final void execute() {
        int iZzvq;
        if (this.zzczi == null) {
            zzaxi.zzeu("AdWebView is null");
            return;
        }
        if ("portrait".equalsIgnoreCase(this.zzdgd)) {
            com.google.android.gms.ads.internal.zzq.zzkl();
            iZzvq = 7;
        } else if ("landscape".equalsIgnoreCase(this.zzdgd)) {
            com.google.android.gms.ads.internal.zzq.zzkl();
            iZzvq = 6;
        } else {
            iZzvq = this.zzdgc ? -1 : com.google.android.gms.ads.internal.zzq.zzkl().zzvq();
        }
        this.zzczi.setRequestedOrientation(iZzvq);
    }
}
