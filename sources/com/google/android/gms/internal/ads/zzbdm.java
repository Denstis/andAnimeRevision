package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import b.h.o.s;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.ByteArrayInputStream;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
public final class zzbdm extends zzbdv implements zzbdg {
    private volatile boolean zzbma;
    private zztp zzcbs;
    private zzadw zzcxc;
    private zzady zzcxd;
    private com.google.android.gms.ads.internal.zzc zzcxx;
    private zzamz zzcxy;
    private com.google.android.gms.ads.internal.overlay.zzo zzdhy;
    private com.google.android.gms.ads.internal.overlay.zzt zzdic;
    private boolean zzdlr;
    protected zzbbw zzeem;
    private zzbdf zzeep;
    private zzbdi zzeeq;
    private zzbdh zzeer;
    private boolean zzeet;
    private boolean zzeeu;
    private zzang zzeev;
    private zzasi zzeew;
    private boolean zzeex;
    private boolean zzeey;
    private int zzeez;
    private View.OnAttachStateChangeListener zzefa;
    private final Object lock = new Object();
    private boolean zzees = false;
    private final zzagz<zzbbw> zzeia = new zzagz<>();

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(View view, zzasi zzasiVar, int i2) {
        if (!zzasiVar.zztn() || i2 <= 0) {
            return;
        }
        zzasiVar.zzj(view);
        if (zzasiVar.zztn()) {
            zzaul.zzdsu.postDelayed(new zzbdo(this, view, zzasiVar, i2), 100L);
        }
    }

    private final void zza(AdOverlayInfoParcel adOverlayInfoParcel) {
        com.google.android.gms.ads.internal.overlay.zzd zzdVar;
        zzamz zzamzVar = this.zzcxy;
        boolean zZzsk = zzamzVar != null ? zzamzVar.zzsk() : false;
        com.google.android.gms.ads.internal.zzq.zzki();
        com.google.android.gms.ads.internal.overlay.zzn.zza(this.zzeem.getContext(), adOverlayInfoParcel, !zZzsk);
        if (this.zzeew != null) {
            String str = adOverlayInfoParcel.url;
            if (str == null && (zzdVar = adOverlayInfoParcel.zzdhx) != null) {
                str = zzdVar.url;
            }
            this.zzeew.zzdq(str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00e9, code lost:
    
        com.google.android.gms.ads.internal.zzq.zzkj();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00f0, code lost:
    
        return com.google.android.gms.internal.ads.zzaul.zzd(r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final android.webkit.WebResourceResponse zze(com.google.android.gms.internal.ads.zzbdy r8) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 273
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbdm.zze(com.google.android.gms.internal.ads.zzbdy):android.webkit.WebResourceResponse");
    }

    private final void zzza() {
        if (this.zzefa == null) {
            return;
        }
        this.zzeem.getView().removeOnAttachStateChangeListener(this.zzefa);
    }

    private final void zzzf() {
        if (this.zzeep != null && ((this.zzeex && this.zzeez <= 0) || this.zzeey)) {
            this.zzeep.zzad(!this.zzeey);
            this.zzeep = null;
        }
        this.zzeem.zzzz();
    }

    private static WebResourceResponse zzzg() {
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcka)).booleanValue()) {
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    public final void destroy() {
        zzasi zzasiVar = this.zzeew;
        if (zzasiVar != null) {
            zzasiVar.zztp();
            this.zzeew = null;
        }
        zzza();
        this.zzeia.reset();
        this.zzeia.zzg((zzbbw) null);
        synchronized (this.lock) {
            this.zzcbs = null;
            this.zzdhy = null;
            this.zzeep = null;
            this.zzeeq = null;
            this.zzcxc = null;
            this.zzcxd = null;
            this.zzdic = null;
            this.zzeer = null;
            if (this.zzcxy != null) {
                this.zzcxy.zzv(true);
                this.zzcxy = null;
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        zzrf zzrfVarZzaaf = this.zzeem.zzaaf();
        if (zzrfVarZzaaf != null && webView == zzrfVarZzaaf.getWebView()) {
            zzrfVarZzaaf.onPageStarted(webView, str, bitmap);
        }
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(26)
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.zzeem.zzc(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }

    @Override // com.google.android.gms.internal.ads.zzbdg
    public final void zza(int i2, int i3, boolean z) {
        this.zzeev.zzi(i2, i3);
        zzamz zzamzVar = this.zzcxy;
        if (zzamzVar != null) {
            zzamzVar.zza(i2, i3, false);
        }
    }

    public final void zza(com.google.android.gms.ads.internal.overlay.zzd zzdVar) {
        boolean zZzzu = this.zzeem.zzzu();
        zza(new AdOverlayInfoParcel(zzdVar, (!zZzzu || this.zzeem.zzzn().zzaau()) ? this.zzcbs : null, zZzzu ? null : this.zzdhy, this.zzdic, this.zzeem.zzxr()));
    }

    final void zza(zzbbw zzbbwVar, boolean z) {
        zzang zzangVar = new zzang(zzbbwVar, zzbbwVar.zzzk(), new zzyl(zzbbwVar.getContext()));
        this.zzeem = zzbbwVar;
        this.zzbma = z;
        this.zzeev = zzangVar;
        this.zzcxy = null;
        this.zzeia.zzg(zzbbwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbdg
    public final void zza(zzbdf zzbdfVar) {
        this.zzeep = zzbdfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbdg
    public final void zza(zzbdi zzbdiVar) {
        this.zzeeq = zzbdiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbdv
    public final void zza(zzbdy zzbdyVar) {
        this.zzeex = true;
        zzbdi zzbdiVar = this.zzeeq;
        if (zzbdiVar != null) {
            zzbdiVar.zzrf();
            this.zzeeq = null;
        }
        zzzf();
    }

    @Override // com.google.android.gms.internal.ads.zzbdg
    public final void zza(zztp zztpVar, zzadw zzadwVar, com.google.android.gms.ads.internal.overlay.zzo zzoVar, zzady zzadyVar, com.google.android.gms.ads.internal.overlay.zzt zztVar, boolean z, zzaeq zzaeqVar, com.google.android.gms.ads.internal.zzc zzcVar, zzani zzaniVar, zzasi zzasiVar) {
        if (zzcVar == null) {
            zzcVar = new com.google.android.gms.ads.internal.zzc(this.zzeem.getContext(), zzasiVar, null);
        }
        this.zzcxy = new zzamz(this.zzeem, zzaniVar);
        this.zzeew = zzasiVar;
        if (((Boolean) zzuv.zzon().zzd(zzza.zzckl)).booleanValue()) {
            zza("/adMetadata", new zzadx(zzadwVar));
        }
        zza("/appEvent", new zzadz(zzadyVar));
        zza("/backButton", zzaea.zzcxn);
        zza("/refresh", zzaea.zzcxo);
        zza("/canOpenURLs", zzaea.zzcxe);
        zza("/canOpenIntents", zzaea.zzcxf);
        zza("/click", zzaea.zzcxg);
        zza("/close", zzaea.zzcxh);
        zza("/customClose", zzaea.zzcxi);
        zza("/instrument", zzaea.zzcxr);
        zza("/delayPageLoaded", zzaea.zzcxt);
        zza("/delayPageClosed", zzaea.zzcxu);
        zza("/getLocationInfo", zzaea.zzcxv);
        zza("/httpTrack", zzaea.zzcxj);
        zza("/log", zzaea.zzcxk);
        zza("/mraid", new zzaes(zzcVar, this.zzcxy, zzaniVar));
        zza("/mraidLoaded", this.zzeev);
        zza("/open", new zzaev(zzcVar, this.zzcxy));
        zza("/precache", new zzbbg());
        zza("/touch", zzaea.zzcxm);
        zza("/video", zzaea.zzcxp);
        zza("/videoMeta", zzaea.zzcxq);
        if (com.google.android.gms.ads.internal.zzq.zzlh().zzab(this.zzeem.getContext())) {
            zza("/logScionEvent", new zzaet(this.zzeem.getContext()));
        }
        this.zzcbs = zztpVar;
        this.zzdhy = zzoVar;
        this.zzcxc = zzadwVar;
        this.zzcxd = zzadyVar;
        this.zzdic = zztVar;
        this.zzcxx = zzcVar;
        this.zzees = z;
    }

    public final void zza(String str, Predicate<zzaer<? super zzbbw>> predicate) {
        this.zzeia.zza(str, predicate);
    }

    public final void zza(String str, zzaer<? super zzbbw> zzaerVar) {
        this.zzeia.zza(str, zzaerVar);
    }

    public final void zza(boolean z, int i2, String str) {
        boolean zZzzu = this.zzeem.zzzu();
        zztp zztpVar = (!zZzzu || this.zzeem.zzzn().zzaau()) ? this.zzcbs : null;
        zzbdq zzbdqVar = zZzzu ? null : new zzbdq(this.zzeem, this.zzdhy);
        zzadw zzadwVar = this.zzcxc;
        zzady zzadyVar = this.zzcxd;
        com.google.android.gms.ads.internal.overlay.zzt zztVar = this.zzdic;
        zzbbw zzbbwVar = this.zzeem;
        zza(new AdOverlayInfoParcel(zztpVar, zzbdqVar, zzadwVar, zzadyVar, zztVar, zzbbwVar, z, i2, str, zzbbwVar.zzxr()));
    }

    public final void zza(boolean z, int i2, String str, String str2) {
        boolean zZzzu = this.zzeem.zzzu();
        zztp zztpVar = (!zZzzu || this.zzeem.zzzn().zzaau()) ? this.zzcbs : null;
        zzbdq zzbdqVar = zZzzu ? null : new zzbdq(this.zzeem, this.zzdhy);
        zzadw zzadwVar = this.zzcxc;
        zzady zzadyVar = this.zzcxd;
        com.google.android.gms.ads.internal.overlay.zzt zztVar = this.zzdic;
        zzbbw zzbbwVar = this.zzeem;
        zza(new AdOverlayInfoParcel(zztpVar, zzbdqVar, zzadwVar, zzadyVar, zztVar, zzbbwVar, z, i2, str, str2, zzbbwVar.zzxr()));
    }

    public final void zzao(boolean z) {
        this.zzees = z;
    }

    public final void zzaq(boolean z) {
        this.zzdlr = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbdg
    public final void zzar(boolean z) {
        synchronized (this.lock) {
            this.zzeet = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdv
    public final void zzb(zzbdy zzbdyVar) {
        this.zzeia.zzg(zzbdyVar.uri);
    }

    public final void zzb(String str, zzaer<? super zzbbw> zzaerVar) {
        this.zzeia.zzb(str, zzaerVar);
    }

    public final void zzb(boolean z, int i2) {
        zztp zztpVar = (!this.zzeem.zzzu() || this.zzeem.zzzn().zzaau()) ? this.zzcbs : null;
        com.google.android.gms.ads.internal.overlay.zzo zzoVar = this.zzdhy;
        com.google.android.gms.ads.internal.overlay.zzt zztVar = this.zzdic;
        zzbbw zzbbwVar = this.zzeem;
        zza(new AdOverlayInfoParcel(zztpVar, zzoVar, zztVar, zzbbwVar, z, i2, zzbbwVar.zzxr()));
    }

    @Override // com.google.android.gms.internal.ads.zzbdv
    public final boolean zzc(zzbdy zzbdyVar) {
        String strValueOf = String.valueOf(zzbdyVar.url);
        zzaug.zzdy(strValueOf.length() != 0 ? "AdWebView shouldOverrideUrlLoading: ".concat(strValueOf) : new String("AdWebView shouldOverrideUrlLoading: "));
        Uri uriZza = zzbdyVar.uri;
        if (this.zzeia.zzg(uriZza)) {
            return true;
        }
        if (this.zzees) {
            String scheme = uriZza.getScheme();
            if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                zztp zztpVar = this.zzcbs;
                if (zztpVar != null) {
                    zztpVar.onAdClicked();
                    zzasi zzasiVar = this.zzeew;
                    if (zzasiVar != null) {
                        zzasiVar.zzdq(zzbdyVar.url);
                    }
                    this.zzcbs = null;
                }
                return false;
            }
        }
        if (this.zzeem.getWebView().willNotDraw()) {
            String strValueOf2 = String.valueOf(zzbdyVar.url);
            zzaxi.zzeu(strValueOf2.length() != 0 ? "AdWebView unable to handle URL: ".concat(strValueOf2) : new String("AdWebView unable to handle URL: "));
        } else {
            try {
                zzdf zzdfVarZzzs = this.zzeem.zzzs();
                if (zzdfVarZzzs != null && zzdfVarZzzs.zzc(uriZza)) {
                    uriZza = zzdfVarZzzs.zza(uriZza, this.zzeem.getContext(), this.zzeem.getView(), this.zzeem.zzxn());
                }
            } catch (zzdi unused) {
                String strValueOf3 = String.valueOf(zzbdyVar.url);
                zzaxi.zzeu(strValueOf3.length() != 0 ? "Unable to append parameter to URL: ".concat(strValueOf3) : new String("Unable to append parameter to URL: "));
            }
            com.google.android.gms.ads.internal.zzc zzcVar = this.zzcxx;
            if (zzcVar == null || zzcVar.zzjk()) {
                zza(new com.google.android.gms.ads.internal.overlay.zzd("android.intent.action.VIEW", uriZza.toString(), null, null, null, null, null));
            } else {
                this.zzcxx.zzbl(zzbdyVar.url);
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbdv
    public final WebResourceResponse zzd(zzbdy zzbdyVar) {
        WebResourceResponse webResourceResponseZzd;
        zzro zzroVarZza;
        zzasi zzasiVar = this.zzeew;
        if (zzasiVar != null) {
            zzasiVar.zza(zzbdyVar.url, zzbdyVar.zzab, 1);
        }
        if ("mraid.js".equalsIgnoreCase(new File(zzbdyVar.url).getName())) {
            zzsq();
            String str = (String) zzuv.zzon().zzd(this.zzeem.zzzn().zzaau() ? zzza.zzcig : this.zzeem.zzzu() ? zzza.zzcif : zzza.zzcie);
            com.google.android.gms.ads.internal.zzq.zzkj();
            webResourceResponseZzd = zzaul.zzd(this.zzeem.getContext(), this.zzeem.zzxr().zzblz, str);
        } else {
            webResourceResponseZzd = null;
        }
        if (webResourceResponseZzd != null) {
            return webResourceResponseZzd;
        }
        try {
            if (!zzate.zzd(zzbdyVar.url, this.zzeem.getContext(), this.zzdlr).equals(zzbdyVar.url)) {
                return zze(zzbdyVar);
            }
            zzrp zzrpVarZzbt = zzrp.zzbt(zzbdyVar.url);
            if (zzrpVarZzbt != null && (zzroVarZza = com.google.android.gms.ads.internal.zzq.zzkp().zza(zzrpVarZzbt)) != null && zzroVarZza.zzmi()) {
                return new WebResourceResponse("", "", zzroVarZza.zzmj());
            }
            if (zzaxc.isEnabled()) {
                if (((Boolean) zzuv.zzon().zzd(zzza.zzcls)).booleanValue()) {
                    return zze(zzbdyVar);
                }
            }
            return null;
        } catch (Exception | NoClassDefFoundError e2) {
            com.google.android.gms.ads.internal.zzq.zzkn().zza(e2, "AdWebViewClient.interceptRequest");
            return zzzg();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdg
    public final void zzh(int i2, int i3) {
        zzamz zzamzVar = this.zzcxy;
        if (zzamzVar != null) {
            zzamzVar.zzh(i2, i3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdg
    public final void zzh(Uri uri) {
        this.zzeia.zzh(uri);
    }

    @Override // com.google.android.gms.internal.ads.zzbdg
    public final void zzsq() {
        synchronized (this.lock) {
            this.zzees = false;
            this.zzbma = true;
            zzaxn.zzdwm.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbdl
                private final zzbdm zzehz;

                {
                    this.zzehz = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzbdm zzbdmVar = this.zzehz;
                    zzbdmVar.zzeem.zzzy();
                    com.google.android.gms.ads.internal.overlay.zzc zzcVarZzzl = zzbdmVar.zzeem.zzzl();
                    if (zzcVarZzzl != null) {
                        zzcVarZzzl.zzsq();
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdg
    public final com.google.android.gms.ads.internal.zzc zzyv() {
        return this.zzcxx;
    }

    @Override // com.google.android.gms.internal.ads.zzbdg
    public final boolean zzyw() {
        return this.zzbma;
    }

    public final boolean zzyx() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzeet;
        }
        return z;
    }

    public final ViewTreeObserver.OnGlobalLayoutListener zzyy() {
        synchronized (this.lock) {
        }
        return null;
    }

    public final ViewTreeObserver.OnScrollChangedListener zzyz() {
        synchronized (this.lock) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbdg
    public final void zzzb() {
        zzasi zzasiVar = this.zzeew;
        if (zzasiVar != null) {
            WebView webView = this.zzeem.getWebView();
            if (s.y(webView)) {
                zza(webView, zzasiVar, 10);
                return;
            }
            zzza();
            this.zzefa = new zzbdn(this, zzasiVar);
            this.zzeem.getView().addOnAttachStateChangeListener(this.zzefa);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdg
    public final void zzzc() {
        synchronized (this.lock) {
            this.zzeeu = true;
        }
        this.zzeez++;
        zzzf();
    }

    @Override // com.google.android.gms.internal.ads.zzbdg
    public final void zzzd() {
        this.zzeez--;
        zzzf();
    }

    @Override // com.google.android.gms.internal.ads.zzbdg
    public final void zzze() {
        this.zzeey = true;
        zzzf();
    }

    @Override // com.google.android.gms.internal.ads.zzbdg
    public final zzasi zzzh() {
        return this.zzeew;
    }
}
