package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbo;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final class zzes implements Callable {
    private final zzbo.zza.zzb zzaaa;
    private final zzdx zzvo;

    public zzes(zzdx zzdxVar, zzbo.zza.zzb zzbVar) {
        this.zzvo = zzdxVar;
        this.zzaaa = zzbVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: zzcw, reason: merged with bridge method [inline-methods] */
    public final Void call() throws ExecutionException, InterruptedException {
        if (this.zzvo.zzcn() != null) {
            this.zzvo.zzcn().get();
        }
        zzbo.zza zzaVarZzcm = this.zzvo.zzcm();
        if (zzaVarZzcm == null) {
            return null;
        }
        try {
            synchronized (this.zzaaa) {
                zzbo.zza.zzb zzbVar = this.zzaaa;
                byte[] byteArray = zzaVarZzcm.toByteArray();
                zzbVar.zza(byteArray, 0, byteArray.length, zzdqj.zzazb());
            }
            return null;
        } catch (zzdrg unused) {
            return null;
        }
    }
}
