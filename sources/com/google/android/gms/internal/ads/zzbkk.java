package com.google.android.gms.internal.ads;

import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class zzbkk {
    protected final zzcvz zzfbd;
    protected final zzcvr zzfet;
    private final zzbnl zzffg;
    private final zzbob zzffh;
    private final String zzffi;

    protected zzbkk(zzbkn zzbknVar) {
        this.zzfbd = zzbknVar.zzfbd;
        this.zzfet = zzbknVar.zzfet;
        this.zzffg = zzbknVar.zzffg;
        this.zzffh = zzbknVar.zzffh;
        this.zzffi = zzbknVar.zzffi;
    }

    private static String zzb(zzcvr zzcvrVar) {
        try {
            return zzcvrVar.zzgjh.getString("class_name");
        } catch (JSONException unused) {
            return null;
        }
    }

    public void destroy() {
        this.zzffg.zzbw(null);
    }

    public final String getMediationAdapterClassName() {
        return this.zzffi;
    }

    public void zzafa() {
        this.zzffh.onAdLoaded();
    }

    public final zzbnl zzafm() {
        return this.zzffg;
    }

    public final String zzju() {
        String strZzb = "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(this.zzffi) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(this.zzffi) ? zzb(this.zzfet) : null;
        return strZzb == null ? this.zzffi : strZzb;
    }
}
