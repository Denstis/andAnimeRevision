package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzcvl extends zzaqe {
    private final zzcwc zzfgu;
    private boolean zzgcq = false;
    private final zzcvb zzgij;
    private final zzcui zzgik;
    private zzbyz zzgil;

    public zzcvl(zzcvb zzcvbVar, zzcui zzcuiVar, zzcwc zzcwcVar) {
        this.zzgij = zzcvbVar;
        this.zzgik = zzcuiVar;
        this.zzfgu = zzcwcVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final synchronized boolean zzali() {
        /*
            r1 = this;
            monitor-enter(r1)
            com.google.android.gms.internal.ads.zzbyz r0 = r1.zzgil     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L10
            com.google.android.gms.internal.ads.zzbyz r0 = r1.zzgil     // Catch: java.lang.Throwable -> L12
            boolean r0 = r0.isClosed()     // Catch: java.lang.Throwable -> L12
            if (r0 != 0) goto L10
            r0 = 1
        Le:
            monitor-exit(r1)
            return r0
        L10:
            r0 = 0
            goto Le
        L12:
            r0 = move-exception
            monitor-exit(r1)
            goto L16
        L15:
            throw r0
        L16:
            goto L15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcvl.zzali():boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void destroy() {
        zzp(null);
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final Bundle getAdMetadata() {
        Preconditions.checkMainThread("getAdMetadata can only be called from the UI thread.");
        zzbyz zzbyzVar = this.zzgil;
        return zzbyzVar != null ? zzbyzVar.getAdMetadata() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final synchronized String getMediationAdapterClassName() {
        if (this.zzgil == null) {
            return null;
        }
        return this.zzgil.getMediationAdapterClassName();
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final boolean isLoaded() {
        Preconditions.checkMainThread("isLoaded must be called on the main UI thread.");
        return zzali();
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void pause() {
        zzn(null);
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void resume() {
        zzo(null);
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void setAppPackageName(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final synchronized void setCustomData(String str) {
        if (((Boolean) zzuv.zzon().zzd(zzza.zzckm)).booleanValue()) {
            Preconditions.checkMainThread("#008 Must be called on the main UI thread.: setCustomData");
            this.zzfgu.zzdoa = str;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final synchronized void setImmersiveMode(boolean z) {
        Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
        this.zzgcq = z;
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final synchronized void setUserId(String str) {
        Preconditions.checkMainThread("setUserId must be called on the main UI thread.");
        this.zzfgu.zzdnz = str;
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final synchronized void show() {
        zzm(null);
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void zza(zzapz zzapzVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
        this.zzgik.zzb(zzapzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void zza(zzaqi zzaqiVar) {
        Preconditions.checkMainThread("setRewardedVideoAdListener can only be called from the UI thread.");
        this.zzgik.zzb(zzaqiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final synchronized void zza(zzaqo zzaqoVar) {
        Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
        if (zzzc.zzck(zzaqoVar.zzbqy)) {
            return;
        }
        if (zzali()) {
            if (!((Boolean) zzuv.zzon().zzd(zzza.zzcrk)).booleanValue()) {
                return;
            }
        }
        zzcvc zzcvcVar = new zzcvc(null);
        this.zzgil = null;
        this.zzgij.zza(zzaqoVar.zzdiu, zzaqoVar.zzbqy, zzcvcVar, new zzcvo(this));
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void zza(zzvo zzvoVar) {
        Preconditions.checkMainThread("setAdMetadataListener can only be called from the UI thread.");
        if (zzvoVar == null) {
            this.zzgik.zza((AdMetadataListener) null);
        } else {
            this.zzgik.zza(new zzcvn(this, zzvoVar));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0019  */
    @Override // com.google.android.gms.internal.ads.zzaqb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized void zzm(com.google.android.gms.dynamic.IObjectWrapper r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            java.lang.String r0 = "showAd must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.checkMainThread(r0)     // Catch: java.lang.Throwable -> L23
            com.google.android.gms.internal.ads.zzbyz r0 = r2.zzgil     // Catch: java.lang.Throwable -> L23
            if (r0 != 0) goto Lc
            monitor-exit(r2)
            return
        Lc:
            if (r3 == 0) goto L19
            java.lang.Object r3 = com.google.android.gms.dynamic.ObjectWrapper.unwrap(r3)     // Catch: java.lang.Throwable -> L23
            boolean r0 = r3 instanceof android.app.Activity     // Catch: java.lang.Throwable -> L23
            if (r0 == 0) goto L19
            android.app.Activity r3 = (android.app.Activity) r3     // Catch: java.lang.Throwable -> L23
            goto L1a
        L19:
            r3 = 0
        L1a:
            com.google.android.gms.internal.ads.zzbyz r0 = r2.zzgil     // Catch: java.lang.Throwable -> L23
            boolean r1 = r2.zzgcq     // Catch: java.lang.Throwable -> L23
            r0.zzb(r1, r3)     // Catch: java.lang.Throwable -> L23
            monitor-exit(r2)
            return
        L23:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcvl.zzm(com.google.android.gms.dynamic.IObjectWrapper):void");
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final synchronized void zzn(IObjectWrapper iObjectWrapper) {
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
        if (this.zzgil != null) {
            this.zzgil.zzafm().zzbu(iObjectWrapper == null ? null : (Context) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final synchronized void zzo(IObjectWrapper iObjectWrapper) {
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
        if (this.zzgil != null) {
            this.zzgil.zzafm().zzbv(iObjectWrapper == null ? null : (Context) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final synchronized void zzp(IObjectWrapper iObjectWrapper) {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        Context context = null;
        this.zzgik.zza((AdMetadataListener) null);
        if (this.zzgil != null) {
            if (iObjectWrapper != null) {
                context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
            }
            this.zzgil.zzafm().zzbw(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final boolean zzpl() {
        zzbyz zzbyzVar = this.zzgil;
        return zzbyzVar != null && zzbyzVar.zzpl();
    }
}
