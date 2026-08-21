package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(14)
public final class zzpz extends Thread {
    private final Object lock;
    private boolean started;
    private final int zzboi;
    private final int zzbok;
    private final boolean zzbol;
    private boolean zzbpi;
    private boolean zzbpj;
    private final zzpw zzbpk;
    private final int zzbpl;
    private final int zzbpm;
    private final int zzbpn;
    private final int zzbpo;
    private final int zzbpp;
    private final int zzbpq;
    private final String zzbpr;
    private final boolean zzbps;
    private final boolean zzbpt;

    public zzpz() {
        this(new zzpw());
    }

    @VisibleForTesting
    private zzpz(zzpw zzpwVar) {
        this.started = false;
        this.zzbpi = false;
        this.zzbpj = false;
        this.zzbpk = zzpwVar;
        this.lock = new Object();
        this.zzboi = ((Integer) zzuv.zzon().zzd(zzza.zzcio)).intValue();
        this.zzbpm = ((Integer) zzuv.zzon().zzd(zzza.zzcip)).intValue();
        this.zzbok = ((Integer) zzuv.zzon().zzd(zzza.zzciq)).intValue();
        this.zzbpn = ((Integer) zzuv.zzon().zzd(zzza.zzcir)).intValue();
        this.zzbpo = ((Integer) zzuv.zzon().zzd(zzza.zzcit)).intValue();
        this.zzbpp = ((Integer) zzuv.zzon().zzd(zzza.zzciu)).intValue();
        this.zzbpq = ((Integer) zzuv.zzon().zzd(zzza.zzciv)).intValue();
        this.zzbpl = ((Integer) zzuv.zzon().zzd(zzza.zzcis)).intValue();
        this.zzbpr = (String) zzuv.zzon().zzd(zzza.zzcix);
        this.zzbps = ((Boolean) zzuv.zzon().zzd(zzza.zzciy)).booleanValue();
        this.zzbol = ((Boolean) zzuv.zzon().zzd(zzza.zzcjc)).booleanValue();
        this.zzbpt = ((Boolean) zzuv.zzon().zzd(zzza.zzcjd)).booleanValue();
        setName("ContentFetchTask");
    }

    @VisibleForTesting
    private final zzqd zza(View view, zzpt zzptVar) {
        boolean z;
        if (view == null) {
            return new zzqd(this, 0, 0);
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (TextUtils.isEmpty(text)) {
                return new zzqd(this, 0, 0);
            }
            zzptVar.zzb(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
            return new zzqd(this, 1, 0);
        }
        if ((view instanceof WebView) && !(view instanceof zzbbw)) {
            WebView webView = (WebView) view;
            if (PlatformVersion.isAtLeastKitKat()) {
                zzptVar.zzlq();
                webView.post(new zzqb(this, zzptVar, webView, globalVisibleRect));
                z = true;
            } else {
                z = false;
            }
            return z ? new zzqd(this, 0, 1) : new zzqd(this, 0, 0);
        }
        if (!(view instanceof ViewGroup)) {
            return new zzqd(this, 0, 0);
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
            zzqd zzqdVarZza = zza(viewGroup.getChildAt(i4), zzptVar);
            i2 += zzqdVarZza.zzbqa;
            i3 += zzqdVarZza.zzbqb;
        }
        return new zzqd(this, i2, i3);
    }

    @VisibleForTesting
    private static boolean zzlv() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        try {
            Context context = com.google.android.gms.ads.internal.zzq.zzkm().getContext();
            if (context == null) {
                return false;
            }
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    if (runningAppProcessInfo.importance != 100 || keyguardManager.inKeyguardRestrictedInputMode()) {
                        return false;
                    }
                    PowerManager powerManager = (PowerManager) context.getSystemService("power");
                    return powerManager == null ? false : powerManager.isScreenOn();
                }
            }
            return false;
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzq.zzkn().zza(th, "ContentFetchTask.isInForeground");
            return false;
        }
    }

    private final void zzlx() {
        synchronized (this.lock) {
            this.zzbpi = true;
            boolean z = this.zzbpi;
            StringBuilder sb = new StringBuilder(42);
            sb.append("ContentFetchThread: paused, mPause = ");
            sb.append(z);
            zzaxi.zzdv(sb.toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0082 A[EXC_TOP_SPLITTER, LOOP:1: B:48:0x0082->B:53:0x0082, LOOP_START, SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            r4 = this;
        L0:
            boolean r0 = zzlv()     // Catch: java.lang.Exception -> L69 java.lang.InterruptedException -> L79
            if (r0 == 0) goto L5a
            com.google.android.gms.internal.ads.zzpv r0 = com.google.android.gms.ads.internal.zzq.zzkm()     // Catch: java.lang.Exception -> L69 java.lang.InterruptedException -> L79
            android.app.Activity r0 = r0.getActivity()     // Catch: java.lang.Exception -> L69 java.lang.InterruptedException -> L79
            if (r0 != 0) goto L19
            java.lang.String r0 = "ContentFetchThread: no activity. Sleeping."
            com.google.android.gms.internal.ads.zzaxi.zzdv(r0)     // Catch: java.lang.Exception -> L69 java.lang.InterruptedException -> L79
        L15:
            r4.zzlx()     // Catch: java.lang.Exception -> L69 java.lang.InterruptedException -> L79
            goto L60
        L19:
            if (r0 == 0) goto L60
            r1 = 0
            android.view.Window r2 = r0.getWindow()     // Catch: java.lang.Exception -> L3d
            if (r2 == 0) goto L4c
            android.view.Window r2 = r0.getWindow()     // Catch: java.lang.Exception -> L3d
            android.view.View r2 = r2.getDecorView()     // Catch: java.lang.Exception -> L3d
            if (r2 == 0) goto L4c
            android.view.Window r0 = r0.getWindow()     // Catch: java.lang.Exception -> L3d
            android.view.View r0 = r0.getDecorView()     // Catch: java.lang.Exception -> L3d
            r2 = 16908290(0x1020002, float:2.3877235E-38)
            android.view.View r0 = r0.findViewById(r2)     // Catch: java.lang.Exception -> L3d
            r1 = r0
            goto L4c
        L3d:
            r0 = move-exception
            com.google.android.gms.internal.ads.zzatr r2 = com.google.android.gms.ads.internal.zzq.zzkn()     // Catch: java.lang.Exception -> L69 java.lang.InterruptedException -> L79
            java.lang.String r3 = "ContentFetchTask.extractContent"
            r2.zza(r0, r3)     // Catch: java.lang.Exception -> L69 java.lang.InterruptedException -> L79
            java.lang.String r0 = "Failed getting root view of activity. Content not extracted."
            com.google.android.gms.internal.ads.zzaxi.zzdv(r0)     // Catch: java.lang.Exception -> L69 java.lang.InterruptedException -> L79
        L4c:
            if (r1 == 0) goto L60
            if (r1 != 0) goto L51
            goto L60
        L51:
            com.google.android.gms.internal.ads.zzqc r0 = new com.google.android.gms.internal.ads.zzqc     // Catch: java.lang.Exception -> L69 java.lang.InterruptedException -> L79
            r0.<init>(r4, r1)     // Catch: java.lang.Exception -> L69 java.lang.InterruptedException -> L79
            r1.post(r0)     // Catch: java.lang.Exception -> L69 java.lang.InterruptedException -> L79
            goto L60
        L5a:
            java.lang.String r0 = "ContentFetchTask: sleeping"
            com.google.android.gms.internal.ads.zzaxi.zzdv(r0)     // Catch: java.lang.Exception -> L69 java.lang.InterruptedException -> L79
            goto L15
        L60:
            int r0 = r4.zzbpl     // Catch: java.lang.Exception -> L69 java.lang.InterruptedException -> L79
            int r0 = r0 * 1000
            long r0 = (long) r0     // Catch: java.lang.Exception -> L69 java.lang.InterruptedException -> L79
            java.lang.Thread.sleep(r0)     // Catch: java.lang.Exception -> L69 java.lang.InterruptedException -> L79
            goto L7f
        L69:
            r0 = move-exception
            java.lang.String r1 = "Error in ContentFetchTask"
            com.google.android.gms.internal.ads.zzaxi.zzc(r1, r0)
            com.google.android.gms.internal.ads.zzatr r1 = com.google.android.gms.ads.internal.zzq.zzkn()
            java.lang.String r2 = "ContentFetchTask.run"
            r1.zza(r0, r2)
            goto L7f
        L79:
            r0 = move-exception
            java.lang.String r1 = "Error in ContentFetchTask"
            com.google.android.gms.internal.ads.zzaxi.zzc(r1, r0)
        L7f:
            java.lang.Object r0 = r4.lock
            monitor-enter(r0)
        L82:
            boolean r1 = r4.zzbpi     // Catch: java.lang.Throwable -> L94
            if (r1 == 0) goto L91
            java.lang.String r1 = "ContentFetchTask: waiting"
            com.google.android.gms.internal.ads.zzaxi.zzdv(r1)     // Catch: java.lang.InterruptedException -> L82 java.lang.Throwable -> L94
            java.lang.Object r1 = r4.lock     // Catch: java.lang.InterruptedException -> L82 java.lang.Throwable -> L94
            r1.wait()     // Catch: java.lang.InterruptedException -> L82 java.lang.Throwable -> L94
            goto L82
        L91:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L94
            goto L0
        L94:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L94
            goto L98
        L97:
            throw r1
        L98:
            goto L97
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpz.run():void");
    }

    public final void wakeup() {
        synchronized (this.lock) {
            this.zzbpi = false;
            this.lock.notifyAll();
            zzaxi.zzdv("ContentFetchThread: wakeup");
        }
    }

    @VisibleForTesting
    final void zza(zzpt zzptVar, WebView webView, String str, boolean z) {
        zzptVar.zzlp();
        try {
            if (!TextUtils.isEmpty(str)) {
                String strOptString = new JSONObject(str).optString(MimeTypes.BASE_TYPE_TEXT);
                if (this.zzbps || TextUtils.isEmpty(webView.getTitle())) {
                    zzptVar.zza(strOptString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    String title = webView.getTitle();
                    StringBuilder sb = new StringBuilder(String.valueOf(title).length() + 1 + String.valueOf(strOptString).length());
                    sb.append(title);
                    sb.append("\n");
                    sb.append(strOptString);
                    zzptVar.zza(sb.toString(), z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (zzptVar.zzlk()) {
                this.zzbpk.zzb(zzptVar);
            }
        } catch (JSONException unused) {
            zzaxi.zzdv("Json string may be malformed.");
        } catch (Throwable th) {
            zzaxi.zzb("Failed to get webview content.", th);
            com.google.android.gms.ads.internal.zzq.zzkn().zza(th, "ContentFetchTask.processWebViewContent");
        }
    }

    @VisibleForTesting
    final void zzi(View view) {
        try {
            zzpt zzptVar = new zzpt(this.zzboi, this.zzbpm, this.zzbok, this.zzbpn, this.zzbpo, this.zzbpp, this.zzbpq, this.zzbol);
            Context context = com.google.android.gms.ads.internal.zzq.zzkm().getContext();
            if (context != null && !TextUtils.isEmpty(this.zzbpr)) {
                String str = (String) view.getTag(context.getResources().getIdentifier((String) zzuv.zzon().zzd(zzza.zzciw), TtmlNode.ATTR_ID, context.getPackageName()));
                if (str != null && str.equals(this.zzbpr)) {
                    return;
                }
            }
            zzqd zzqdVarZza = zza(view, zzptVar);
            zzptVar.zzls();
            if (zzqdVarZza.zzbqa == 0 && zzqdVarZza.zzbqb == 0) {
                return;
            }
            if (zzqdVarZza.zzbqb == 0 && zzptVar.zzlt() == 0) {
                return;
            }
            if (zzqdVarZza.zzbqb == 0 && this.zzbpk.zza(zzptVar)) {
                return;
            }
            this.zzbpk.zzc(zzptVar);
        } catch (Exception e2) {
            zzaxi.zzc("Exception in fetchContentOnUIThread", e2);
            com.google.android.gms.ads.internal.zzq.zzkn().zza(e2, "ContentFetchTask.fetchContent");
        }
    }

    public final void zzlu() {
        synchronized (this.lock) {
            if (this.started) {
                zzaxi.zzdv("Content hash thread already started, quiting...");
            } else {
                this.started = true;
                start();
            }
        }
    }

    public final zzpt zzlw() {
        return this.zzbpk.zzn(this.zzbpt);
    }

    public final boolean zzly() {
        return this.zzbpi;
    }
}
