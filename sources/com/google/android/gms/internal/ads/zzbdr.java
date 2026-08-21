package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.exoplayer2.C;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzsf;
import com.google.android.gms.internal.ads.zzsp;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
final class zzbdr extends zzbdx implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, zzagv, zzbbw {
    private int maxHeight;
    private int maxWidth;
    private String zzabd;
    private final zzaxl zzblk;
    private final WindowManager zzbnk;
    private int zzdgn;
    private int zzdgo;
    private boolean zzdia;
    private String zzdje;
    private zzzz zzeat;
    private final zzsd zzeen;
    private final zzbdk zzega;
    private final zzdf zzegb;
    private final com.google.android.gms.ads.internal.zzi zzegc;
    private final com.google.android.gms.ads.internal.zza zzegd;
    private final zzrf zzegf;
    private final boolean zzegg;
    private com.google.android.gms.ads.internal.overlay.zzc zzegk;
    private zzbdj zzegm;
    private boolean zzego;
    private boolean zzegp;
    private int zzegq;
    private boolean zzegr;
    private boolean zzegs;
    private zzbco zzegt;
    private boolean zzegu;
    private boolean zzegv;
    private zzaaw zzegw;
    private zzaav zzegx;
    private zzqr zzegy;
    private int zzegz;
    private int zzeha;
    private zzzz zzehb;
    private zzzz zzehc;
    private zzzy zzehd;
    private WeakReference<View.OnClickListener> zzehe;
    private com.google.android.gms.ads.internal.overlay.zzc zzehf;
    private zzawv zzehh;
    private Map<String, zzbax> zzehi;
    private final zzbdm zzeic;
    private final AtomicReference<IObjectWrapper> zzeid;
    private final DisplayMetrics zzwl;

    @VisibleForTesting
    protected zzbdr(zzbdk zzbdkVar, zzbdm zzbdmVar, zzbdj zzbdjVar, String str, boolean z, boolean z2, zzdf zzdfVar, zzaxl zzaxlVar, zzaab zzaabVar, com.google.android.gms.ads.internal.zzi zziVar, com.google.android.gms.ads.internal.zza zzaVar, zzsd zzsdVar, zzrf zzrfVar, boolean z3) {
        super(zzbdkVar, zzbdmVar);
        this.zzegr = true;
        this.zzegs = false;
        this.zzdje = "";
        this.zzeid = new AtomicReference<>();
        this.zzdgo = -1;
        this.zzdgn = -1;
        this.maxWidth = -1;
        this.maxHeight = -1;
        this.zzega = zzbdkVar;
        this.zzeic = zzbdmVar;
        this.zzegm = zzbdjVar;
        this.zzabd = str;
        this.zzego = z;
        this.zzegq = -1;
        this.zzegb = zzdfVar;
        this.zzblk = zzaxlVar;
        this.zzegc = zziVar;
        this.zzegd = zzaVar;
        this.zzbnk = (WindowManager) getContext().getSystemService("window");
        com.google.android.gms.ads.internal.zzq.zzkj();
        this.zzwl = zzaul.zza(this.zzbnk);
        this.zzeen = zzsdVar;
        this.zzegf = zzrfVar;
        this.zzegg = z3;
        this.zzehh = new zzawv(this.zzega.zzxn(), this, this, null);
        com.google.android.gms.ads.internal.zzq.zzkj().zza(zzbdkVar, zzaxlVar.zzblz, getSettings());
        setDownloadListener(this);
        zzaak();
        if (PlatformVersion.isAtLeastJellyBeanMR1()) {
            addJavascriptInterface(zzbcp.zzc(this), "googleAdsJsInterface");
        }
        zzaao();
        this.zzehd = new zzzy(new zzaab(true, "make_wv", this.zzabd));
        this.zzehd.zzpy().zzc(zzaabVar);
        this.zzeat = zzzs.zzb(this.zzehd.zzpy());
        this.zzehd.zza("native:view_create", this.zzeat);
        this.zzehc = null;
        this.zzehb = null;
        com.google.android.gms.ads.internal.zzq.zzkl().zzbc(zzbdkVar);
    }

    static final /* synthetic */ void zza(boolean z, int i2, zztl zztlVar) {
        zzsp.zzw.zza zzaVarZznv = zzsp.zzw.zznv();
        if (zzaVarZznv.zznu() != z) {
            zzaVarZznv.zzp(z);
        }
        zztlVar.zzcaz = (zzsp.zzw) zzaVarZznv.zzce(i2).zzazr();
    }

    private final boolean zzaah() {
        int i2;
        int iZzb;
        if (!this.zzeic.zzyw() && !this.zzeic.zzyx()) {
            return false;
        }
        zzuv.zzoj();
        DisplayMetrics displayMetrics = this.zzwl;
        int iZzb2 = zzawy.zzb(displayMetrics, displayMetrics.widthPixels);
        zzuv.zzoj();
        DisplayMetrics displayMetrics2 = this.zzwl;
        int iZzb3 = zzawy.zzb(displayMetrics2, displayMetrics2.heightPixels);
        Activity activityZzxn = this.zzega.zzxn();
        if (activityZzxn == null || activityZzxn.getWindow() == null) {
            i2 = iZzb2;
            iZzb = iZzb3;
        } else {
            com.google.android.gms.ads.internal.zzq.zzkj();
            int[] iArrZzd = zzaul.zzd(activityZzxn);
            zzuv.zzoj();
            int iZzb4 = zzawy.zzb(this.zzwl, iArrZzd[0]);
            zzuv.zzoj();
            iZzb = zzawy.zzb(this.zzwl, iArrZzd[1]);
            i2 = iZzb4;
        }
        if (this.zzdgn == iZzb2 && this.zzdgo == iZzb3 && this.maxWidth == i2 && this.maxHeight == iZzb) {
            return false;
        }
        boolean z = (this.zzdgn == iZzb2 && this.zzdgo == iZzb3) ? false : true;
        this.zzdgn = iZzb2;
        this.zzdgo = iZzb3;
        this.maxWidth = i2;
        this.maxHeight = iZzb;
        new zzanj(this).zza(iZzb2, iZzb3, i2, iZzb, this.zzwl.density, this.zzbnk.getDefaultDisplay().getRotation());
        return z;
    }

    private final void zzaaj() {
        zzzs.zza(this.zzehd.zzpy(), this.zzeat, "aeh2");
    }

    private final synchronized void zzaak() {
        if (!this.zzego && !this.zzegm.zzaau()) {
            if (Build.VERSION.SDK_INT < 18) {
                zzaxi.zzdv("Disabling hardware acceleration on an AdView.");
                zzaal();
                return;
            } else {
                zzaxi.zzdv("Enabling hardware acceleration on an AdView.");
                zzaam();
                return;
            }
        }
        zzaxi.zzdv("Enabling hardware acceleration on an overlay.");
        zzaam();
    }

    private final synchronized void zzaal() {
        if (!this.zzegp) {
            com.google.android.gms.ads.internal.zzq.zzkl();
            setLayerType(1, null);
        }
        this.zzegp = true;
    }

    private final synchronized void zzaam() {
        if (this.zzegp) {
            com.google.android.gms.ads.internal.zzq.zzkl();
            setLayerType(0, null);
        }
        this.zzegp = false;
    }

    private final synchronized void zzaan() {
        if (this.zzehi != null) {
            Iterator<zzbax> it = this.zzehi.values().iterator();
            while (it.hasNext()) {
                it.next().release();
            }
        }
        this.zzehi = null;
    }

    private final void zzaao() {
        zzaab zzaabVarZzpy;
        zzzy zzzyVar = this.zzehd;
        if (zzzyVar == null || (zzaabVarZzpy = zzzyVar.zzpy()) == null || com.google.android.gms.ads.internal.zzq.zzkn().zzub() == null) {
            return;
        }
        com.google.android.gms.ads.internal.zzq.zzkn().zzub().zza(zzaabVarZzpy);
    }

    private final void zzav(boolean z) {
        HashMap map = new HashMap();
        map.put("isVisible", z ? "1" : "0");
        zzagu.zza(this, "onAdVisibilityChanged", map);
    }

    @Override // com.google.android.gms.internal.ads.zzbbw, com.google.android.gms.internal.ads.zzbdd
    public final View getView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final WebView getWebView() {
        return this;
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected final synchronized void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isDestroyed()) {
            this.zzehh.onAttachedToWindow();
        }
        boolean z = this.zzegu;
        if (this.zzeic != null && this.zzeic.zzyx()) {
            if (!this.zzegv) {
                this.zzeic.zzyy();
                this.zzeic.zzyz();
                this.zzegv = true;
            }
            zzaah();
            z = true;
        }
        zzav(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        synchronized (this) {
            if (!isDestroyed()) {
                this.zzehh.onDetachedFromWindow();
            }
            super.onDetachedFromWindow();
            if (this.zzegv && this.zzeic != null && this.zzeic.zzyx() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.zzeic.zzyy();
                this.zzeic.zzyz();
                this.zzegv = false;
            }
        }
        zzav(false);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            com.google.android.gms.ads.internal.zzq.zzkj();
            zzaul.zza(getContext(), intent);
        } catch (ActivityNotFoundException unused) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(str4).length());
            sb.append("Couldn't find an Activity to view url/mimetype: ");
            sb.append(str);
            sb.append(" / ");
            sb.append(str4);
            zzaxi.zzdv(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdx, android.webkit.WebView, android.view.View
    @TargetApi(21)
    protected final void onDraw(Canvas canvas) {
        if (Build.VERSION.SDK_INT == 21 && canvas.isHardwareAccelerated() && !isAttachedToWindow()) {
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue = motionEvent.getAxisValue(9);
        float axisValue2 = motionEvent.getAxisValue(10);
        if (motionEvent.getActionMasked() == 8) {
            if (axisValue > 0.0f && !canScrollVertically(-1)) {
                return false;
            }
            if (axisValue < 0.0f && !canScrollVertically(1)) {
                return false;
            }
            if (axisValue2 > 0.0f && !canScrollHorizontally(-1)) {
                return false;
            }
            if (axisValue2 < 0.0f && !canScrollHorizontally(1)) {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        boolean zZzaah = zzaah();
        com.google.android.gms.ads.internal.overlay.zzc zzcVarZzzl = zzzl();
        if (zzcVarZzzl == null || !zZzaah) {
            return;
        }
        zzcVarZzzl.zzst();
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    @SuppressLint({"DrawAllocation"})
    protected final synchronized void onMeasure(int i2, int i3) {
        if (isDestroyed()) {
            setMeasuredDimension(0, 0);
            return;
        }
        if (!isInEditMode() && !this.zzego && !this.zzegm.zzaav()) {
            if (this.zzegm.zzaax()) {
                super.onMeasure(i2, i3);
                return;
            }
            if (this.zzegm.zzaaw()) {
                if (((Boolean) zzuv.zzon().zzd(zzza.zzcol)).booleanValue()) {
                    super.onMeasure(i2, i3);
                    return;
                }
                zzbco zzbcoVarZzxl = zzxl();
                float aspectRatio = zzbcoVarZzxl != null ? zzbcoVarZzxl.getAspectRatio() : 0.0f;
                if (aspectRatio == 0.0f) {
                    super.onMeasure(i2, i3);
                    return;
                }
                int size = View.MeasureSpec.getSize(i2);
                int size2 = View.MeasureSpec.getSize(i3);
                int i4 = (int) (size2 * aspectRatio);
                int i5 = (int) (size / aspectRatio);
                if (size2 == 0 && i5 != 0) {
                    i4 = (int) (i5 * aspectRatio);
                    size2 = i5;
                } else if (size == 0 && i4 != 0) {
                    i5 = (int) (i4 / aspectRatio);
                    size = i4;
                }
                setMeasuredDimension(Math.min(i4, size), Math.min(i5, size2));
                return;
            }
            if (this.zzegm.isFluid()) {
                if (!((Boolean) zzuv.zzon().zzd(zzza.zzcoo)).booleanValue() && PlatformVersion.isAtLeastJellyBeanMR1()) {
                    zza("/contentHeight", new zzbdt(this));
                    zzct("(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = 'gmsg://mobileads.google.com/contentHeight?';  url += 'height=' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById('afma-notify-fluid');    if (!frame) {      frame = document.createElement('IFRAME');      frame.id = 'afma-notify-fluid';      frame.style.display = 'none';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();");
                    setMeasuredDimension(View.MeasureSpec.getSize(i2), this.zzeha != -1 ? (int) (this.zzeha * this.zzwl.density) : View.MeasureSpec.getSize(i3));
                    return;
                }
                super.onMeasure(i2, i3);
                return;
            }
            if (this.zzegm.zzaau()) {
                setMeasuredDimension(this.zzwl.widthPixels, this.zzwl.heightPixels);
                return;
            }
            int mode = View.MeasureSpec.getMode(i2);
            int size3 = View.MeasureSpec.getSize(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            int size4 = View.MeasureSpec.getSize(i3);
            int i6 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size3 : Integer.MAX_VALUE;
            int i7 = (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) ? size4 : Integer.MAX_VALUE;
            boolean z = true;
            boolean z2 = this.zzegm.widthPixels > i6 || this.zzegm.heightPixels > i7;
            if (((Boolean) zzuv.zzon().zzd(zzza.zzcrj)).booleanValue()) {
                if (this.zzegm.widthPixels / this.zzwl.density > i6 / this.zzwl.density || this.zzegm.heightPixels / this.zzwl.density > i7 / this.zzwl.density) {
                    z = false;
                }
                if (z2) {
                    z2 = z;
                }
            }
            if (!z2) {
                if (getVisibility() != 8) {
                    setVisibility(0);
                }
                setMeasuredDimension(this.zzegm.widthPixels, this.zzegm.heightPixels);
                return;
            }
            int i8 = (int) (this.zzegm.widthPixels / this.zzwl.density);
            int i9 = (int) (this.zzegm.heightPixels / this.zzwl.density);
            int i10 = (int) (size3 / this.zzwl.density);
            int i11 = (int) (size4 / this.zzwl.density);
            StringBuilder sb = new StringBuilder(103);
            sb.append("Not enough space to show ad. Needs ");
            sb.append(i8);
            sb.append("x");
            sb.append(i9);
            sb.append(" dp, but only has ");
            sb.append(i10);
            sb.append("x");
            sb.append(i11);
            sb.append(" dp.");
            zzaxi.zzeu(sb.toString());
            if (getVisibility() != 8) {
                setVisibility(4);
            }
            setMeasuredDimension(0, 0);
            return;
        }
        super.onMeasure(i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzbdx, android.webkit.WebView, com.google.android.gms.internal.ads.zzbbw
    public final void onPause() {
        try {
            super.onPause();
        } catch (Exception e2) {
            zzaxi.zzc("Could not pause webview.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdx, android.webkit.WebView, com.google.android.gms.internal.ads.zzbbw
    public final void onResume() {
        try {
            super.onResume();
        } catch (Exception e2) {
            zzaxi.zzc("Could not resume webview.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdx, android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.zzeic.zzyx()) {
            synchronized (this) {
                if (this.zzegw != null) {
                    this.zzegw.zzc(motionEvent);
                }
            }
        } else {
            zzdf zzdfVar = this.zzegb;
            if (zzdfVar != null) {
                zzdfVar.zzb(motionEvent);
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzbbw
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.zzehe = new WeakReference<>(onClickListener);
        super.setOnClickListener(onClickListener);
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final synchronized void setRequestedOrientation(int i2) {
        this.zzegq = i2;
        if (this.zzegk != null) {
            this.zzegk.setRequestedOrientation(this.zzegq);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdx, android.webkit.WebView
    public final void stopLoading() {
        try {
            super.stopLoading();
        } catch (Exception e2) {
            zzaxi.zzc("Could not stop loading webview.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final void zza(ViewGroup viewGroup, Activity activity, String str, String str2) {
        if (!zzaag()) {
            zzaug.zzdy("AR ad is not enabled or the ad from the server is not an AR ad.");
            return;
        }
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).removeView(this);
        }
        zzaug.zzdy("Initializing ArWebView object.");
        this.zzegf.zza(activity, this);
        this.zzegf.zze(str, str2);
        if (viewGroup != null) {
            viewGroup.addView(this.zzegf.getView());
        } else {
            zzaxi.zzes("The FrameLayout object cannot be null.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final synchronized void zza(com.google.android.gms.ads.internal.overlay.zzc zzcVar) {
        this.zzegk = zzcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbda
    public final void zza(com.google.android.gms.ads.internal.overlay.zzd zzdVar) {
        this.zzeic.zza(zzdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final synchronized void zza(zzaav zzaavVar) {
        this.zzegx = zzaavVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final synchronized void zza(zzaaw zzaawVar) {
        this.zzegw = zzaawVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw, com.google.android.gms.internal.ads.zzazj
    public final synchronized void zza(zzbco zzbcoVar) {
        if (this.zzegt != null) {
            zzaxi.zzes("Attempt to create multiple AdWebViewVideoControllers.");
        } else {
            this.zzegt = zzbcoVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final synchronized void zza(zzbdj zzbdjVar) {
        this.zzegm = zzbdjVar;
        requestLayout();
    }

    @Override // com.google.android.gms.internal.ads.zzpj
    public final void zza(zzpk zzpkVar) {
        synchronized (this) {
            this.zzegu = zzpkVar.zzbnp;
        }
        zzav(zzpkVar.zzbnp);
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final synchronized void zza(zzqr zzqrVar) {
        this.zzegy = zzqrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final void zza(String str, Predicate<zzaer<? super zzbbw>> predicate) {
        zzbdm zzbdmVar = this.zzeic;
        if (zzbdmVar != null) {
            zzbdmVar.zza(str, predicate);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final void zza(String str, zzaer<? super zzbbw> zzaerVar) {
        zzbdm zzbdmVar = this.zzeic;
        if (zzbdmVar != null) {
            zzbdmVar.zza(str, zzaerVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbw, com.google.android.gms.internal.ads.zzazj
    public final synchronized void zza(String str, zzbax zzbaxVar) {
        if (this.zzehi == null) {
            this.zzehi = new HashMap();
        }
        this.zzehi.put(str, zzbaxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzagn
    public final void zza(String str, Map map) {
        zzagu.zza(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzahk
    public final void zza(String str, JSONObject jSONObject) {
        zzagu.zza(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbda
    public final void zza(boolean z, int i2, String str) {
        this.zzeic.zza(z, i2, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbda
    public final void zza(boolean z, int i2, String str, String str2) {
        this.zzeic.zza(z, i2, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzazj
    public final void zza(boolean z, long j2) {
        HashMap map = new HashMap(2);
        map.put(FirebaseAnalytics.Param.SUCCESS, z ? "1" : "0");
        map.put("duration", Long.toString(j2));
        zzagu.zza(this, "onCacheAccessComplete", map);
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final synchronized zzaaw zzaaa() {
        return this.zzegw;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final void zzaab() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final void zzaac() {
        zzaug.zzdy("Cannot add text view to inner AdWebView");
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final synchronized zzqr zzaad() {
        return this.zzegy;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final boolean zzaae() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final zzrf zzaaf() {
        return this.zzegf;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final boolean zzaag() {
        return ((Boolean) zzuv.zzon().zzd(zzza.zzcth)).booleanValue() && this.zzegf != null && this.zzegg;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final synchronized void zzae(boolean z) {
        if (this.zzegk != null) {
            this.zzegk.zza(this.zzeic.zzyw(), z);
        } else {
            this.zzdia = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzazj
    public final void zzao(boolean z) {
        this.zzeic.zzao(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final void zzaq(IObjectWrapper iObjectWrapper) {
        this.zzeid.set(iObjectWrapper);
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final void zzaq(boolean z) {
        this.zzeic.zzaq(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final synchronized void zzas(boolean z) {
        boolean z2 = z != this.zzego;
        this.zzego = z;
        zzaak();
        if (z2) {
            if (!((Boolean) zzuv.zzon().zzd(zzza.zzcii)).booleanValue() || !this.zzegm.zzaau()) {
                new zzanj(this).zzdp(z ? "expanded" : "default");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final synchronized void zzat(boolean z) {
        this.zzegr = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final synchronized void zzau(boolean z) {
        this.zzegz += z ? 1 : -1;
        if (this.zzegz <= 0 && this.zzegk != null) {
            this.zzegk.zzsw();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdx
    protected final synchronized void zzaw(boolean z) {
        if (z) {
            this.zzeid.set(null);
            this.zzeic.destroy();
            com.google.android.gms.ads.internal.zzq.zzlf();
            zzbay.zzc(this);
            zzaan();
        } else {
            zzaao();
            this.zzehh.zzwg();
            if (this.zzegk != null) {
                this.zzegk.close();
                this.zzegk.onDestroy();
                this.zzegk = null;
            }
            this.zzeid.set(null);
            this.zzeic.destroy();
            com.google.android.gms.ads.internal.zzq.zzlf();
            zzbay.zzc(this);
            zzaan();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final synchronized void zzb(com.google.android.gms.ads.internal.overlay.zzc zzcVar) {
        this.zzehf = zzcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final void zzb(String str, zzaer<? super zzbbw> zzaerVar) {
        zzbdm zzbdmVar = this.zzeic;
        if (zzbdmVar != null) {
            zzbdmVar.zzb(str, zzaerVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final synchronized void zzb(String str, String str2, String str3) {
        super.loadDataWithBaseURL(str, zzbcz.zzf(str2, zzbcz.zzaaq()), "text/html", C.UTF8_NAME, str3);
    }

    @Override // com.google.android.gms.internal.ads.zzagv, com.google.android.gms.internal.ads.zzagn
    public final void zzb(String str, JSONObject jSONObject) {
        zzagu.zzb(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbda
    public final void zzb(boolean z, int i2) {
        this.zzeic.zzb(z, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final void zzbr(Context context) {
        this.zzega.setBaseContext(context);
        this.zzehh.zzh(this.zzega.zzxn());
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final boolean zzc(final boolean z, final int i2) {
        destroy();
        this.zzeen.zza(new zzsg(z, i2) { // from class: com.google.android.gms.internal.ads.zzbdu
            private final int zzdtk;
            private final boolean zzefz;

            {
                this.zzefz = z;
                this.zzdtk = i2;
            }

            @Override // com.google.android.gms.internal.ads.zzsg
            public final void zza(zztl zztlVar) {
                zzbdr.zza(this.zzefz, this.zzdtk, zztlVar);
            }
        });
        this.zzeen.zza(zzsf.zza.EnumC0165zza.ANDROID_WEBVIEW_CRASH);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbdx, com.google.android.gms.internal.ads.zzbdw, com.google.android.gms.internal.ads.zzagv, com.google.android.gms.internal.ads.zzahk
    public final synchronized void zzct(String str) {
        if (isDestroyed()) {
            zzaxi.zzeu("The webview is destroyed. Ignoring action.");
        } else {
            super.zzct(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final void zzdb(int i2) {
        if (i2 == 0) {
            zzzs.zza(this.zzehd.zzpy(), this.zzeat, "aebb2");
        }
        zzaaj();
        if (this.zzehd.zzpy() != null) {
            this.zzehd.zzpy().zzj("close_type", String.valueOf(i2));
        }
        HashMap map = new HashMap(2);
        map.put("closetype", String.valueOf(i2));
        map.put("version", this.zzblk.zzblz);
        zzagu.zza(this, "onhide", map);
    }

    @Override // com.google.android.gms.internal.ads.zzazj
    public final synchronized zzbax zzez(String str) {
        if (this.zzehi == null) {
            return null;
        }
        return this.zzehi.get(str);
    }

    @Override // com.google.android.gms.ads.internal.zzi
    public final synchronized void zzjp() {
        this.zzegs = true;
        if (this.zzegc != null) {
            this.zzegc.zzjp();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzi
    public final synchronized void zzjq() {
        this.zzegs = false;
        if (this.zzegc != null) {
            this.zzegc.zzjq();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzagv
    public final void zzk(String str, String str2) {
        zzagu.zza(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final void zzsu() {
        if (this.zzehb == null) {
            zzzs.zza(this.zzehd.zzpy(), this.zzeat, "aes2");
            this.zzehb = zzzs.zzb(this.zzehd.zzpy());
            this.zzehd.zza("native:view_show", this.zzehb);
        }
        HashMap map = new HashMap(1);
        map.put("version", this.zzblk.zzblz);
        zzagu.zza(this, "onshow", map);
    }

    @Override // com.google.android.gms.internal.ads.zzazj
    public final void zzsv() {
        com.google.android.gms.ads.internal.overlay.zzc zzcVarZzzl = zzzl();
        if (zzcVarZzzl != null) {
            zzcVarZzzl.zzsv();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzazj
    public final zzazc zzxk() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw, com.google.android.gms.internal.ads.zzazj
    public final synchronized zzbco zzxl() {
        return this.zzegt;
    }

    @Override // com.google.android.gms.internal.ads.zzazj
    public final zzzz zzxm() {
        return this.zzeat;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw, com.google.android.gms.internal.ads.zzazj, com.google.android.gms.internal.ads.zzbct
    public final Activity zzxn() {
        return this.zzega.zzxn();
    }

    @Override // com.google.android.gms.internal.ads.zzbbw, com.google.android.gms.internal.ads.zzazj
    public final com.google.android.gms.ads.internal.zza zzxo() {
        return this.zzegd;
    }

    @Override // com.google.android.gms.internal.ads.zzazj
    public final synchronized String zzxp() {
        return this.zzdje;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw, com.google.android.gms.internal.ads.zzazj
    public final zzzy zzxq() {
        return this.zzehd;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw, com.google.android.gms.internal.ads.zzazj, com.google.android.gms.internal.ads.zzbde
    public final zzaxl zzxr() {
        return this.zzblk;
    }

    @Override // com.google.android.gms.internal.ads.zzazj
    public final int zzxs() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzazj
    public final int zzxt() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzazj
    public final synchronized void zzxu() {
        if (this.zzegx != null) {
            this.zzegx.zzqj();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final void zzzi() {
        zzaaj();
        HashMap map = new HashMap(1);
        map.put("version", this.zzblk.zzblz);
        zzagu.zza(this, "onhide", map);
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final void zzzj() {
        HashMap map = new HashMap(3);
        map.put("app_muted", String.valueOf(com.google.android.gms.ads.internal.zzq.zzko().zzot()));
        map.put("app_volume", String.valueOf(com.google.android.gms.ads.internal.zzq.zzko().zzos()));
        map.put("device_volume", String.valueOf(zzave.zzbe(getContext())));
        zzagu.zza(this, "volume", map);
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final Context zzzk() {
        return this.zzega.zzzk();
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final synchronized com.google.android.gms.ads.internal.overlay.zzc zzzl() {
        return this.zzegk;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final synchronized com.google.android.gms.ads.internal.overlay.zzc zzzm() {
        return this.zzehf;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw, com.google.android.gms.internal.ads.zzbdc
    public final synchronized zzbdj zzzn() {
        return this.zzegm;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final synchronized String zzzo() {
        return this.zzabd;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final /* synthetic */ zzbdg zzzp() {
        return this.zzeic;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final WebViewClient zzzq() {
        return this.zzeic;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final synchronized boolean zzzr() {
        return this.zzdia;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw, com.google.android.gms.internal.ads.zzbdb
    public final zzdf zzzs() {
        return this.zzegb;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final IObjectWrapper zzzt() {
        return this.zzeid.get();
    }

    @Override // com.google.android.gms.internal.ads.zzbbw, com.google.android.gms.internal.ads.zzbcw
    public final synchronized boolean zzzu() {
        return this.zzego;
    }

    @Override // com.google.android.gms.internal.ads.zzbdx, com.google.android.gms.internal.ads.zzbbw
    public final void zzzv() {
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final synchronized boolean zzzw() {
        return this.zzegr;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final synchronized boolean zzzx() {
        return this.zzegz > 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final void zzzy() {
        this.zzehh.zzwf();
    }

    @Override // com.google.android.gms.internal.ads.zzbbw
    public final void zzzz() {
        if (this.zzehc == null) {
            this.zzehc = zzzs.zzb(this.zzehd.zzpy());
            this.zzehd.zza("native:view_load", this.zzehc);
        }
    }
}
