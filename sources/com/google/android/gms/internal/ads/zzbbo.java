package com.google.android.gms.internal.ads;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.os.Message;
import android.view.View;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.util.PlatformVersion;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(11)
public final class zzbbo extends WebChromeClient {
    private final zzbbw zzczi;

    public zzbbo(zzbbw zzbbwVar) {
        this.zzczi = zzbbwVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static Context zza(WebView webView) {
        if (!(webView instanceof zzbbw)) {
            return webView.getContext();
        }
        zzbbw zzbbwVar = (zzbbw) webView;
        Activity activityZzxn = zzbbwVar.zzxn();
        return activityZzxn != null ? activityZzxn : zzbbwVar.getContext();
    }

    private final boolean zza(Context context, String str, String str2, String str3, String str4, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
        AlertDialog alertDialogCreate;
        com.google.android.gms.ads.internal.zzc zzcVarZzyv;
        try {
        } catch (WindowManager.BadTokenException e2) {
            zzaxi.zzd("Fail to display Dialog.", e2);
        }
        if (this.zzczi != null && this.zzczi.zzzp() != null && this.zzczi.zzzp().zzyv() != null && (zzcVarZzyv = this.zzczi.zzzp().zzyv()) != null && !zzcVarZzyv.zzjk()) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 11 + String.valueOf(str3).length());
            sb.append("window.");
            sb.append(str);
            sb.append("('");
            sb.append(str3);
            sb.append("')");
            zzcVarZzyv.zzbl(sb.toString());
            return false;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(str2);
        if (z) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            TextView textView = new TextView(context);
            textView.setText(str3);
            EditText editText = new EditText(context);
            editText.setText(str4);
            linearLayout.addView(textView);
            linearLayout.addView(editText);
            alertDialogCreate = builder.setView(linearLayout).setPositiveButton(R.string.ok, new zzbbu(jsPromptResult, editText)).setNegativeButton(R.string.cancel, new zzbbr(jsPromptResult)).setOnCancelListener(new zzbbs(jsPromptResult)).create();
        } else {
            alertDialogCreate = builder.setMessage(str3).setPositiveButton(R.string.ok, new zzbbp(jsResult)).setNegativeButton(R.string.cancel, new zzbbq(jsResult)).setOnCancelListener(new zzbbn(jsResult)).create();
        }
        alertDialogCreate.show();
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.webkit.WebChromeClient
    public final void onCloseWindow(WebView webView) {
        String str;
        if (webView instanceof zzbbw) {
            com.google.android.gms.ads.internal.overlay.zzc zzcVarZzzl = ((zzbbw) webView).zzzl();
            if (zzcVarZzzl != null) {
                zzcVarZzzl.close();
                return;
            }
            str = "Tried to close an AdWebView not associated with an overlay.";
        } else {
            str = "Tried to close a WebView that wasn't an AdWebView.";
        }
        zzaxi.zzeu(str);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String strMessage = consoleMessage.message();
        String strSourceId = consoleMessage.sourceId();
        int iLineNumber = consoleMessage.lineNumber();
        StringBuilder sb = new StringBuilder(String.valueOf(strMessage).length() + 19 + String.valueOf(strSourceId).length());
        sb.append("JS: ");
        sb.append(strMessage);
        sb.append(" (");
        sb.append(strSourceId);
        sb.append(":");
        sb.append(iLineNumber);
        sb.append(")");
        String string = sb.toString();
        if (string.contains("Application Cache")) {
            return super.onConsoleMessage(consoleMessage);
        }
        int i2 = zzbbt.zzeei[consoleMessage.messageLevel().ordinal()];
        if (i2 == 1) {
            zzaxi.zzes(string);
        } else if (i2 == 2) {
            zzaxi.zzeu(string);
        } else if (i2 == 3 || i2 == 4 || i2 != 5) {
            zzaxi.zzet(string);
        } else {
            zzaxi.zzdv(string);
        }
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        WebView.WebViewTransport webViewTransport = (WebView.WebViewTransport) message.obj;
        WebView webView2 = new WebView(webView.getContext());
        if (this.zzczi.zzzq() != null) {
            webView2.setWebViewClient(this.zzczi.zzzq());
        }
        webViewTransport.setWebView(webView2);
        message.sendToTarget();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final void onExceededDatabaseQuota(String str, String str2, long j2, long j3, long j4, WebStorage.QuotaUpdater quotaUpdater) {
        long j5 = 5242880 - j4;
        if (j5 <= 0) {
            quotaUpdater.updateQuota(j2);
            return;
        }
        if (j2 != 0) {
            if (j3 == 0) {
                j2 = Math.min(j2 + Math.min(131072L, j5), 1048576L);
            } else if (j3 <= Math.min(1048576 - j2, j5)) {
                j2 += j3;
            }
            j3 = j2;
        } else if (j3 > j5 || j3 > 1048576) {
            j3 = 0;
        }
        quotaUpdater.updateQuota(j3);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0028  */
    @Override // android.webkit.WebChromeClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onGeolocationPermissionsShowPrompt(java.lang.String r4, android.webkit.GeolocationPermissions.Callback r5) {
        /*
            r3 = this;
            if (r5 == 0) goto L2c
            com.google.android.gms.ads.internal.zzq.zzkj()
            com.google.android.gms.internal.ads.zzbbw r0 = r3.zzczi
            android.content.Context r0 = r0.getContext()
            java.lang.String r1 = "android.permission.ACCESS_FINE_LOCATION"
            boolean r0 = com.google.android.gms.internal.ads.zzaul.zzq(r0, r1)
            r1 = 1
            if (r0 != 0) goto L28
            com.google.android.gms.ads.internal.zzq.zzkj()
            com.google.android.gms.internal.ads.zzbbw r0 = r3.zzczi
            android.content.Context r0 = r0.getContext()
            java.lang.String r2 = "android.permission.ACCESS_COARSE_LOCATION"
            boolean r0 = com.google.android.gms.internal.ads.zzaul.zzq(r0, r2)
            if (r0 == 0) goto L26
            goto L28
        L26:
            r0 = 0
            goto L29
        L28:
            r0 = 1
        L29:
            r5.invoke(r4, r0, r1)
        L2c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbbo.onGeolocationPermissionsShowPrompt(java.lang.String, android.webkit.GeolocationPermissions$Callback):void");
    }

    @Override // android.webkit.WebChromeClient
    public final void onHideCustomView() {
        com.google.android.gms.ads.internal.overlay.zzc zzcVarZzzl = this.zzczi.zzzl();
        if (zzcVarZzzl == null) {
            zzaxi.zzeu("Could not get ad overlay when hiding custom view.");
        } else {
            zzcVarZzzl.zzsn();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zza(webView), "alert", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zza(webView), "onBeforeUnload", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zza(webView), "confirm", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return zza(zza(webView), "prompt", str, str2, str3, null, jsPromptResult, true);
    }

    @Override // android.webkit.WebChromeClient
    @TargetApi(21)
    public final void onPermissionRequest(PermissionRequest permissionRequest) {
        if (PlatformVersion.isAtLeastLollipop()) {
            if (!((Boolean) zzuv.zzon().zzd(zzza.zzcjz)).booleanValue()) {
                zzbbw zzbbwVar = this.zzczi;
                if (zzbbwVar == null || zzbbwVar.zzzp() == null || this.zzczi.zzzp().zzzh() == null) {
                    super.onPermissionRequest(permissionRequest);
                    return;
                }
                String[] strArrZza = this.zzczi.zzzp().zzzh().zza(permissionRequest.getResources());
                if (strArrZza.length > 0) {
                    permissionRequest.grant(strArrZza);
                    return;
                } else {
                    permissionRequest.deny();
                    return;
                }
            }
        }
        super.onPermissionRequest(permissionRequest);
    }

    public final void onReachedMaxAppCacheSize(long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
        long j4 = j2 + 131072;
        if (5242880 - j3 < j4) {
            quotaUpdater.updateQuota(0L);
        } else {
            quotaUpdater.updateQuota(j4);
        }
    }

    @Override // android.webkit.WebChromeClient
    @Deprecated
    public final void onShowCustomView(View view, int i2, WebChromeClient.CustomViewCallback customViewCallback) {
        com.google.android.gms.ads.internal.overlay.zzc zzcVarZzzl = this.zzczi.zzzl();
        if (zzcVarZzzl == null) {
            zzaxi.zzeu("Could not get ad overlay when showing custom view.");
            customViewCallback.onCustomViewHidden();
        } else {
            zzcVarZzzl.zza(view, customViewCallback);
            zzcVarZzzl.setRequestedOrientation(i2);
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        onShowCustomView(view, -1, customViewCallback);
    }
}
