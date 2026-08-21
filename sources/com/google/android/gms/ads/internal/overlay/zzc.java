package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzanj;
import com.google.android.gms.internal.ads.zzann;
import com.google.android.gms.internal.ads.zzaul;
import com.google.android.gms.internal.ads.zzaur;
import com.google.android.gms.internal.ads.zzaxi;
import com.google.android.gms.internal.ads.zzbbw;
import com.google.android.gms.internal.ads.zzuv;
import com.google.android.gms.internal.ads.zzza;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public class zzc extends zzann implements zzy {

    @VisibleForTesting
    private static final int zzdgu = Color.argb(0, 0, 0, 0);

    @VisibleForTesting
    zzbbw zzczi;

    @VisibleForTesting
    AdOverlayInfoParcel zzdgv;

    @VisibleForTesting
    private zzi zzdgw;

    @VisibleForTesting
    private zzq zzdgx;

    @VisibleForTesting
    private FrameLayout zzdgz;

    @VisibleForTesting
    private WebChromeClient.CustomViewCallback zzdha;

    @VisibleForTesting
    private zzj zzdhc;
    private Runnable zzdhg;
    private boolean zzdhh;
    private boolean zzdhi;
    protected final Activity zzzr;

    @VisibleForTesting
    private boolean zzdgy = false;

    @VisibleForTesting
    private boolean zzdhb = false;

    @VisibleForTesting
    private boolean zzbkw = false;

    @VisibleForTesting
    private boolean zzdhd = false;

    @VisibleForTesting
    int zzdhe = 0;
    private final Object zzdhf = new Object();
    private boolean zzdhj = false;
    private boolean zzdhk = false;
    private boolean zzdhl = true;

    public zzc(Activity activity) {
        this.zzzr = activity;
    }

    private final void zza(Configuration configuration) {
        AdOverlayInfoParcel adOverlayInfoParcel;
        com.google.android.gms.ads.internal.zzg zzgVar;
        com.google.android.gms.ads.internal.zzg zzgVar2;
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzdgv;
        boolean z = true;
        boolean z2 = false;
        boolean z3 = (adOverlayInfoParcel2 == null || (zzgVar2 = adOverlayInfoParcel2.zzdif) == null || !zzgVar2.zzbkx) ? false : true;
        boolean zZza = com.google.android.gms.ads.internal.zzq.zzkl().zza(this.zzzr, configuration);
        if ((this.zzbkw && !z3) || zZza) {
            z = false;
        } else if (Build.VERSION.SDK_INT >= 19 && (adOverlayInfoParcel = this.zzdgv) != null && (zzgVar = adOverlayInfoParcel.zzdif) != null && zzgVar.zzblc) {
            z2 = true;
        }
        Window window = this.zzzr.getWindow();
        if (((Boolean) zzuv.zzon().zzd(zzza.zzckw)).booleanValue() && Build.VERSION.SDK_INT >= 19) {
            View decorView = window.getDecorView();
            int i2 = 256;
            if (z) {
                i2 = 5380;
                if (z2) {
                    i2 = 5894;
                }
            }
            decorView.setSystemUiVisibility(i2);
            return;
        }
        if (!z) {
            window.addFlags(2048);
            window.clearFlags(1024);
            return;
        }
        window.addFlags(1024);
        window.clearFlags(2048);
        if (Build.VERSION.SDK_INT < 19 || !z2) {
            return;
        }
        window.getDecorView().setSystemUiVisibility(4098);
    }

    private final void zzab(boolean z) {
        int iIntValue = ((Integer) zzuv.zzon().zzd(zzza.zzcqk)).intValue();
        zzp zzpVar = new zzp();
        zzpVar.size = 50;
        zzpVar.paddingLeft = z ? iIntValue : 0;
        zzpVar.paddingRight = z ? 0 : iIntValue;
        zzpVar.paddingTop = 0;
        zzpVar.paddingBottom = iIntValue;
        this.zzdgx = new zzq(this.zzzr, zzpVar, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(z ? 11 : 9);
        zza(z, this.zzdgv.zzdia);
        this.zzdhc.addView(this.zzdgx, layoutParams);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void zzac(boolean r20) throws com.google.android.gms.ads.internal.overlay.zzg {
        /*
            Method dump skipped, instruction units count: 489
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzc.zzac(boolean):void");
    }

    private static void zzc(IObjectWrapper iObjectWrapper, View view) {
        if (iObjectWrapper == null || view == null) {
            return;
        }
        com.google.android.gms.ads.internal.zzq.zzky().zza(iObjectWrapper, view);
    }

    private final void zzsr() {
        if (!this.zzzr.isFinishing() || this.zzdhj) {
            return;
        }
        this.zzdhj = true;
        zzbbw zzbbwVar = this.zzczi;
        if (zzbbwVar != null) {
            zzbbwVar.zzdb(this.zzdhe);
            synchronized (this.zzdhf) {
                if (!this.zzdhh && this.zzczi.zzzx()) {
                    this.zzdhg = new Runnable(this) { // from class: com.google.android.gms.ads.internal.overlay.zze
                        private final zzc zzdhq;

                        {
                            this.zzdhq = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zzdhq.zzss();
                        }
                    };
                    zzaul.zzdsu.postDelayed(this.zzdhg, ((Long) zzuv.zzon().zzd(zzza.zzckt)).longValue());
                    return;
                }
            }
        }
        zzss();
    }

    private final void zzsu() {
        this.zzczi.zzsu();
    }

    public final void close() {
        this.zzdhe = 2;
        this.zzzr.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final void onActivityResult(int i2, int i3, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final void onBackPressed() {
        this.zzdhe = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public void onCreate(Bundle bundle) {
        this.zzzr.requestWindowFeature(1);
        this.zzdhb = bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
        try {
            this.zzdgv = AdOverlayInfoParcel.zzc(this.zzzr.getIntent());
            if (this.zzdgv == null) {
                throw new zzg("Could not get info for ad overlay.");
            }
            if (this.zzdgv.zzblk.zzdwf > 7500000) {
                this.zzdhe = 3;
            }
            if (this.zzzr.getIntent() != null) {
                this.zzdhl = this.zzzr.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
            }
            if (this.zzdgv.zzdif != null) {
                this.zzbkw = this.zzdgv.zzdif.zzbkw;
            } else {
                this.zzbkw = false;
            }
            if (this.zzbkw && this.zzdgv.zzdif.zzblb != -1) {
                new zzl(this).zzut();
            }
            if (bundle == null) {
                if (this.zzdgv.zzdhy != null && this.zzdhl) {
                    this.zzdgv.zzdhy.zzsj();
                }
                if (this.zzdgv.zzdid != 1 && this.zzdgv.zzcbs != null) {
                    this.zzdgv.zzcbs.onAdClicked();
                }
            }
            this.zzdhc = new zzj(this.zzzr, this.zzdgv.zzdie, this.zzdgv.zzblk.zzblz);
            this.zzdhc.setId(1000);
            com.google.android.gms.ads.internal.zzq.zzkl().zzg(this.zzzr);
            int i2 = this.zzdgv.zzdid;
            if (i2 == 1) {
                zzac(false);
                return;
            }
            if (i2 == 2) {
                this.zzdgw = new zzi(this.zzdgv.zzczi);
                zzac(false);
            } else {
                if (i2 != 3) {
                    throw new zzg("Could not determine ad overlay type.");
                }
                zzac(true);
            }
        } catch (zzg e2) {
            zzaxi.zzeu(e2.getMessage());
            this.zzdhe = 3;
            this.zzzr.finish();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final void onDestroy() {
        zzbbw zzbbwVar = this.zzczi;
        if (zzbbwVar != null) {
            this.zzdhc.removeView(zzbbwVar.getView());
        }
        zzsr();
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final void onPause() {
        zzsn();
        zzo zzoVar = this.zzdgv.zzdhy;
        if (zzoVar != null) {
            zzoVar.onPause();
        }
        if (!((Boolean) zzuv.zzon().zzd(zzza.zzcqi)).booleanValue() && this.zzczi != null && (!this.zzzr.isFinishing() || this.zzdgw == null)) {
            com.google.android.gms.ads.internal.zzq.zzkl();
            zzaur.zza(this.zzczi);
        }
        zzsr();
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final void onRestart() {
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final void onResume() {
        zzo zzoVar = this.zzdgv.zzdhy;
        if (zzoVar != null) {
            zzoVar.onResume();
        }
        zza(this.zzzr.getResources().getConfiguration());
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcqi)).booleanValue()) {
            return;
        }
        zzbbw zzbbwVar = this.zzczi;
        if (zzbbwVar == null || zzbbwVar.isDestroyed()) {
            zzaxi.zzeu("The webview does not exist. Ignoring action.");
        } else {
            com.google.android.gms.ads.internal.zzq.zzkl();
            zzaur.zzb(this.zzczi);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.zzdhb);
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final void onStart() {
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcqi)).booleanValue()) {
            zzbbw zzbbwVar = this.zzczi;
            if (zzbbwVar == null || zzbbwVar.isDestroyed()) {
                zzaxi.zzeu("The webview does not exist. Ignoring action.");
            } else {
                com.google.android.gms.ads.internal.zzq.zzkl();
                zzaur.zzb(this.zzczi);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final void onStop() {
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcqi)).booleanValue() && this.zzczi != null && (!this.zzzr.isFinishing() || this.zzdgw == null)) {
            com.google.android.gms.ads.internal.zzq.zzkl();
            zzaur.zza(this.zzczi);
        }
        zzsr();
    }

    public final void setRequestedOrientation(int i2) {
        if (this.zzzr.getApplicationInfo().targetSdkVersion >= ((Integer) zzuv.zzon().zzd(zzza.zzcsn)).intValue()) {
            if (this.zzzr.getApplicationInfo().targetSdkVersion <= ((Integer) zzuv.zzon().zzd(zzza.zzcso)).intValue()) {
                if (Build.VERSION.SDK_INT >= ((Integer) zzuv.zzon().zzd(zzza.zzcsp)).intValue()) {
                    if (Build.VERSION.SDK_INT <= ((Integer) zzuv.zzon().zzd(zzza.zzcsq)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            this.zzzr.setRequestedOrientation(i2);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzq.zzkn().zzb(th, "AdOverlay.setRequestedOrientation");
        }
    }

    public final void zza(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        this.zzdgz = new FrameLayout(this.zzzr);
        this.zzdgz.setBackgroundColor(-16777216);
        this.zzdgz.addView(view, -1, -1);
        this.zzzr.setContentView(this.zzdgz);
        this.zzdhi = true;
        this.zzdha = customViewCallback;
        this.zzdgy = true;
    }

    public final void zza(boolean z, boolean z2) {
        AdOverlayInfoParcel adOverlayInfoParcel;
        com.google.android.gms.ads.internal.zzg zzgVar;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        com.google.android.gms.ads.internal.zzg zzgVar2;
        boolean z3 = true;
        boolean z4 = ((Boolean) zzuv.zzon().zzd(zzza.zzcku)).booleanValue() && (adOverlayInfoParcel2 = this.zzdgv) != null && (zzgVar2 = adOverlayInfoParcel2.zzdif) != null && zzgVar2.zzbld;
        boolean z5 = ((Boolean) zzuv.zzon().zzd(zzza.zzckv)).booleanValue() && (adOverlayInfoParcel = this.zzdgv) != null && (zzgVar = adOverlayInfoParcel.zzdif) != null && zzgVar.zzble;
        if (z && z2 && z4 && !z5) {
            new zzanj(this.zzczi, "useCustomClose").zzdn("Custom close has been disabled for interstitial ads in this ad slot.");
        }
        zzq zzqVar = this.zzdgx;
        if (zzqVar != null) {
            if (!z5 && (!z2 || z4)) {
                z3 = false;
            }
            zzqVar.zzae(z3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final void zzag(IObjectWrapper iObjectWrapper) {
        zza((Configuration) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final void zzda() {
        this.zzdhi = true;
    }

    public final void zzsn() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzdgv;
        if (adOverlayInfoParcel != null && this.zzdgy) {
            setRequestedOrientation(adOverlayInfoParcel.orientation);
        }
        if (this.zzdgz != null) {
            this.zzzr.setContentView(this.zzdhc);
            this.zzdhi = true;
            this.zzdgz.removeAllViews();
            this.zzdgz = null;
        }
        WebChromeClient.CustomViewCallback customViewCallback = this.zzdha;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.zzdha = null;
        }
        this.zzdgy = false;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzy
    public final void zzso() {
        this.zzdhe = 1;
        this.zzzr.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final boolean zzsp() {
        this.zzdhe = 0;
        zzbbw zzbbwVar = this.zzczi;
        if (zzbbwVar == null) {
            return true;
        }
        boolean zZzzw = zzbbwVar.zzzw();
        if (!zZzzw) {
            this.zzczi.zza("onbackblocked", Collections.emptyMap());
        }
        return zZzzw;
    }

    public final void zzsq() {
        this.zzdhc.removeView(this.zzdgx);
        zzab(true);
    }

    @VisibleForTesting
    final void zzss() {
        zzbbw zzbbwVar;
        zzo zzoVar;
        if (this.zzdhk) {
            return;
        }
        this.zzdhk = true;
        zzbbw zzbbwVar2 = this.zzczi;
        if (zzbbwVar2 != null) {
            this.zzdhc.removeView(zzbbwVar2.getView());
            zzi zziVar = this.zzdgw;
            if (zziVar != null) {
                this.zzczi.zzbr(zziVar.zzlk);
                this.zzczi.zzas(false);
                ViewGroup viewGroup = this.zzdgw.parent;
                View view = this.zzczi.getView();
                zzi zziVar2 = this.zzdgw;
                viewGroup.addView(view, zziVar2.index, zziVar2.zzdhr);
                this.zzdgw = null;
            } else if (this.zzzr.getApplicationContext() != null) {
                this.zzczi.zzbr(this.zzzr.getApplicationContext());
            }
            this.zzczi = null;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzdgv;
        if (adOverlayInfoParcel != null && (zzoVar = adOverlayInfoParcel.zzdhy) != null) {
            zzoVar.zzsi();
        }
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzdgv;
        if (adOverlayInfoParcel2 == null || (zzbbwVar = adOverlayInfoParcel2.zzczi) == null) {
            return;
        }
        zzc(zzbbwVar.zzzt(), this.zzdgv.zzczi.getView());
    }

    public final void zzst() {
        if (this.zzdhd) {
            this.zzdhd = false;
            zzsu();
        }
    }

    public final void zzsv() {
        this.zzdhc.zzdht = true;
    }

    public final void zzsw() {
        synchronized (this.zzdhf) {
            this.zzdhh = true;
            if (this.zzdhg != null) {
                zzaul.zzdsu.removeCallbacks(this.zzdhg);
                zzaul.zzdsu.post(this.zzdhg);
            }
        }
    }
}
