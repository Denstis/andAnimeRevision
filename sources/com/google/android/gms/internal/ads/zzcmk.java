package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbmk;
import com.google.android.gms.internal.ads.zzbpn;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzcmk extends zzvk {
    private final Executor zzfbx;
    private final zzbei zzfza;
    private final Context zzgbp;
    private zzddi<zzbrs> zzgbz;
    private zzaah zzgcg;
    private zzbrs zzgcp;
    private final zzcmi zzgcc = new zzcmi();
    private final zzcml zzgce = new zzcml();
    private final zzcui zzgco = new zzcui();
    private final zzcwg zzgbq = new zzcwg();
    private boolean zzgcq = false;

    public zzcmk(zzbei zzbeiVar, Context context, zzua zzuaVar, String str) {
        this.zzfza = zzbeiVar;
        this.zzgbq.zzd(zzuaVar).zzgf(str);
        this.zzfbx = zzbeiVar.zzabb();
        this.zzgbp = context;
    }

    static /* synthetic */ zzddi zza(zzcmk zzcmkVar, zzddi zzddiVar) {
        zzcmkVar.zzgbz = null;
        return null;
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
            com.google.android.gms.internal.ads.zzbrs r0 = r1.zzgcp     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L10
            com.google.android.gms.internal.ads.zzbrs r0 = r1.zzgcp     // Catch: java.lang.Throwable -> L12
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcmk.zzali():boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void destroy() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        if (this.zzgcp != null) {
            this.zzgcp.zzafm().zzbw(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final Bundle getAdMetadata() {
        Preconditions.checkMainThread("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized String getAdUnitId() {
        return this.zzgbq.zzand();
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized String getMediationAdapterClassName() {
        if (this.zzgcp == null) {
            return null;
        }
        return this.zzgcp.getMediationAdapterClassName();
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final zzwr getVideoController() {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0010  */
    @Override // com.google.android.gms.internal.ads.zzvl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized boolean isLoading() {
        /*
            r1 = this;
            monitor-enter(r1)
            com.google.android.gms.internal.ads.zzddi<com.google.android.gms.internal.ads.zzbrs> r0 = r1.zzgbz     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L10
            com.google.android.gms.internal.ads.zzddi<com.google.android.gms.internal.ads.zzbrs> r0 = r1.zzgbz     // Catch: java.lang.Throwable -> L12
            boolean r0 = r0.isDone()     // Catch: java.lang.Throwable -> L12
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcmk.isLoading():boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized boolean isReady() {
        Preconditions.checkMainThread("isLoaded must be called on the main UI thread.");
        return zzali();
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void pause() {
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
        if (this.zzgcp != null) {
            this.zzgcp.zzafm().zzbu(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void resume() {
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
        if (this.zzgcp != null) {
            this.zzgcp.zzafm().zzbv(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void setImmersiveMode(boolean z) {
        Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
        this.zzgcq = z;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void setManualImpressionsEnabled(boolean z) {
        Preconditions.checkMainThread("setManualImpressionsEnabled must be called from the main thread.");
        this.zzgbq.zzbe(z);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void showInterstitial() {
        Preconditions.checkMainThread("showInterstitial must be called on the main UI thread.");
        if (this.zzgcp == null) {
            return;
        }
        if (this.zzgcp.zzags()) {
            this.zzgcp.zzay(this.zzgcq);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void zza(zzaah zzaahVar) {
        Preconditions.checkMainThread("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.zzgcg = zzaahVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzant zzantVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzanz zzanzVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzaqi zzaqiVar) {
        this.zzgco.zzb(zzaqiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzqx zzqxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzua zzuaVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzuf zzufVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzux zzuxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzuy zzuyVar) {
        Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        this.zzgcc.zzc(zzuyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzvo zzvoVar) {
        Preconditions.checkMainThread("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzvt zzvtVar) {
        Preconditions.checkMainThread("setAppEventListener must be called on the main UI thread.");
        this.zzgce.zzb(zzvtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void zza(zzvz zzvzVar) {
        Preconditions.checkMainThread("setCorrelationIdProvider must be called on the main UI thread");
        this.zzgbq.zzc(zzvzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzwx zzwxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void zza(zzyj zzyjVar) {
        this.zzgbq.zzc(zzyjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized boolean zza(zztx zztxVar) {
        boolean z;
        Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
        if (this.zzgbz != null || zzali()) {
            z = false;
        } else {
            zzcwj.zze(this.zzgbp, zztxVar.zzcca);
            this.zzgcp = null;
            zzcwe zzcweVarZzane = this.zzgbq.zzg(zztxVar).zzane();
            zzbpn.zza zzaVar = new zzbpn.zza();
            if (this.zzgco != null) {
                zzaVar.zza((zzbna) this.zzgco, this.zzfza.zzabb()).zza((zzbog) this.zzgco, this.zzfza.zzabb()).zza((zzbnb) this.zzgco, this.zzfza.zzabb());
            }
            zzbso zzbsoVarZzadf = this.zzfza.zzabk().zzd(new zzbmk.zza().zzby(this.zzgbp).zza(zzcweVarZzane).zzafy()).zzd(zzaVar.zza((zzbna) this.zzgcc, this.zzfza.zzabb()).zza((zzbog) this.zzgcc, this.zzfza.zzabb()).zza((zzbnb) this.zzgcc, this.zzfza.zzabb()).zza((zztp) this.zzgcc, this.zzfza.zzabb()).zza(this.zzgce, this.zzfza.zzabb()).zzagm()).zzb(new zzcle(this.zzgcg)).zzadf();
            this.zzgbz = zzbsoVarZzadf.zzaca().zzafs();
            zzdcy.zza(this.zzgbz, new zzcmn(this, zzbsoVarZzadf), this.zzfbx);
            z = true;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zzbm(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final IObjectWrapper zzjr() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zzjs() {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final zzua zzjt() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized String zzju() {
        if (this.zzgcp == null) {
            return null;
        }
        return this.zzgcp.zzju();
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final zzvt zzjv() {
        return this.zzgce.zzalj();
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final zzuy zzjw() {
        return this.zzgcc.zzalh();
    }
}
