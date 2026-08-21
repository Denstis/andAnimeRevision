package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: loaded from: classes.dex */
public final class zzfj {

    @VisibleForTesting
    private final String zza;
    private final String zzb;
    private final String zzc;
    private final long zzd;
    private final /* synthetic */ zzff zze;

    private zzfj(zzff zzffVar, String str, long j2) {
        this.zze = zzffVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkArgument(j2 > 0);
        this.zza = String.valueOf(str).concat(":start");
        this.zzb = String.valueOf(str).concat(":count");
        this.zzc = String.valueOf(str).concat(":value");
        this.zzd = j2;
    }

    private final void zzb() {
        this.zze.zzd();
        long jCurrentTimeMillis = this.zze.zzm().currentTimeMillis();
        SharedPreferences.Editor editorEdit = this.zze.zzg().edit();
        editorEdit.remove(this.zzb);
        editorEdit.remove(this.zzc);
        editorEdit.putLong(this.zza, jCurrentTimeMillis);
        editorEdit.apply();
    }

    private final long zzc() {
        return this.zze.zzg().getLong(this.zza, 0L);
    }

    public final Pair<String, Long> zza() {
        long jAbs;
        this.zze.zzd();
        this.zze.zzd();
        long jZzc = zzc();
        if (jZzc == 0) {
            zzb();
            jAbs = 0;
        } else {
            jAbs = Math.abs(jZzc - this.zze.zzm().currentTimeMillis());
        }
        long j2 = this.zzd;
        if (jAbs < j2) {
            return null;
        }
        if (jAbs > (j2 << 1)) {
            zzb();
            return null;
        }
        String string = this.zze.zzg().getString(this.zzc, null);
        long j3 = this.zze.zzg().getLong(this.zzb, 0L);
        zzb();
        return (string == null || j3 <= 0) ? zzff.zza : new Pair<>(string, Long.valueOf(j3));
    }

    public final void zza(String str, long j2) {
        this.zze.zzd();
        if (zzc() == 0) {
            zzb();
        }
        if (str == null) {
            str = "";
        }
        long j3 = this.zze.zzg().getLong(this.zzb, 0L);
        if (j3 <= 0) {
            SharedPreferences.Editor editorEdit = this.zze.zzg().edit();
            editorEdit.putString(this.zzc, str);
            editorEdit.putLong(this.zzb, 1L);
            editorEdit.apply();
            return;
        }
        long j4 = j3 + 1;
        boolean z = (this.zze.zzp().zzh().nextLong() & Long.MAX_VALUE) < Long.MAX_VALUE / j4;
        SharedPreferences.Editor editorEdit2 = this.zze.zzg().edit();
        if (z) {
            editorEdit2.putString(this.zzc, str);
        }
        editorEdit2.putLong(this.zzb, j4);
        editorEdit2.apply();
    }
}
