package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzag;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzq<T> implements Comparable<zzq<T>> {
    private final Object mLock;
    private final zzag.zza zzae;
    private final int zzaf;
    private final String zzag;
    private final int zzah;
    private zzy zzai;
    private Integer zzaj;
    private zzu zzak;
    private boolean zzal;
    private boolean zzam;
    private boolean zzan;
    private boolean zzao;
    private zzad zzap;
    private zzd zzaq;
    private zzs zzar;

    public zzq(int i2, String str, zzy zzyVar) {
        Uri uri;
        String host;
        this.zzae = zzag.zza.zzbl ? new zzag.zza() : null;
        this.mLock = new Object();
        this.zzal = true;
        int iHashCode = 0;
        this.zzam = false;
        this.zzan = false;
        this.zzao = false;
        this.zzaq = null;
        this.zzaf = i2;
        this.zzag = str;
        this.zzai = zzyVar;
        this.zzap = new zzg();
        if (!TextUtils.isEmpty(str) && (uri = Uri.parse(str)) != null && (host = uri.getHost()) != null) {
            iHashCode = host.hashCode();
        }
        this.zzah = iHashCode;
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(Object obj) {
        zzq zzqVar = (zzq) obj;
        zzv zzvVar = zzv.NORMAL;
        return zzvVar == zzvVar ? this.zzaj.intValue() - zzqVar.zzaj.intValue() : zzvVar.ordinal() - zzvVar.ordinal();
    }

    public Map<String, String> getHeaders() {
        return Collections.emptyMap();
    }

    public final int getMethod() {
        return this.zzaf;
    }

    public final String getUrl() {
        return this.zzag;
    }

    public final boolean isCanceled() {
        synchronized (this.mLock) {
        }
        return false;
    }

    public String toString() {
        String strValueOf = String.valueOf(Integer.toHexString(this.zzah));
        String strConcat = strValueOf.length() != 0 ? "0x".concat(strValueOf) : new String("0x");
        isCanceled();
        String str = this.zzag;
        String strValueOf2 = String.valueOf(zzv.NORMAL);
        String strValueOf3 = String.valueOf(this.zzaj);
        StringBuilder sb = new StringBuilder("[ ] ".length() + 3 + String.valueOf(str).length() + String.valueOf(strConcat).length() + String.valueOf(strValueOf2).length() + String.valueOf(strValueOf3).length());
        sb.append("[ ] ");
        sb.append(str);
        sb.append(" ");
        sb.append(strConcat);
        sb.append(" ");
        sb.append(strValueOf2);
        sb.append(" ");
        sb.append(strValueOf3);
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzq<?> zza(zzd zzdVar) {
        this.zzaq = zzdVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzq<?> zza(zzu zzuVar) {
        this.zzak = zzuVar;
        return this;
    }

    protected abstract zzz<T> zza(zzo zzoVar);

    final void zza(int i2) {
        zzu zzuVar = this.zzak;
        if (zzuVar != null) {
            zzuVar.zza(this, i2);
        }
    }

    final void zza(zzs zzsVar) {
        synchronized (this.mLock) {
            this.zzar = zzsVar;
        }
    }

    final void zza(zzz<?> zzzVar) {
        zzs zzsVar;
        synchronized (this.mLock) {
            zzsVar = this.zzar;
        }
        if (zzsVar != null) {
            zzsVar.zza(this, zzzVar);
        }
    }

    protected abstract void zza(T t);

    /* JADX WARN: Multi-variable type inference failed */
    public final zzq<?> zzb(int i2) {
        this.zzaj = Integer.valueOf(i2);
        return this;
    }

    public final void zzb(zzae zzaeVar) {
        zzy zzyVar;
        synchronized (this.mLock) {
            zzyVar = this.zzai;
        }
        if (zzyVar != null) {
            zzyVar.zzc(zzaeVar);
        }
    }

    public final void zzb(String str) {
        if (zzag.zza.zzbl) {
            this.zzae.zza(str, Thread.currentThread().getId());
        }
    }

    public final int zzc() {
        return this.zzah;
    }

    final void zzc(String str) {
        zzu zzuVar = this.zzak;
        if (zzuVar != null) {
            zzuVar.zzf(this);
        }
        if (zzag.zza.zzbl) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new zzt(this, str, id));
            } else {
                this.zzae.zza(str, id);
                this.zzae.zzc(toString());
            }
        }
    }

    public final String zzd() {
        String str = this.zzag;
        int i2 = this.zzaf;
        if (i2 == 0 || i2 == -1) {
            return str;
        }
        String string = Integer.toString(i2);
        StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 1 + String.valueOf(str).length());
        sb.append(string);
        sb.append('-');
        sb.append(str);
        return sb.toString();
    }

    public final zzd zze() {
        return this.zzaq;
    }

    public byte[] zzf() {
        return null;
    }

    public final boolean zzg() {
        return this.zzal;
    }

    public final int zzh() {
        return this.zzap.zza();
    }

    public final zzad zzi() {
        return this.zzap;
    }

    public final void zzj() {
        synchronized (this.mLock) {
            this.zzan = true;
        }
    }

    public final boolean zzk() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzan;
        }
        return z;
    }

    final void zzl() {
        zzs zzsVar;
        synchronized (this.mLock) {
            zzsVar = this.zzar;
        }
        if (zzsVar != null) {
            zzsVar.zza(this);
        }
    }
}
