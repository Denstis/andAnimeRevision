package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzyp<T> {
    private final String zzce;
    private final int zzcfp;
    private final T zzcfq;

    private zzyp(int i2, String str, T t) {
        this.zzcfp = i2;
        this.zzce = str;
        this.zzcfq = t;
        zzuv.zzom().zza(this);
    }

    /* synthetic */ zzyp(int i2, String str, Object obj, zzyo zzyoVar) {
        this(i2, str, obj);
    }

    public static zzyp<Float> zza(int i2, String str, float f2) {
        return new zzyt(i2, str, Float.valueOf(f2));
    }

    public static zzyp<Integer> zza(int i2, String str, int i3) {
        return new zzyr(i2, str, Integer.valueOf(i3));
    }

    public static zzyp<Long> zza(int i2, String str, long j2) {
        return new zzyq(i2, str, Long.valueOf(j2));
    }

    public static zzyp<Boolean> zza(int i2, String str, Boolean bool) {
        return new zzyo(i2, str, bool);
    }

    public static zzyp<String> zza(int i2, String str, String str2) {
        return new zzys(i2, str, str2);
    }

    public static zzyp<String> zzb(int i2, String str) {
        zzyp<String> zzypVarZza = zza(i2, str, (String) null);
        zzuv.zzom().zzb(zzypVarZza);
        return zzypVarZza;
    }

    public static zzyp<String> zzc(int i2, String str) {
        zzyp<String> zzypVarZza = zza(i2, str, (String) null);
        zzuv.zzom().zzc(zzypVarZza);
        return zzypVarZza;
    }

    public final String getKey() {
        return this.zzce;
    }

    public final int getSource() {
        return this.zzcfp;
    }

    protected abstract T zza(SharedPreferences sharedPreferences);

    public abstract T zza(Bundle bundle);

    protected abstract T zza(JSONObject jSONObject);

    public abstract void zza(SharedPreferences.Editor editor, T t);

    public final T zzpq() {
        return this.zzcfq;
    }
}
