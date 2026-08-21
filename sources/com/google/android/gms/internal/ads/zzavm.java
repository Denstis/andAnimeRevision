package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzavm {
    private final Object lock = new Object();
    private String zzdtr = "";
    private String zzdts = "";
    private boolean zzdtt = false;

    @VisibleForTesting
    private String zzdtu = "";

    @VisibleForTesting
    private final void zza(Context context, String str, boolean z, boolean z2) {
        if (context instanceof Activity) {
            zzaul.zzdsu.post(new zzavl(this, context, str, z, z2));
        } else {
            zzaxi.zzet("Can not create dialog without Activity Context");
        }
    }

    private final String zzbf(Context context) {
        String str;
        synchronized (this.lock) {
            if (TextUtils.isEmpty(this.zzdtr)) {
                com.google.android.gms.ads.internal.zzq.zzkj();
                this.zzdtr = zzaul.zzs(context, "debug_signals_id.txt");
                if (TextUtils.isEmpty(this.zzdtr)) {
                    com.google.android.gms.ads.internal.zzq.zzkj();
                    this.zzdtr = zzaul.zzvm();
                    com.google.android.gms.ads.internal.zzq.zzkj();
                    zzaul.zzc(context, "debug_signals_id.txt", this.zzdtr);
                }
            }
            str = this.zzdtr;
        }
        return str;
    }

    private final void zzc(Context context, String str, String str2, String str3) {
        Uri.Builder builderBuildUpon = zzd(context, (String) zzuv.zzon().zzd(zzza.zzcqe), str3, str).buildUpon();
        builderBuildUpon.appendQueryParameter("debugData", str2);
        com.google.android.gms.ads.internal.zzq.zzkj();
        zzaul.zzb(context, str, builderBuildUpon.build().toString());
    }

    private final Uri zzd(Context context, String str, String str2, String str3) {
        Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
        builderBuildUpon.appendQueryParameter("linkedDeviceId", zzbf(context));
        builderBuildUpon.appendQueryParameter("adSlotPath", str2);
        builderBuildUpon.appendQueryParameter("afmaVersion", str3);
        return builderBuildUpon.build();
    }

    @VisibleForTesting
    private final boolean zzf(Context context, String str, String str2) {
        String strZzh = zzh(context, zzd(context, (String) zzuv.zzon().zzd(zzza.zzcqc), str, str2).toString(), str2);
        if (TextUtils.isEmpty(strZzh)) {
            zzaxi.zzdv("Not linked for in app preview.");
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(strZzh.trim());
            String strOptString = jSONObject.optString("gct");
            this.zzdtu = jSONObject.optString("status");
            synchronized (this.lock) {
                this.zzdts = strOptString;
            }
            return true;
        } catch (JSONException e2) {
            zzaxi.zzd("Fail to get in app preview response json.", e2);
            return false;
        }
    }

    @VisibleForTesting
    private final boolean zzg(Context context, String str, String str2) {
        String strZzh = zzh(context, zzd(context, (String) zzuv.zzon().zzd(zzza.zzcqd), str, str2).toString(), str2);
        if (TextUtils.isEmpty(strZzh)) {
            zzaxi.zzdv("Not linked for debug signals.");
            return false;
        }
        try {
            boolean zEquals = "1".equals(new JSONObject(strZzh.trim()).optString("debug_mode"));
            synchronized (this.lock) {
                this.zzdtt = zEquals;
            }
            return zEquals;
        } catch (JSONException e2) {
            zzaxi.zzd("Fail to get debug mode response json.", e2);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0072 A[PHI: r0 r1 r4
      0x0072: PHI (r0v3 'e' java.lang.Throwable) = (r0v2 'e' java.lang.Throwable), (r0v5 'e' java.lang.Throwable) binds: [B:18:0x0070, B:13:0x005c] A[DONT_GENERATE, DONT_INLINE]
      0x0072: PHI (r1v3 java.lang.String) = (r1v2 java.lang.String), (r1v4 java.lang.String) binds: [B:18:0x0070, B:13:0x005c] A[DONT_GENERATE, DONT_INLINE]
      0x0072: PHI (r4v7 java.lang.String) = (r4v5 java.lang.String), (r4v10 java.lang.String) binds: [B:18:0x0070, B:13:0x005c] A[DONT_GENERATE, DONT_INLINE]] */
    @com.google.android.gms.common.util.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String zzh(android.content.Context r3, java.lang.String r4, java.lang.String r5) {
        /*
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            com.google.android.gms.internal.ads.zzaul r1 = com.google.android.gms.ads.internal.zzq.zzkj()
            java.lang.String r5 = r1.zzr(r3, r5)
            java.lang.String r1 = "User-Agent"
            r0.put(r1, r5)
            com.google.android.gms.internal.ads.zzavy r5 = new com.google.android.gms.internal.ads.zzavy
            r5.<init>(r3)
            com.google.android.gms.internal.ads.zzddi r3 = r5.zzc(r4, r0)
            r5 = 1
            com.google.android.gms.internal.ads.zzyp<java.lang.Integer> r0 = com.google.android.gms.internal.ads.zzza.zzcqf     // Catch: java.lang.Exception -> L36 java.lang.InterruptedException -> L51 java.util.concurrent.TimeoutException -> L65
            com.google.android.gms.internal.ads.zzyw r1 = com.google.android.gms.internal.ads.zzuv.zzon()     // Catch: java.lang.Exception -> L36 java.lang.InterruptedException -> L51 java.util.concurrent.TimeoutException -> L65
            java.lang.Object r0 = r1.zzd(r0)     // Catch: java.lang.Exception -> L36 java.lang.InterruptedException -> L51 java.util.concurrent.TimeoutException -> L65
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.Exception -> L36 java.lang.InterruptedException -> L51 java.util.concurrent.TimeoutException -> L65
            int r0 = r0.intValue()     // Catch: java.lang.Exception -> L36 java.lang.InterruptedException -> L51 java.util.concurrent.TimeoutException -> L65
            long r0 = (long) r0     // Catch: java.lang.Exception -> L36 java.lang.InterruptedException -> L51 java.util.concurrent.TimeoutException -> L65
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Exception -> L36 java.lang.InterruptedException -> L51 java.util.concurrent.TimeoutException -> L65
            java.lang.Object r0 = r3.get(r0, r2)     // Catch: java.lang.Exception -> L36 java.lang.InterruptedException -> L51 java.util.concurrent.TimeoutException -> L65
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Exception -> L36 java.lang.InterruptedException -> L51 java.util.concurrent.TimeoutException -> L65
            return r0
        L36:
            r3 = move-exception
            java.lang.String r5 = "Error retriving a response from: "
            java.lang.String r4 = java.lang.String.valueOf(r4)
            int r0 = r4.length()
            if (r0 == 0) goto L48
            java.lang.String r4 = r5.concat(r4)
            goto L4d
        L48:
            java.lang.String r4 = new java.lang.String
            r4.<init>(r5)
        L4d:
            com.google.android.gms.internal.ads.zzaxi.zzc(r4, r3)
            goto L82
        L51:
            r0 = move-exception
            java.lang.String r1 = "Interrupted while retriving a response from: "
            java.lang.String r4 = java.lang.String.valueOf(r4)
            int r2 = r4.length()
            if (r2 == 0) goto L5f
            goto L72
        L5f:
            java.lang.String r4 = new java.lang.String
            r4.<init>(r1)
            goto L7c
        L65:
            r0 = move-exception
            java.lang.String r1 = "Timeout while retriving a response from: "
            java.lang.String r4 = java.lang.String.valueOf(r4)
            int r2 = r4.length()
            if (r2 == 0) goto L77
        L72:
            java.lang.String r4 = r1.concat(r4)
            goto L7c
        L77:
            java.lang.String r4 = new java.lang.String
            r4.<init>(r1)
        L7c:
            com.google.android.gms.internal.ads.zzaxi.zzc(r4, r0)
            r3.cancel(r5)
        L82:
            r3 = 0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzavm.zzh(android.content.Context, java.lang.String, java.lang.String):java.lang.String");
    }

    private final void zzi(Context context, String str, String str2) {
        com.google.android.gms.ads.internal.zzq.zzkj();
        zzaul.zza(context, zzd(context, (String) zzuv.zzon().zzd(zzza.zzcqb), str, str2));
    }

    public final void zza(Context context, String str, String str2, String str3) {
        boolean zZzwa = zzwa();
        if (!zzg(context, str, str2)) {
            zzi(context, str, str2);
            return;
        }
        if (!zZzwa && !TextUtils.isEmpty(str3)) {
            zzc(context, str2, str3, str);
        }
        zzaxi.zzdv("Device is linked for debug signals.");
        zza(context, "The device is successfully linked for troubleshooting.", false, true);
    }

    public final boolean zzb(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || !com.google.android.gms.ads.internal.zzq.zzkt().zzwa()) {
            return false;
        }
        zzaxi.zzdv("Sending troubleshooting signals to the server.");
        zzc(context, str, str2, str3);
        return true;
    }

    public final void zze(Context context, String str, String str2) {
        if (!zzf(context, str, str2)) {
            zza(context, "In-app preview failed to load because of a system error. Please try again later.", true, true);
            return;
        }
        if ("2".equals(this.zzdtu)) {
            zzaxi.zzdv("Creative is not pushed for this device.");
            zza(context, "There was no creative pushed from DFP to the device.", false, false);
        } else if ("1".equals(this.zzdtu)) {
            zzaxi.zzdv("The app is not linked for creative preview.");
            zzi(context, str, str2);
        } else if ("0".equals(this.zzdtu)) {
            zzaxi.zzdv("Device is linked for in app preview.");
            zza(context, "The device is successfully linked for creative preview.", false, true);
        }
    }

    public final String zzvz() {
        String str;
        synchronized (this.lock) {
            str = this.zzdts;
        }
        return str;
    }

    public final boolean zzwa() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzdtt;
        }
        return z;
    }
}
