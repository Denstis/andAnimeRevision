package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzbax implements Releasable {
    protected Context mContext;
    protected String zzdvd;
    protected WeakReference<zzazj> zzedf;

    public zzbax(zzazj zzazjVar) {
        this.mContext = zzazjVar.getContext();
        this.zzdvd = com.google.android.gms.ads.internal.zzq.zzkj().zzr(this.mContext, zzazjVar.zzxr().zzblz);
        this.zzedf = new WeakReference<>(zzazjVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(String str, Map<String, String> map) {
        zzazj zzazjVar = this.zzedf.get();
        if (zzazjVar != null) {
            zzazjVar.zza(str, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0087  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String zzff(java.lang.String r1) {
        /*
            Method dump skipped, instruction units count: 230
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbax.zzff(java.lang.String):java.lang.String");
    }

    public abstract void abort();

    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
    }

    protected final void zza(String str, String str2, int i2) {
        zzawy.zzzb.post(new zzbbb(this, str, str2, i2));
    }

    @VisibleForTesting
    public final void zza(String str, String str2, int i2, int i3, long j2, long j3, boolean z, int i4, int i5) {
        zzawy.zzzb.post(new zzbbc(this, str, str2, i2, i3, j2, j3, z, i4, i5));
    }

    @VisibleForTesting
    public final void zza(String str, String str2, long j2, long j3, boolean z, int i2, int i3) {
        zzawy.zzzb.post(new zzbaz(this, str, str2, j2, j3, z, i2, i3));
    }

    @VisibleForTesting
    public final void zza(String str, String str2, String str3, String str4) {
        zzawy.zzzb.post(new zzbbd(this, str, str2, str3, str4));
    }

    @VisibleForTesting
    public final void zzb(String str, String str2, long j2) {
        zzawy.zzzb.post(new zzbbe(this, str, str2, j2));
    }

    protected void zzcs(int i2) {
    }

    protected void zzct(int i2) {
    }

    protected void zzcu(int i2) {
    }

    protected void zzcv(int i2) {
    }

    public boolean zze(String str, String[] strArr) {
        return zzfd(str);
    }

    public abstract boolean zzfd(String str);

    protected String zzfe(String str) {
        zzuv.zzoj();
        return zzawy.zzen(str);
    }
}
