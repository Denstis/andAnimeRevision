package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.net.Uri;
import com.google.android.gms.common.util.Clock;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(16)
public final class zzbbm extends zzbax implements zzbao {
    private String zzdym;
    private boolean zzedu;
    private zzbag zzeed;
    private Exception zzeee;
    private boolean zzeef;

    public zzbbm(zzazj zzazjVar, zzazk zzazkVar) {
        super(zzazjVar);
        this.zzeed = new zzbag(zzazjVar.getContext(), zzazkVar);
        this.zzeed.zza(this);
    }

    private static String zzb(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(canonicalName).length() + String.valueOf(message).length());
        sb.append(str);
        sb.append("/");
        sb.append(canonicalName);
        sb.append(":");
        sb.append(message);
        return sb.toString();
    }

    private final void zzfg(String str) {
        synchronized (this) {
            this.zzedu = true;
            notify();
            release();
        }
        String str2 = this.zzdym;
        if (str2 != null) {
            String strZzfe = zzfe(str2);
            Exception exc = this.zzeee;
            if (exc != null) {
                zza(this.zzdym, strZzfe, "badUrl", zzb(str, exc));
            } else {
                zza(this.zzdym, strZzfe, "externalAbort", "Programmatic precache abort.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbax
    public final void abort() {
        zzfg(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbax, com.google.android.gms.common.api.Releasable
    public final void release() {
        zzbag zzbagVar = this.zzeed;
        if (zzbagVar != null) {
            zzbagVar.zza((zzbao) null);
            this.zzeed.release();
        }
        super.release();
    }

    @Override // com.google.android.gms.internal.ads.zzbao
    public final void zza(String str, Exception exc) {
        String str2 = (String) zzuv.zzon().zzd(zzza.zzchd);
        if (str2 != null) {
            List listAsList = Arrays.asList(str2.split(","));
            if (listAsList.contains("all") || listAsList.contains(exc.getClass().getCanonicalName())) {
                return;
            }
        }
        this.zzeee = exc;
        zzaxi.zzd("Precache error", exc);
        zzfg(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbao
    public final void zzb(final boolean z, final long j2) {
        final zzazj zzazjVar = this.zzedf.get();
        if (zzazjVar != null) {
            zzaxn.zzdwm.execute(new Runnable(zzazjVar, z, j2) { // from class: com.google.android.gms.internal.ads.zzbbl
                private final boolean zzdyt;
                private final long zzebv;
                private final zzazj zzeec;

                {
                    this.zzeec = zzazjVar;
                    this.zzdyt = z;
                    this.zzebv = j2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzeec.zza(this.zzdyt, this.zzebv);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbax
    public final void zzcs(int i2) {
        this.zzeed.zzyr().zzcz(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzbax
    public final void zzct(int i2) {
        this.zzeed.zzyr().zzda(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzbax
    public final void zzcu(int i2) {
        this.zzeed.zzyr().zzcu(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzbax
    public final void zzcv(int i2) {
        this.zzeed.zzyr().zzcv(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzbao
    public final void zzcx(int i2) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23, types: [long] */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r31v0 */
    /* JADX WARN: Type inference failed for: r31v1 */
    /* JADX WARN: Type inference failed for: r31v2 */
    /* JADX WARN: Type inference failed for: r33v0, types: [com.google.android.gms.internal.ads.zzbax, com.google.android.gms.internal.ads.zzbbm, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    @Override // com.google.android.gms.internal.ads.zzbax
    public final boolean zze(String str, String[] strArr) throws Throwable {
        ?? r20;
        long j2;
        long j3;
        long j4;
        ?? r1;
        ?? r31;
        this.zzdym = str;
        String strZzfe = zzfe(str);
        ?? r14 = "error";
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i2 = 0; i2 < strArr.length; i2++) {
                try {
                    uriArr[i2] = Uri.parse(strArr[i2]);
                } catch (Exception e2) {
                    e = e2;
                    String message = e.getMessage();
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(message).length());
                    sb.append("Failed to preload url ");
                    sb.append(str);
                    sb.append(" Exception: ");
                    sb.append(message);
                    zzaxi.zzeu(sb.toString());
                    release();
                    zza(str, strZzfe, r14, zzb((String) r14, e));
                    return false;
                }
            }
            this.zzeed.zza(uriArr, this.zzdvd);
            zzazj zzazjVar = this.zzedf.get();
            if (zzazjVar != null) {
                zzazjVar.zza(strZzfe, (zzbax) this);
            }
            Clock clockZzkq = com.google.android.gms.ads.internal.zzq.zzkq();
            long jCurrentTimeMillis = clockZzkq.currentTimeMillis();
            long jLongValue = ((Long) zzuv.zzon().zzd(zzza.zzchk)).longValue();
            long jLongValue2 = ((Long) zzuv.zzon().zzd(zzza.zzchj)).longValue() * 1000;
            long jIntValue = ((Integer) zzuv.zzon().zzd(zzza.zzchi)).intValue();
            long j5 = -1;
            ?? r9 = jLongValue;
            r14 = r14;
            while (true) {
                try {
                    synchronized (this) {
                        try {
                            if (clockZzkq.currentTimeMillis() - jCurrentTimeMillis > jLongValue2) {
                                long j6 = jLongValue2;
                                StringBuilder sb2 = new StringBuilder(47);
                                sb2.append("Timeout reached. Limit: ");
                                sb2.append(j6);
                                sb2.append(" ms");
                                throw new IOException(sb2.toString());
                            }
                            if (this.zzedu) {
                                if (this.zzeee != null) {
                                    throw this.zzeee;
                                }
                                throw new IOException("Abort requested before buffering finished. ");
                            }
                            if (!this.zzeef) {
                                zzgc zzgcVarZzyo = this.zzeed.zzyo();
                                r20 = r14;
                                if (zzgcVarZzyo == null) {
                                    throw new IOException("ExoPlayer was released during preloading.");
                                }
                                try {
                                    long duration = zzgcVarZzyo.getDuration();
                                    if (duration > 0) {
                                        long bufferedPosition = zzgcVarZzyo.getBufferedPosition();
                                        if (bufferedPosition != j5) {
                                            j2 = jIntValue;
                                            j3 = jLongValue2;
                                            r31 = r9;
                                            zza(str, strZzfe, bufferedPosition, duration, bufferedPosition > 0, zzbag.zzyp(), zzbag.zzyq());
                                            j5 = bufferedPosition;
                                        } else {
                                            j2 = jIntValue;
                                            j3 = jLongValue2;
                                            r31 = r9;
                                        }
                                        if (bufferedPosition >= duration) {
                                            zzb(str, strZzfe, duration);
                                            break;
                                        }
                                        if (this.zzeed.getBytesTransferred() >= j2 && bufferedPosition > 0) {
                                            break;
                                        }
                                        j4 = j5;
                                        r1 = r31;
                                    } else {
                                        j2 = jIntValue;
                                        j3 = jLongValue2;
                                        j4 = j5;
                                        r1 = r9;
                                    }
                                    try {
                                        try {
                                            wait(r1);
                                        } catch (Throwable th) {
                                            th = th;
                                            r14 = r1;
                                            throw th;
                                        }
                                    } catch (InterruptedException unused) {
                                        throw new IOException("Wait interrupted.");
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    r14 = r20;
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    }
                    r9 = r1;
                    j5 = j4;
                    r14 = r20;
                    jIntValue = j2;
                    jLongValue2 = j3;
                } catch (Throwable th4) {
                    th = th4;
                }
            }
            return true;
        } catch (Exception e3) {
            e = e3;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbax
    public final boolean zzfd(String str) {
        return zze(str, new String[]{str});
    }

    @Override // com.google.android.gms.internal.ads.zzbax
    protected final String zzfe(String str) {
        String strValueOf = String.valueOf(super.zzfe(str));
        return strValueOf.length() != 0 ? "cache:".concat(strValueOf) : new String("cache:");
    }

    @Override // com.google.android.gms.internal.ads.zzbao
    public final void zzm(int i2, int i3) {
    }

    public final zzbag zzyu() {
        synchronized (this) {
            this.zzeef = true;
            notify();
        }
        this.zzeed.zza((zzbao) null);
        zzbag zzbagVar = this.zzeed;
        this.zzeed = null;
        return zzbagVar;
    }
}
