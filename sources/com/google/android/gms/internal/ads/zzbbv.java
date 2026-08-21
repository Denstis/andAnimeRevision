package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import b.h.o.s;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzsf;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
public class zzbbv extends WebViewClient implements zzbdg {
    private static final String[] zzeek = {"UNKNOWN", "HOST_LOOKUP", "UNSUPPORTED_AUTH_SCHEME", "AUTHENTICATION", "PROXY_AUTHENTICATION", "CONNECT", "IO", "TIMEOUT", "REDIRECT_LOOP", "UNSUPPORTED_SCHEME", "FAILED_SSL_HANDSHAKE", "BAD_URL", "FILE", "FILE_NOT_FOUND", "TOO_MANY_REQUESTS"};
    private static final String[] zzeel = {"NOT_YET_VALID", "EXPIRED", "ID_MISMATCH", "UNTRUSTED", "DATE_INVALID", "INVALID"};
    private final Object lock;
    private boolean zzbma;
    private zztp zzcbs;
    private zzadw zzcxc;
    private zzady zzcxd;
    private com.google.android.gms.ads.internal.zzc zzcxx;
    private zzamz zzcxy;
    private com.google.android.gms.ads.internal.overlay.zzo zzdhy;
    private com.google.android.gms.ads.internal.overlay.zzt zzdic;
    private boolean zzdlr;
    protected zzbbw zzeem;
    private final zzsd zzeen;
    private final HashMap<String, List<zzaer<? super zzbbw>>> zzeeo;
    private zzbdf zzeep;
    private zzbdi zzeeq;
    private zzbdh zzeer;
    private boolean zzees;
    private boolean zzeet;
    private boolean zzeeu;
    private final zzang zzeev;
    protected zzasi zzeew;
    private boolean zzeex;
    private boolean zzeey;
    private int zzeez;
    private View.OnAttachStateChangeListener zzefa;

    public zzbbv(zzbbw zzbbwVar, zzsd zzsdVar, boolean z) {
        this(zzbbwVar, zzsdVar, z, new zzang(zzbbwVar, zzbbwVar.zzzk(), new zzyl(zzbbwVar.getContext())), null);
    }

    @VisibleForTesting
    private zzbbv(zzbbw zzbbwVar, zzsd zzsdVar, boolean z, zzang zzangVar, zzamz zzamzVar) {
        this.zzeeo = new HashMap<>();
        this.lock = new Object();
        this.zzees = false;
        this.zzeen = zzsdVar;
        this.zzeem = zzbbwVar;
        this.zzbma = z;
        this.zzeev = zzangVar;
        this.zzcxy = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(View view, zzasi zzasiVar, int i2) {
        if (!zzasiVar.zztn() || i2 <= 0) {
            return;
        }
        zzasiVar.zzj(view);
        if (zzasiVar.zztn()) {
            zzaul.zzdsu.postDelayed(new zzbca(this, view, zzasiVar, i2), 100L);
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

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00e5, code lost:
    
        com.google.android.gms.ads.internal.zzq.zzkj();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ec, code lost:
    
        return com.google.android.gms.internal.ads.zzaul.zzd(r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final android.webkit.WebResourceResponse zze(java.lang.String r7, java.util.Map<java.lang.String, java.lang.String> r8) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 269
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbbv.zze(java.lang.String, java.util.Map):android.webkit.WebResourceResponse");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void zze(android.content.Context r8, java.lang.String r9, java.lang.String r10, java.lang.String r11) {
        /*
            r7 = this;
            com.google.android.gms.internal.ads.zzyp<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzza.zzcmd
            com.google.android.gms.internal.ads.zzyw r1 = com.google.android.gms.internal.ads.zzuv.zzon()
            java.lang.Object r0 = r1.zzd(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L13
            return
        L13:
            android.os.Bundle r5 = new android.os.Bundle
            r5.<init>()
            java.lang.String r0 = "err"
            r5.putString(r0, r9)
            java.lang.String r9 = "code"
            r5.putString(r9, r10)
            boolean r9 = android.text.TextUtils.isEmpty(r11)
            if (r9 != 0) goto L37
            android.net.Uri r9 = android.net.Uri.parse(r11)
            java.lang.String r10 = r9.getHost()
            if (r10 == 0) goto L37
            java.lang.String r9 = r9.getHost()
            goto L39
        L37:
            java.lang.String r9 = ""
        L39:
            java.lang.String r10 = "host"
            r5.putString(r10, r9)
            com.google.android.gms.internal.ads.zzaul r1 = com.google.android.gms.ads.internal.zzq.zzkj()
            com.google.android.gms.internal.ads.zzbbw r9 = r7.zzeem
            com.google.android.gms.internal.ads.zzaxl r9 = r9.zzxr()
            java.lang.String r3 = r9.zzblz
            r6 = 1
            java.lang.String r4 = "gmob-apps"
            r2 = r8
            r1.zza(r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbbv.zze(android.content.Context, java.lang.String, java.lang.String, java.lang.String):void");
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

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        String strValueOf = String.valueOf(str);
        zzaug.zzdy(strValueOf.length() != 0 ? "Loading resource: ".concat(strValueOf) : new String("Loading resource: "));
        Uri uri = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(uri.getScheme()) && "mobileads.google.com".equalsIgnoreCase(uri.getHost())) {
            zzh(uri);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.lock) {
            if (this.zzeem.isDestroyed()) {
                zzaug.zzdy("Blank page loaded, 1...");
                this.zzeem.zzzv();
                return;
            }
            this.zzeex = true;
            zzbdi zzbdiVar = this.zzeeq;
            if (zzbdiVar != null) {
                zzbdiVar.zzrf();
                this.zzeeq = null;
            }
            zzzf();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        zzrf zzrfVarZzaaf = this.zzeem.zzaaf();
        if (zzrfVarZzaaf != null && webView == zzrfVarZzaaf.getWebView()) {
            zzrfVarZzaaf.onPageStarted(webView, str, bitmap);
        }
        super.onPageStarted(webView, str, bitmap);
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x000d  */
    @Override // android.webkit.WebViewClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onReceivedError(android.webkit.WebView r4, int r5, java.lang.String r6, java.lang.String r7) {
        /*
            r3 = this;
            if (r5 >= 0) goto Ld
            int r0 = -r5
            int r0 = r0 + (-1)
            java.lang.String[] r1 = com.google.android.gms.internal.ads.zzbbv.zzeek
            int r2 = r1.length
            if (r0 >= r2) goto Ld
            r0 = r1[r0]
            goto L11
        Ld:
            java.lang.String r0 = java.lang.String.valueOf(r5)
        L11:
            com.google.android.gms.internal.ads.zzbbw r1 = r3.zzeem
            android.content.Context r1 = r1.getContext()
            java.lang.String r2 = "http_err"
            r3.zze(r1, r2, r0, r7)
            super.onReceivedError(r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbbv.onReceivedError(android.webkit.WebView, int, java.lang.String, java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0010  */
    @Override // android.webkit.WebViewClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onReceivedSslError(android.webkit.WebView r5, android.webkit.SslErrorHandler r6, android.net.http.SslError r7) {
        /*
            r4 = this;
            if (r7 == 0) goto L26
            int r0 = r7.getPrimaryError()
            if (r0 < 0) goto L10
            java.lang.String[] r1 = com.google.android.gms.internal.ads.zzbbv.zzeel
            int r2 = r1.length
            if (r0 >= r2) goto L10
            r0 = r1[r0]
            goto L14
        L10:
            java.lang.String r0 = java.lang.String.valueOf(r0)
        L14:
            com.google.android.gms.internal.ads.zzbbw r1 = r4.zzeem
            android.content.Context r1 = r1.getContext()
            com.google.android.gms.ads.internal.zzq.zzkl()
            java.lang.String r2 = r7.getUrl()
            java.lang.String r3 = "ssl_err"
            r4.zze(r1, r3, r0, r2)
        L26:
            super.onReceivedSslError(r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbbv.onReceivedSslError(android.webkit.WebView, android.webkit.SslErrorHandler, android.net.http.SslError):void");
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(26)
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.zzeem.zzc(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }

    public final void reset() {
        zzasi zzasiVar = this.zzeew;
        if (zzasiVar != null) {
            zzasiVar.zztp();
            this.zzeew = null;
        }
        zzza();
        synchronized (this.lock) {
            this.zzeeo.clear();
            this.zzcbs = null;
            this.zzdhy = null;
            this.zzeep = null;
            this.zzeeq = null;
            this.zzcxc = null;
            this.zzcxd = null;
            this.zzees = false;
            this.zzbma = false;
            this.zzeet = false;
            this.zzeeu = false;
            this.zzdic = null;
            this.zzeer = null;
            if (this.zzcxy != null) {
                this.zzcxy.zzv(true);
                this.zzcxy = null;
            }
        }
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(11)
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return zzd(str, Collections.emptyMap());
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
                return true;
            default:
                switch (keyCode) {
                    case 126:
                    case 127:
                    case 128:
                    case TsExtractor.TS_STREAM_TYPE_AC3 /* 129 */:
                    case TsExtractor.TS_STREAM_TYPE_HDMV_DTS /* 130 */:
                        return true;
                    default:
                        return false;
                }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) throws zzdi {
        String strValueOf = String.valueOf(str);
        zzaug.zzdy(strValueOf.length() != 0 ? "AdWebView shouldOverrideUrlLoading: ".concat(strValueOf) : new String("AdWebView shouldOverrideUrlLoading: "));
        Uri uriZza = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(uriZza.getScheme()) && "mobileads.google.com".equalsIgnoreCase(uriZza.getHost())) {
            zzh(uriZza);
        } else {
            if (this.zzees && webView == this.zzeem.getWebView()) {
                String scheme = uriZza.getScheme();
                if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                    zztp zztpVar = this.zzcbs;
                    if (zztpVar != null) {
                        zztpVar.onAdClicked();
                        zzasi zzasiVar = this.zzeew;
                        if (zzasiVar != null) {
                            zzasiVar.zzdq(str);
                        }
                        this.zzcbs = null;
                    }
                    return super.shouldOverrideUrlLoading(webView, str);
                }
            }
            if (this.zzeem.getWebView().willNotDraw()) {
                String strValueOf2 = String.valueOf(str);
                zzaxi.zzeu(strValueOf2.length() != 0 ? "AdWebView unable to handle URL: ".concat(strValueOf2) : new String("AdWebView unable to handle URL: "));
            } else {
                try {
                    zzdf zzdfVarZzzs = this.zzeem.zzzs();
                    if (zzdfVarZzzs != null && zzdfVarZzzs.zzc(uriZza)) {
                        uriZza = zzdfVarZzzs.zza(uriZza, this.zzeem.getContext(), this.zzeem.getView(), this.zzeem.zzxn());
                    }
                } catch (zzdi unused) {
                    String strValueOf3 = String.valueOf(str);
                    zzaxi.zzeu(strValueOf3.length() != 0 ? "Unable to append parameter to URL: ".concat(strValueOf3) : new String("Unable to append parameter to URL: "));
                }
                com.google.android.gms.ads.internal.zzc zzcVar = this.zzcxx;
                if (zzcVar == null || zzcVar.zzjk()) {
                    zza(new com.google.android.gms.ads.internal.overlay.zzd("android.intent.action.VIEW", uriZza.toString(), null, null, null, null, null));
                } else {
                    this.zzcxx.zzbl(str);
                }
            }
        }
        return true;
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

    @Override // com.google.android.gms.internal.ads.zzbdg
    public final void zza(zzbdf zzbdfVar) {
        this.zzeep = zzbdfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbdg
    public final void zza(zzbdi zzbdiVar) {
        this.zzeeq = zzbdiVar;
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
        synchronized (this.lock) {
            List<zzaer<? super zzbbw>> list = this.zzeeo.get(str);
            if (list == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (zzaer<? super zzbbw> zzaerVar : list) {
                if (predicate.apply(zzaerVar)) {
                    arrayList.add(zzaerVar);
                }
            }
            list.removeAll(arrayList);
        }
    }

    public final void zza(String str, zzaer<? super zzbbw> zzaerVar) {
        synchronized (this.lock) {
            List<zzaer<? super zzbbw>> copyOnWriteArrayList = this.zzeeo.get(str);
            if (copyOnWriteArrayList == null) {
                copyOnWriteArrayList = new CopyOnWriteArrayList<>();
                this.zzeeo.put(str, copyOnWriteArrayList);
            }
            copyOnWriteArrayList.add(zzaerVar);
        }
    }

    public final void zza(boolean z, int i2, String str) {
        boolean zZzzu = this.zzeem.zzzu();
        zztp zztpVar = (!zZzzu || this.zzeem.zzzn().zzaau()) ? this.zzcbs : null;
        zzbcc zzbccVar = zZzzu ? null : new zzbcc(this.zzeem, this.zzdhy);
        zzadw zzadwVar = this.zzcxc;
        zzady zzadyVar = this.zzcxd;
        com.google.android.gms.ads.internal.overlay.zzt zztVar = this.zzdic;
        zzbbw zzbbwVar = this.zzeem;
        zza(new AdOverlayInfoParcel(zztpVar, zzbccVar, zzadwVar, zzadyVar, zztVar, zzbbwVar, z, i2, str, zzbbwVar.zzxr()));
    }

    public final void zza(boolean z, int i2, String str, String str2) {
        boolean zZzzu = this.zzeem.zzzu();
        zztp zztpVar = (!zZzzu || this.zzeem.zzzn().zzaau()) ? this.zzcbs : null;
        zzbcc zzbccVar = zZzzu ? null : new zzbcc(this.zzeem, this.zzdhy);
        zzadw zzadwVar = this.zzcxc;
        zzady zzadyVar = this.zzcxd;
        com.google.android.gms.ads.internal.overlay.zzt zztVar = this.zzdic;
        zzbbw zzbbwVar = this.zzeem;
        zza(new AdOverlayInfoParcel(zztpVar, zzbccVar, zzadwVar, zzadyVar, zztVar, zzbbwVar, z, i2, str, str2, zzbbwVar.zzxr()));
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

    public final void zzb(String str, zzaer<? super zzbbw> zzaerVar) {
        synchronized (this.lock) {
            List<zzaer<? super zzbbw>> list = this.zzeeo.get(str);
            if (list == null) {
                return;
            }
            list.remove(zzaerVar);
        }
    }

    public final void zzb(boolean z, int i2) {
        zztp zztpVar = (!this.zzeem.zzzu() || this.zzeem.zzzn().zzaau()) ? this.zzcbs : null;
        com.google.android.gms.ads.internal.overlay.zzo zzoVar = this.zzdhy;
        com.google.android.gms.ads.internal.overlay.zzt zztVar = this.zzdic;
        zzbbw zzbbwVar = this.zzeem;
        zza(new AdOverlayInfoParcel(zztpVar, zzoVar, zztVar, zzbbwVar, z, i2, zzbbwVar.zzxr()));
    }

    protected final WebResourceResponse zzd(String str, Map<String, String> map) {
        zzro zzroVarZza;
        try {
            String strZzd = zzate.zzd(str, this.zzeem.getContext(), this.zzdlr);
            if (!strZzd.equals(str)) {
                return zze(strZzd, map);
            }
            zzrp zzrpVarZzbt = zzrp.zzbt(str);
            if (zzrpVarZzbt != null && (zzroVarZza = com.google.android.gms.ads.internal.zzq.zzkp().zza(zzrpVarZzbt)) != null && zzroVarZza.zzmi()) {
                return new WebResourceResponse("", "", zzroVarZza.zzmj());
            }
            if (!zzaxc.isEnabled()) {
                return null;
            }
            if (((Boolean) zzuv.zzon().zzd(zzza.zzcls)).booleanValue()) {
                return zze(str, map);
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
        final String path = uri.getPath();
        List<zzaer<? super zzbbw>> list = this.zzeeo.get(path);
        if (list == null) {
            String strValueOf = String.valueOf(uri);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 32);
            sb.append("No GMSG handler found for GMSG: ");
            sb.append(strValueOf);
            zzaug.zzdy(sb.toString());
            if (!((Boolean) zzuv.zzon().zzd(zzza.zzctw)).booleanValue() || com.google.android.gms.ads.internal.zzq.zzkn().zzub() == null) {
                return;
            }
            zzaxn.zzdwi.execute(new Runnable(path) { // from class: com.google.android.gms.internal.ads.zzbbx
                private final String zzczh;

                {
                    this.zzczh = path;
                }

                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    com.google.android.gms.ads.internal.zzq.zzkn().zzub().zzcm(this.zzczh.substring(1));
                }
            });
            return;
        }
        com.google.android.gms.ads.internal.zzq.zzkj();
        Map<String, String> mapZzi = zzaul.zzi(uri);
        if (zzaxi.isLoggable(2)) {
            String strValueOf2 = String.valueOf(path);
            zzaug.zzdy(strValueOf2.length() != 0 ? "Received GMSG: ".concat(strValueOf2) : new String("Received GMSG: "));
            for (String str : mapZzi.keySet()) {
                String str2 = mapZzi.get(str);
                StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 4 + String.valueOf(str2).length());
                sb2.append("  ");
                sb2.append(str);
                sb2.append(": ");
                sb2.append(str2);
                zzaug.zzdy(sb2.toString());
            }
        }
        Iterator<zzaer<? super zzbbw>> it = list.iterator();
        while (it.hasNext()) {
            it.next().zza(this.zzeem, mapZzi);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdg
    public final void zzsq() {
        synchronized (this.lock) {
            this.zzees = false;
            this.zzbma = true;
            zzaxn.zzdwm.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbby
                private final zzbbv zzefb;

                {
                    this.zzefb = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzbbv zzbbvVar = this.zzefb;
                    zzbbvVar.zzeem.zzzy();
                    com.google.android.gms.ads.internal.overlay.zzc zzcVarZzzl = zzbbvVar.zzeem.zzzl();
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
        boolean z;
        synchronized (this.lock) {
            z = this.zzbma;
        }
        return z;
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
            this.zzefa = new zzbbz(this, zzasiVar);
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
        zzsd zzsdVar = this.zzeen;
        if (zzsdVar != null) {
            zzsdVar.zza(zzsf.zza.EnumC0165zza.DELAY_PAGE_LOAD_CANCELLED_AD);
        }
        this.zzeey = true;
        zzzf();
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcrz)).booleanValue()) {
            this.zzeem.destroy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdg
    public final zzasi zzzh() {
        return this.zzeew;
    }
}
