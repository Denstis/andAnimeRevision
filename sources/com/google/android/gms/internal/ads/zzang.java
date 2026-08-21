package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzang extends zzanj implements zzaer<zzbbw> {
    private float density;
    private int maxHeight;
    private int maxWidth;
    private int rotation;
    private final WindowManager zzbnk;
    private final zzbbw zzczi;
    private final zzyl zzdgm;
    private int zzdgn;
    private int zzdgo;
    private int zzdgp;
    private int zzdgq;
    private final Context zzlk;
    private DisplayMetrics zzwl;

    public zzang(zzbbw zzbbwVar, Context context, zzyl zzylVar) {
        super(zzbbwVar);
        this.zzdgn = -1;
        this.zzdgo = -1;
        this.maxWidth = -1;
        this.maxHeight = -1;
        this.zzdgp = -1;
        this.zzdgq = -1;
        this.zzczi = zzbbwVar;
        this.zzlk = context;
        this.zzdgm = zzylVar;
        this.zzbnk = (WindowManager) context.getSystemService("window");
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final /* synthetic */ void zza(zzbbw zzbbwVar, Map map) {
        int iZzb;
        this.zzwl = new DisplayMetrics();
        Display defaultDisplay = this.zzbnk.getDefaultDisplay();
        defaultDisplay.getMetrics(this.zzwl);
        this.density = this.zzwl.density;
        this.rotation = defaultDisplay.getRotation();
        zzuv.zzoj();
        DisplayMetrics displayMetrics = this.zzwl;
        this.zzdgn = zzawy.zzb(displayMetrics, displayMetrics.widthPixels);
        zzuv.zzoj();
        DisplayMetrics displayMetrics2 = this.zzwl;
        this.zzdgo = zzawy.zzb(displayMetrics2, displayMetrics2.heightPixels);
        Activity activityZzxn = this.zzczi.zzxn();
        if (activityZzxn == null || activityZzxn.getWindow() == null) {
            this.maxWidth = this.zzdgn;
            iZzb = this.zzdgo;
        } else {
            com.google.android.gms.ads.internal.zzq.zzkj();
            int[] iArrZzd = zzaul.zzd(activityZzxn);
            zzuv.zzoj();
            this.maxWidth = zzawy.zzb(this.zzwl, iArrZzd[0]);
            zzuv.zzoj();
            iZzb = zzawy.zzb(this.zzwl, iArrZzd[1]);
        }
        this.maxHeight = iZzb;
        if (this.zzczi.zzzn().zzaau()) {
            this.zzdgp = this.zzdgn;
            this.zzdgq = this.zzdgo;
        } else {
            this.zzczi.measure(0, 0);
        }
        zza(this.zzdgn, this.zzdgo, this.maxWidth, this.maxHeight, this.density, this.rotation);
        this.zzczi.zzb("onDeviceFeaturesReceived", new zzanf(new zzanh().zzx(this.zzdgm.zzpm()).zzw(this.zzdgm.zzpn()).zzy(this.zzdgm.zzpp()).zzz(this.zzdgm.zzpo()).zzaa(true)).toJson());
        int[] iArr = new int[2];
        this.zzczi.getLocationOnScreen(iArr);
        zzi(zzuv.zzoj().zzb(this.zzlk, iArr[0]), zzuv.zzoj().zzb(this.zzlk, iArr[1]));
        if (zzaxi.isLoggable(2)) {
            zzaxi.zzet("Dispatching Ready Event.");
        }
        zzdo(this.zzczi.zzxr().zzblz);
    }

    public final void zzi(int i2, int i3) {
        int i4 = this.zzlk instanceof Activity ? com.google.android.gms.ads.internal.zzq.zzkj().zzf((Activity) this.zzlk)[0] : 0;
        if (this.zzczi.zzzn() == null || !this.zzczi.zzzn().zzaau()) {
            int width = this.zzczi.getWidth();
            int height = this.zzczi.getHeight();
            if (((Boolean) zzuv.zzon().zzd(zzza.zzcij)).booleanValue()) {
                if (width == 0 && this.zzczi.zzzn() != null) {
                    width = this.zzczi.zzzn().widthPixels;
                }
                if (height == 0 && this.zzczi.zzzn() != null) {
                    height = this.zzczi.zzzn().heightPixels;
                }
            }
            this.zzdgp = zzuv.zzoj().zzb(this.zzlk, width);
            this.zzdgq = zzuv.zzoj().zzb(this.zzlk, height);
        }
        zzc(i2, i3 - i4, this.zzdgp, this.zzdgq);
        this.zzczi.zzzp().zzh(i2, i3);
    }
}
