package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.Keep;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.DataCollectionDefaultChange;
import com.google.firebase.FirebaseApp;
import com.google.firebase.events.Event;
import com.google.firebase.events.EventHandler;
import com.google.firebase.events.Subscriber;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.platforminfo.UserAgentPublisher;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class FirebaseInstanceId {
    private static final long zza = TimeUnit.HOURS.toSeconds(8);
    private static zzat zzb;

    @VisibleForTesting
    private static ScheduledExecutorService zzc;

    @VisibleForTesting
    private final Executor zzd;
    private final FirebaseApp zze;
    private final zzai zzf;
    private final zzl zzg;
    private final zzan zzh;
    private final zzax zzi;
    private boolean zzj;
    private final zza zzk;

    /* JADX INFO: Access modifiers changed from: private */
    class zza {
        private boolean zzb;
        private final Subscriber zzc;
        private boolean zzd;
        private EventHandler<DataCollectionDefaultChange> zze;
        private Boolean zzf;

        zza(Subscriber subscriber) {
            this.zzc = subscriber;
        }

        private final synchronized void zzb() {
            if (this.zzd) {
                return;
            }
            this.zzb = zzd();
            this.zzf = zzc();
            if (this.zzf == null && this.zzb) {
                this.zze = new EventHandler(this) { // from class: com.google.firebase.iid.zzk
                    private final FirebaseInstanceId.zza zza;

                    {
                        this.zza = this;
                    }

                    @Override // com.google.firebase.events.EventHandler
                    public final void handle(Event event) {
                        FirebaseInstanceId.zza zzaVar = this.zza;
                        synchronized (zzaVar) {
                            if (zzaVar.zza()) {
                                FirebaseInstanceId.this.zzj();
                            }
                        }
                    }
                };
                this.zzc.subscribe(DataCollectionDefaultChange.class, this.zze);
            }
            this.zzd = true;
        }

        private final Boolean zzc() {
            ApplicationInfo applicationInfo;
            Context applicationContext = FirebaseInstanceId.this.zze.getApplicationContext();
            SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = applicationContext.getPackageManager();
                if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(applicationContext.getPackageName(), 128)) == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey("firebase_messaging_auto_init_enabled")) {
                    return null;
                }
                return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }

        private final boolean zzd() {
            try {
                Class.forName("com.google.firebase.messaging.FirebaseMessaging");
                return true;
            } catch (ClassNotFoundException unused) {
                Context applicationContext = FirebaseInstanceId.this.zze.getApplicationContext();
                Intent intent = new Intent("com.google.firebase.MESSAGING_EVENT");
                intent.setPackage(applicationContext.getPackageName());
                ResolveInfo resolveInfoResolveService = applicationContext.getPackageManager().resolveService(intent, 0);
                return (resolveInfoResolveService == null || resolveInfoResolveService.serviceInfo == null) ? false : true;
            }
        }

        final synchronized void zza(boolean z) {
            zzb();
            if (this.zze != null) {
                this.zzc.unsubscribe(DataCollectionDefaultChange.class, this.zze);
                this.zze = null;
            }
            SharedPreferences.Editor editorEdit = FirebaseInstanceId.this.zze.getApplicationContext().getSharedPreferences("com.google.firebase.messaging", 0).edit();
            editorEdit.putBoolean("auto_init", z);
            editorEdit.apply();
            if (z) {
                FirebaseInstanceId.this.zzj();
            }
            this.zzf = Boolean.valueOf(z);
        }

        final synchronized boolean zza() {
            zzb();
            if (this.zzf != null) {
                return this.zzf.booleanValue();
            }
            return this.zzb && FirebaseInstanceId.this.zze.isDataCollectionDefaultEnabled();
        }
    }

    FirebaseInstanceId(FirebaseApp firebaseApp, Subscriber subscriber, UserAgentPublisher userAgentPublisher) {
        this(firebaseApp, new zzai(firebaseApp.getApplicationContext()), com.google.firebase.iid.zza.zzb(), com.google.firebase.iid.zza.zzb(), subscriber, userAgentPublisher);
    }

    private FirebaseInstanceId(FirebaseApp firebaseApp, zzai zzaiVar, Executor executor, Executor executor2, Subscriber subscriber, UserAgentPublisher userAgentPublisher) {
        this.zzj = false;
        if (zzai.zza(firebaseApp) == null) {
            throw new IllegalStateException("FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID");
        }
        synchronized (FirebaseInstanceId.class) {
            if (zzb == null) {
                zzb = new zzat(firebaseApp.getApplicationContext());
            }
        }
        this.zze = firebaseApp;
        this.zzf = zzaiVar;
        this.zzg = new zzl(firebaseApp, zzaiVar, executor, userAgentPublisher);
        this.zzd = executor2;
        this.zzi = new zzax(zzb);
        this.zzk = new zza(subscriber);
        this.zzh = new zzan(executor);
        executor2.execute(new Runnable(this) { // from class: com.google.firebase.iid.zzh
            private final FirebaseInstanceId zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzi();
            }
        });
    }

    public static FirebaseInstanceId getInstance() {
        return getInstance(FirebaseApp.getInstance());
    }

    @Keep
    public static FirebaseInstanceId getInstance(FirebaseApp firebaseApp) {
        return (FirebaseInstanceId) firebaseApp.get(FirebaseInstanceId.class);
    }

    private final Task<InstanceIdResult> zza(final String str, String str2) {
        final String strZzd = zzd(str2);
        return Tasks.forResult(null).continueWithTask(this.zzd, new Continuation(this, str, strZzd) { // from class: com.google.firebase.iid.zzg
            private final FirebaseInstanceId zza;
            private final String zzb;
            private final String zzc;

            {
                this.zza = this;
                this.zzb = str;
                this.zzc = strZzd;
            }

            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.zza.zza(this.zzb, this.zzc, task);
            }
        });
    }

    private final <T> T zza(Task<T> task) throws IOException {
        try {
            return (T) Tasks.await(task, 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | TimeoutException unused) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof IOException) {
                if ("INSTANCE_ID_RESET".equals(cause.getMessage())) {
                    zze();
                }
                throw ((IOException) cause);
            }
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new IOException(e2);
        }
    }

    static void zza(Runnable runnable, long j2) {
        synchronized (FirebaseInstanceId.class) {
            if (zzc == null) {
                zzc = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("FirebaseInstanceId"));
            }
            zzc.schedule(runnable, j2, TimeUnit.SECONDS);
        }
    }

    @VisibleForTesting
    private static zzas zzb(String str, String str2) {
        return zzb.zza("", str, str2);
    }

    private static String zzd(String str) {
        return (str.isEmpty() || str.equalsIgnoreCase("fcm") || str.equalsIgnoreCase("gcm")) ? "*" : str;
    }

    static boolean zzd() {
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            return true;
        }
        return Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseInstanceId", 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzj() {
        if (zza(zzb()) || this.zzi.zza()) {
            zzk();
        }
    }

    private final synchronized void zzk() {
        if (!this.zzj) {
            zza(0L);
        }
    }

    private static String zzl() {
        return zzb.zzb("").zza();
    }

    public void deleteInstanceId() throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        zza(this.zzg.zza(zzl()));
        zze();
    }

    public void deleteToken(String str, String str2) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        String strZzd = zzd(str2);
        zza(this.zzg.zzb(zzl(), str, strZzd));
        zzb.zzb("", str, strZzd);
    }

    public long getCreationTime() {
        return zzb.zzb("").zzb();
    }

    public String getId() {
        zzj();
        return zzl();
    }

    public Task<InstanceIdResult> getInstanceId() {
        return zza(zzai.zza(this.zze), "*");
    }

    @Deprecated
    public String getToken() {
        zzas zzasVarZzb = zzb();
        if (zza(zzasVarZzb)) {
            zzk();
        }
        return zzas.zza(zzasVarZzb);
    }

    public String getToken(String str, String str2) throws IOException {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            return ((InstanceIdResult) zza(zza(str, str2))).getToken();
        }
        throw new IOException("MAIN_THREAD");
    }

    public final synchronized Task<Void> zza(String str) {
        Task<Void> taskZza;
        taskZza = this.zzi.zza(str);
        zzk();
        return taskZza;
    }

    final /* synthetic */ Task zza(final String str, final String str2, Task task) {
        final String strZzl = zzl();
        zzas zzasVarZzb = zzb(str, str2);
        return !zza(zzasVarZzb) ? Tasks.forResult(new zzu(strZzl, zzasVarZzb.zza)) : this.zzh.zza(str, str2, new zzap(this, strZzl, str, str2) { // from class: com.google.firebase.iid.zzj
            private final FirebaseInstanceId zza;
            private final String zzb;
            private final String zzc;
            private final String zzd;

            {
                this.zza = this;
                this.zzb = strZzl;
                this.zzc = str;
                this.zzd = str2;
            }

            @Override // com.google.firebase.iid.zzap
            public final Task zza() {
                return this.zza.zza(this.zzb, this.zzc, this.zzd);
            }
        });
    }

    final /* synthetic */ Task zza(final String str, final String str2, final String str3) {
        return this.zzg.zza(str, str2, str3).onSuccessTask(this.zzd, new SuccessContinuation(this, str2, str3, str) { // from class: com.google.firebase.iid.zzi
            private final FirebaseInstanceId zza;
            private final String zzb;
            private final String zzc;
            private final String zzd;

            {
                this.zza = this;
                this.zzb = str2;
                this.zzc = str3;
                this.zzd = str;
            }

            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return this.zza.zza(this.zzb, this.zzc, this.zzd, (String) obj);
            }
        });
    }

    final /* synthetic */ Task zza(String str, String str2, String str3, String str4) {
        zzb.zza("", str, str2, str4, this.zzf.zzb());
        return Tasks.forResult(new zzu(str3, str4));
    }

    final FirebaseApp zza() {
        return this.zze;
    }

    final synchronized void zza(long j2) {
        zza(new zzav(this, this.zzf, this.zzi, Math.min(Math.max(30L, j2 << 1), zza)), j2);
        this.zzj = true;
    }

    final synchronized void zza(boolean z) {
        this.zzj = z;
    }

    final boolean zza(zzas zzasVar) {
        return zzasVar == null || zzasVar.zzb(this.zzf.zzb());
    }

    final zzas zzb() {
        return zzb(zzai.zza(this.zze), "*");
    }

    final void zzb(String str) throws IOException {
        zzas zzasVarZzb = zzb();
        if (zza(zzasVarZzb)) {
            throw new IOException("token not available");
        }
        zza(this.zzg.zzc(zzl(), zzasVarZzb.zza, str));
    }

    @VisibleForTesting
    public final void zzb(boolean z) {
        this.zzk.zza(z);
    }

    final String zzc() {
        return getToken(zzai.zza(this.zze), "*");
    }

    final void zzc(String str) throws IOException {
        zzas zzasVarZzb = zzb();
        if (zza(zzasVarZzb)) {
            throw new IOException("token not available");
        }
        zza(this.zzg.zzd(zzl(), zzasVarZzb.zza, str));
    }

    final synchronized void zze() {
        zzb.zzb();
        if (this.zzk.zza()) {
            zzk();
        }
    }

    final boolean zzf() {
        return this.zzf.zza() != 0;
    }

    final void zzg() {
        zzb.zzc("");
        zzk();
    }

    @VisibleForTesting
    public final boolean zzh() {
        return this.zzk.zza();
    }

    final /* synthetic */ void zzi() {
        if (this.zzk.zza()) {
            zzj();
        }
    }
}
