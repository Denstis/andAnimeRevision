package com.google.android.gms.internal.ads;

import android.os.Build;
import android.os.ConditionVariable;
import com.google.android.gms.internal.ads.zzbi;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

/* JADX INFO: loaded from: classes.dex */
public class zzda {
    private static final ConditionVariable zzvp = new ConditionVariable();
    protected static volatile zzsi zzvq = null;
    private static volatile Random zzvs = null;
    private zzdx zzvo;
    protected volatile Boolean zzvr;

    public zzda(zzdx zzdxVar) {
        this.zzvo = zzdxVar;
        zzdxVar.zzce().execute(new zzcz(this));
    }

    public static int zzbz() {
        try {
            return Build.VERSION.SDK_INT >= 21 ? ThreadLocalRandom.current().nextInt() : zzca().nextInt();
        } catch (RuntimeException unused) {
            return zzca().nextInt();
        }
    }

    private static Random zzca() {
        if (zzvs == null) {
            synchronized (zzda.class) {
                if (zzvs == null) {
                    zzvs = new Random();
                }
            }
        }
        return zzvs;
    }

    public final void zza(int i2, int i3, long j2) {
        zza(i2, i3, j2, null, null);
    }

    public final void zza(int i2, int i3, long j2, String str) {
        zza(i2, -1, j2, str, null);
    }

    public final void zza(int i2, int i3, long j2, String str, Exception exc) {
        try {
            zzvp.block();
            if (!this.zzvr.booleanValue() || zzvq == null) {
                return;
            }
            zzbi.zza.C0152zza c0152zzaZzc = zzbi.zza.zzr().zzi(this.zzvo.zzlk.getPackageName()).zzc(j2);
            if (str != null) {
                c0152zzaZzc.zzl(str);
            }
            if (exc != null) {
                StringWriter stringWriter = new StringWriter();
                zzdoy.zza(exc, new PrintWriter(stringWriter));
                c0152zzaZzc.zzj(stringWriter.toString()).zzk(exc.getClass().getName());
            }
            zzsm zzsmVarZzf = zzvq.zzf(((zzbi.zza) ((zzdqw) c0152zzaZzc.zzazr())).toByteArray());
            zzsmVarZzf.zzbq(i2);
            if (i3 != -1) {
                zzsmVarZzf.zzbp(i3);
            }
            zzsmVarZzf.zzdh();
        } catch (Exception unused) {
        }
    }
}
