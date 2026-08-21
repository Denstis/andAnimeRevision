package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: loaded from: classes.dex */
public final class zzew extends zzgu {
    private char zza;
    private long zzb;
    private String zzc;
    private final zzey zzd;
    private final zzey zze;
    private final zzey zzf;
    private final zzey zzg;
    private final zzey zzh;
    private final zzey zzi;
    private final zzey zzj;
    private final zzey zzk;
    private final zzey zzl;

    zzew(zzga zzgaVar) {
        super(zzgaVar);
        this.zza = (char) 0;
        this.zzb = -1L;
        this.zzd = new zzey(this, 6, false, false);
        this.zze = new zzey(this, 6, true, false);
        this.zzf = new zzey(this, 6, false, true);
        this.zzg = new zzey(this, 5, false, false);
        this.zzh = new zzey(this, 5, true, false);
        this.zzi = new zzey(this, 5, false, true);
        this.zzj = new zzey(this, 4, false, false);
        this.zzk = new zzey(this, 3, false, false);
        this.zzl = new zzey(this, 2, false, false);
    }

    protected static Object zza(String str) {
        if (str == null) {
            return null;
        }
        return new zzex(str);
    }

    @VisibleForTesting
    private static String zza(boolean z, Object obj) {
        String className;
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        int i2 = 0;
        if (obj instanceof Long) {
            if (!z) {
                return String.valueOf(obj);
            }
            Long l = (Long) obj;
            if (Math.abs(l.longValue()) < 100) {
                return String.valueOf(obj);
            }
            String str = String.valueOf(obj).charAt(0) == '-' ? "-" : "";
            String strValueOf = String.valueOf(Math.abs(l.longValue()));
            long jRound = Math.round(Math.pow(10.0d, strValueOf.length() - 1));
            long jRound2 = Math.round(Math.pow(10.0d, strValueOf.length()) - 1.0d);
            StringBuilder sb = new StringBuilder(str.length() + 43 + str.length());
            sb.append(str);
            sb.append(jRound);
            sb.append("...");
            sb.append(str);
            sb.append(jRound2);
            return sb.toString();
        }
        if (obj instanceof Boolean) {
            return String.valueOf(obj);
        }
        if (!(obj instanceof Throwable)) {
            return obj instanceof zzex ? ((zzex) obj).zza : z ? "-" : String.valueOf(obj);
        }
        Throwable th = (Throwable) obj;
        StringBuilder sb2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
        String strZzb = zzb(zzga.class.getCanonicalName());
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length;
        while (true) {
            if (i2 >= length) {
                break;
            }
            StackTraceElement stackTraceElement = stackTrace[i2];
            if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && zzb(className).equals(strZzb)) {
                sb2.append(": ");
                sb2.append(stackTraceElement);
                break;
            }
            i2++;
        }
        return sb2.toString();
    }

    static String zza(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        if (str == null) {
            str = "";
        }
        String strZza = zza(z, obj);
        String strZza2 = zza(z, obj2);
        String strZza3 = zza(z, obj3);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        if (!TextUtils.isEmpty(strZza)) {
            sb.append(str2);
            sb.append(strZza);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(strZza2)) {
            sb.append(str2);
            sb.append(strZza2);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(strZza3)) {
            sb.append(str2);
            sb.append(strZza3);
        }
        return sb.toString();
    }

    @VisibleForTesting
    private final String zzad() {
        String str;
        String strZzs;
        synchronized (this) {
            if (this.zzc == null) {
                if (this.zzx.zzs() != null) {
                    strZzs = this.zzx.zzs();
                } else {
                    zzt().zzu();
                    strZzs = "FA";
                }
                this.zzc = strZzs;
            }
            str = this.zzc;
        }
        return str;
    }

    private static String zzb(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf == -1 ? str : str.substring(0, iLastIndexOf);
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    @VisibleForTesting
    protected final void zza(int i2, String str) {
        Log.println(i2, zzad(), str);
    }

    protected final void zza(int i2, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        String str2;
        if (!z && zza(i2)) {
            zza(i2, zza(false, str, obj, obj2, obj3));
        }
        if (z2 || i2 < 5) {
            return;
        }
        Preconditions.checkNotNull(str);
        zzft zzftVarZzg = this.zzx.zzg();
        if (zzftVarZzg == null) {
            str2 = "Scheduler not set. Not logging error/warn";
        } else {
            if (zzftVarZzg.zzz()) {
                if (i2 < 0) {
                    i2 = 0;
                }
                zzftVarZzg.zza(new zzev(this, i2 >= 9 ? 8 : i2, str, obj, obj2, obj3));
                return;
            }
            str2 = "Scheduler not initialized. Not logging error/warn";
        }
        zza(6, str2);
    }

    @VisibleForTesting
    protected final boolean zza(int i2) {
        return Log.isLoggable(zzad(), i2);
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzgu
    protected final boolean zze() {
        return false;
    }

    public final zzey zzf() {
        return this.zzd;
    }

    public final zzey zzg() {
        return this.zze;
    }

    public final zzey zzh() {
        return this.zzf;
    }

    public final zzey zzi() {
        return this.zzg;
    }

    public final zzey zzj() {
        return this.zzh;
    }

    public final zzey zzk() {
        return this.zzi;
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzff zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }

    public final zzey zzv() {
        return this.zzj;
    }

    public final zzey zzw() {
        return this.zzk;
    }

    public final zzey zzx() {
        return this.zzl;
    }

    public final String zzy() {
        Pair<String, Long> pairZza = zzs().zzb.zza();
        if (pairZza == null || pairZza == zzff.zza) {
            return null;
        }
        String strValueOf = String.valueOf(pairZza.second);
        String str = (String) pairZza.first;
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 1 + String.valueOf(str).length());
        sb.append(strValueOf);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }
}
