package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class zzaod implements zzaoh {
    private static final Object lock = new Object();

    @VisibleForTesting
    private static zzaoh zzdik;

    @VisibleForTesting
    private static zzaoh zzdil;
    private final Context zzcfz;
    private final Object zzdim;
    private final WeakHashMap<Thread, Boolean> zzdin;
    private final zzaxl zzdio;
    private final ExecutorService zzxr;

    private zzaod(Context context) {
        this(context, zzaxl.zzwo());
    }

    private zzaod(Context context, zzaxl zzaxlVar) {
        this.zzdim = new Object();
        this.zzdin = new WeakHashMap<>();
        this.zzxr = zzczy.zzaoe().zzdn(zzdad.zzgom);
        this.zzcfz = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzdio = zzaxlVar;
    }

    @VisibleForTesting
    private final Uri.Builder zza(String str, String str2, String str3, int i2) {
        boolean zIsCallerInstantApp;
        String packageName;
        try {
            zIsCallerInstantApp = Wrappers.packageManager(this.zzcfz).isCallerInstantApp();
        } catch (Throwable th) {
            zzaxi.zzc("Error fetching instant app info", th);
            zIsCallerInstantApp = false;
        }
        try {
            packageName = this.zzcfz.getPackageName();
        } catch (Throwable unused) {
            zzaxi.zzeu("Cannot obtain package name, proceeding.");
            packageName = "unknown";
        }
        Uri.Builder builderAppendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.col/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(zIsCallerInstantApp)).appendQueryParameter(TtmlNode.ATTR_ID, "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT));
        String str4 = Build.MANUFACTURER;
        String string = Build.MODEL;
        if (!string.startsWith(str4)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str4).length() + 1 + String.valueOf(string).length());
            sb.append(str4);
            sb.append(" ");
            sb.append(string);
            string = sb.toString();
        }
        return builderAppendQueryParameter.appendQueryParameter("device", string).appendQueryParameter("js", this.zzdio.zzblz).appendQueryParameter("appid", packageName).appendQueryParameter("exceptiontype", str).appendQueryParameter("stacktrace", str2).appendQueryParameter("eids", TextUtils.join(",", zzza.zzpr())).appendQueryParameter("exceptionkey", str3).appendQueryParameter("cl", "265976736").appendQueryParameter("rc", "dev").appendQueryParameter("session_id", zzuv.zzoo()).appendQueryParameter("sampling_rate", Integer.toString(i2)).appendQueryParameter("pb_tm", String.valueOf(zzuv.zzon().zzd(zzza.zzcsm)));
    }

    public static zzaoh zzc(Context context, zzaxl zzaxlVar) {
        synchronized (lock) {
            if (zzdil == null) {
                if (((Boolean) zzuv.zzon().zzd(zzza.zzcgo)).booleanValue()) {
                    zzaod zzaodVar = new zzaod(context, zzaxlVar);
                    Thread thread = Looper.getMainLooper().getThread();
                    if (thread != null) {
                        synchronized (zzaodVar.zzdim) {
                            zzaodVar.zzdin.put(thread, true);
                        }
                        thread.setUncaughtExceptionHandler(new zzaoi(zzaodVar, thread.getUncaughtExceptionHandler()));
                    }
                    Thread.setDefaultUncaughtExceptionHandler(new zzaof(zzaodVar, Thread.getDefaultUncaughtExceptionHandler()));
                    zzdil = zzaodVar;
                } else {
                    zzdil = new zzaok();
                }
            }
        }
        return zzdil;
    }

    public static zzaoh zzs(Context context) {
        synchronized (lock) {
            if (zzdik == null) {
                if (((Boolean) zzuv.zzon().zzd(zzza.zzcgo)).booleanValue()) {
                    zzdik = new zzaod(context);
                } else {
                    zzdik = new zzaok();
                }
            }
        }
        return zzdik;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final void zza(java.lang.Thread r10, java.lang.Throwable r11) {
        /*
            r9 = this;
            r10 = 1
            r0 = 0
            if (r11 == 0) goto L40
            r1 = r11
            r2 = 0
            r3 = 0
        L7:
            if (r1 == 0) goto L3b
            java.lang.StackTraceElement[] r4 = r1.getStackTrace()
            int r5 = r4.length
            r6 = r3
            r3 = r2
            r2 = 0
        L11:
            if (r2 >= r5) goto L34
            r7 = r4[r2]
            java.lang.String r8 = r7.getClassName()
            boolean r8 = com.google.android.gms.internal.ads.zzawy.zzeo(r8)
            if (r8 == 0) goto L20
            r3 = 1
        L20:
            java.lang.Class<com.google.android.gms.internal.ads.zzaod> r8 = com.google.android.gms.internal.ads.zzaod.class
            java.lang.String r8 = r8.getName()
            java.lang.String r7 = r7.getClassName()
            boolean r7 = r8.equals(r7)
            if (r7 == 0) goto L31
            r6 = 1
        L31:
            int r2 = r2 + 1
            goto L11
        L34:
            java.lang.Throwable r1 = r1.getCause()
            r2 = r3
            r3 = r6
            goto L7
        L3b:
            if (r2 == 0) goto L40
            if (r3 != 0) goto L40
            goto L41
        L40:
            r10 = 0
        L41:
            if (r10 == 0) goto L4a
            r10 = 1065353216(0x3f800000, float:1.0)
            java.lang.String r0 = ""
            r9.zza(r11, r0, r10)
        L4a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaod.zza(java.lang.Thread, java.lang.Throwable):void");
    }

    @Override // com.google.android.gms.internal.ads.zzaoh
    public final void zza(Throwable th, String str) {
        zza(th, str, 1.0f);
    }

    @Override // com.google.android.gms.internal.ads.zzaoh
    public final void zza(Throwable th, String str, float f2) {
        if (zzawy.zzc(th) == null) {
            return;
        }
        String name = th.getClass().getName();
        StringWriter stringWriter = new StringWriter();
        zzdoy.zza(th, new PrintWriter(stringWriter));
        String string = stringWriter.toString();
        int i2 = 0;
        boolean z = Math.random() < ((double) f2);
        int i3 = f2 > 0.0f ? (int) (1.0f / f2) : 1;
        if (z) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(zza(name, string, str, i3).toString());
            int size = arrayList.size();
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                final String str2 = (String) obj;
                final zzaxm zzaxmVar = new zzaxm();
                this.zzxr.execute(new Runnable(zzaxmVar, str2) { // from class: com.google.android.gms.internal.ads.zzaog
                    private final String zzcyz;
                    private final zzaxm zzdir;

                    {
                        this.zzdir = zzaxmVar;
                        this.zzcyz = str2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzdir.zzei(this.zzcyz);
                    }
                });
            }
        }
    }
}
