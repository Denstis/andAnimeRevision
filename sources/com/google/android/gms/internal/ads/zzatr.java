package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class zzatr {
    private zzaxl zzblk;
    private zzpg zzdqm;
    private zzddi<ArrayList<String>> zzdqt;
    private Context zzlk;
    private final Object lock = new Object();
    private final zzauh zzdqn = new zzauh();
    private final zzatz zzdqe = new zzatz(zzuv.zzoo(), this.zzdqn);
    private boolean zzye = false;
    private zzzr zzdqo = null;
    private Boolean zzdqp = null;
    private final AtomicInteger zzdqq = new AtomicInteger(0);
    private final zzatw zzdqr = new zzatw(null);
    private final Object zzdqs = new Object();

    @TargetApi(16)
    private static ArrayList<String> zzal(Context context) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(context.getApplicationInfo().packageName, MpegAudioHeader.MAX_FRAME_SIZE_BYTES);
            if (packageInfo.requestedPermissions != null && packageInfo.requestedPermissionsFlags != null) {
                int i2 = 0;
                while (true) {
                    String[] strArr = packageInfo.requestedPermissions;
                    if (i2 >= strArr.length) {
                        break;
                    }
                    if ((packageInfo.requestedPermissionsFlags[i2] & 2) != 0) {
                        arrayList.add(strArr[i2]);
                    }
                    i2++;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return arrayList;
    }

    public final Context getApplicationContext() {
        return this.zzlk;
    }

    public final Resources getResources() {
        if (this.zzblk.zzdwg) {
            return this.zzlk.getResources();
        }
        try {
            zzaxh.zzbp(this.zzlk).getResources();
            return null;
        } catch (zzaxj e2) {
            zzaxi.zzd("Cannot load resource from dynamite apk or local jar", e2);
            return null;
        }
    }

    public final void zza(Boolean bool) {
        synchronized (this.lock) {
            this.zzdqp = bool;
        }
    }

    public final void zza(Throwable th, String str) {
        zzaod.zzc(this.zzlk, this.zzblk).zza(th, str);
    }

    public final void zzb(Throwable th, String str) {
        zzaod.zzc(this.zzlk, this.zzblk).zza(th, str, ((Float) zzuv.zzon().zzd(zzza.zzcgs)).floatValue());
    }

    @TargetApi(23)
    public final void zzd(Context context, zzaxl zzaxlVar) {
        synchronized (this.lock) {
            if (!this.zzye) {
                this.zzlk = context.getApplicationContext();
                this.zzblk = zzaxlVar;
                com.google.android.gms.ads.internal.zzq.zzkm().zza(this.zzdqe);
                zzzr zzzrVar = null;
                this.zzdqn.zza(this.zzlk, null, true);
                zzaod.zzc(this.zzlk, this.zzblk);
                this.zzdqm = new zzpg(context.getApplicationContext(), this.zzblk);
                com.google.android.gms.ads.internal.zzq.zzks();
                if (((Boolean) zzuv.zzon().zzd(zzza.zzcik)).booleanValue()) {
                    zzzrVar = new zzzr();
                } else {
                    zzaug.zzdy("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
                }
                this.zzdqo = zzzrVar;
                if (this.zzdqo != null) {
                    zzaxr.zza(new zzatt(this).zzut(), "AppState.registerCsiReporter");
                }
                this.zzye = true;
                zzui();
            }
        }
        com.google.android.gms.ads.internal.zzq.zzkj().zzr(context, zzaxlVar.zzblz);
    }

    public final zzzr zzub() {
        zzzr zzzrVar;
        synchronized (this.lock) {
            zzzrVar = this.zzdqo;
        }
        return zzzrVar;
    }

    public final Boolean zzuc() {
        Boolean bool;
        synchronized (this.lock) {
            bool = this.zzdqp;
        }
        return bool;
    }

    public final void zzud() {
        this.zzdqr.zzud();
    }

    public final void zzue() {
        this.zzdqq.incrementAndGet();
    }

    public final void zzuf() {
        this.zzdqq.decrementAndGet();
    }

    public final int zzug() {
        return this.zzdqq.get();
    }

    public final zzaui zzuh() {
        zzauh zzauhVar;
        synchronized (this.lock) {
            zzauhVar = this.zzdqn;
        }
        return zzauhVar;
    }

    public final zzddi<ArrayList<String>> zzui() {
        if (PlatformVersion.isAtLeastJellyBean() && this.zzlk != null) {
            if (!((Boolean) zzuv.zzon().zzd(zzza.zzcne)).booleanValue()) {
                synchronized (this.zzdqs) {
                    if (this.zzdqt != null) {
                        return this.zzdqt;
                    }
                    zzddi<ArrayList<String>> zzddiVarSubmit = zzaxn.zzdwi.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzatu
                        private final zzatr zzdrc;

                        {
                            this.zzdrc = this;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return this.zzdrc.zzuk();
                        }
                    });
                    this.zzdqt = zzddiVarSubmit;
                    return zzddiVarSubmit;
                }
            }
        }
        return zzdcy.zzah(new ArrayList());
    }

    public final zzatz zzuj() {
        return this.zzdqe;
    }

    final /* synthetic */ ArrayList zzuk() {
        return zzal(zzapv.zzaa(this.zzlk));
    }
}
