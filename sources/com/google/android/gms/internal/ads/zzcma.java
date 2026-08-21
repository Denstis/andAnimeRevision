package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbmk;
import com.google.android.gms.internal.ads.zzbpn;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class zzcma extends zzvk implements com.google.android.gms.ads.internal.overlay.zzy, zzbol, zzqr {
    private final ViewGroup zzfdl;
    private final zzbei zzfza;
    private final Context zzgbp;
    private zzqx zzgbv;
    private zzbib zzgbx;
    protected zzbii zzgby;
    private zzddi<zzbii> zzgbz;
    private AtomicBoolean zzgbu = new AtomicBoolean();
    private final zzcmg zzgbw = new zzcmg();
    private final zzcwg zzgbq = new zzcwg();

    public zzcma(zzbei zzbeiVar, Context context, zzua zzuaVar, String str) {
        this.zzfdl = new FrameLayout(context);
        this.zzfza = zzbeiVar;
        this.zzgbp = context;
        this.zzgbq.zzd(zzuaVar).zzgf(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.google.android.gms.ads.internal.overlay.zzq zza(zzbii zzbiiVar) {
        boolean zZzyw = zzbiiVar.zzyw();
        int iIntValue = ((Integer) zzuv.zzon().zzd(zzza.zzcqk)).intValue();
        com.google.android.gms.ads.internal.overlay.zzp zzpVar = new com.google.android.gms.ads.internal.overlay.zzp();
        zzpVar.size = 50;
        zzpVar.paddingLeft = zZzyw ? iIntValue : 0;
        zzpVar.paddingRight = zZzyw ? 0 : iIntValue;
        zzpVar.paddingTop = 0;
        zzpVar.paddingBottom = iIntValue;
        return new com.google.android.gms.ads.internal.overlay.zzq(this.zzgbp, zzpVar, this);
    }

    static /* synthetic */ zzddi zza(zzcma zzcmaVar, zzddi zzddiVar) {
        zzcmaVar.zzgbz = null;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzald, reason: merged with bridge method [inline-methods] */
    public final void zzalg() {
        if (this.zzgbu.compareAndSet(false, true)) {
            zzbii zzbiiVar = this.zzgby;
            zzrc zzrcVarZzaew = zzbiiVar != null ? zzbiiVar.zzaew() : null;
            if (zzrcVarZzaew != null) {
                try {
                    zzrcVarZzaew.onAppOpenAdClosed();
                } catch (RemoteException e2) {
                    zzaxi.zzc("", e2);
                }
            }
            this.zzfdl.removeAllViews();
            zzbib zzbibVar = this.zzgbx;
            if (zzbibVar != null) {
                com.google.android.gms.ads.internal.zzq.zzkm().zzb(zzbibVar);
            }
            destroy();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final zzua zzale() {
        return zzcwi.zza(this.zzgbp, (List<zzcvu>) Collections.singletonList(this.zzgby.zzaet()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static RelativeLayout.LayoutParams zzb(zzbii zzbiiVar) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(zzbiiVar.zzyw() ? 11 : 9);
        return layoutParams;
    }

    private final synchronized zzbie zzb(zzcwe zzcweVar) {
        return this.zzfza.zzabj().zzb(new zzbmk.zza().zzby(this.zzgbp).zza(zzcweVar).zzafy()).zzb(new zzbpn.zza().zza(this.zzgbw, this.zzfza.zzabb()).zza(this, this.zzfza.zzabb()).zzagm()).zza(new zzbin(this.zzfdl)).zzace();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzc(zzbii zzbiiVar) {
        zzbiiVar.zza(this);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void destroy() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        if (this.zzgby != null) {
            this.zzgby.destroy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final Bundle getAdMetadata() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized String getAdUnitId() {
        return this.zzgbq.zzand();
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized String getMediationAdapterClassName() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized zzwr getVideoController() {
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
            com.google.android.gms.internal.ads.zzddi<com.google.android.gms.internal.ads.zzbii> r0 = r1.zzgbz     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L10
            com.google.android.gms.internal.ads.zzddi<com.google.android.gms.internal.ads.zzbii> r0 = r1.zzgbz     // Catch: java.lang.Throwable -> L12
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcma.isLoading():boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final boolean isReady() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void pause() {
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void resume() {
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void setManualImpressionsEnabled(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void showInterstitial() {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void zza(zzaah zzaahVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzant zzantVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzanz zzanzVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzaqi zzaqiVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzqx zzqxVar) {
        this.zzgbv = zzqxVar;
        this.zzgbw.zzb(zzqxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void zza(zzua zzuaVar) {
        Preconditions.checkMainThread("setAdSize must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzuf zzufVar) {
        this.zzgbq.zzb(zzufVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzux zzuxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzuy zzuyVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzvo zzvoVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzvt zzvtVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void zza(zzvz zzvzVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzwx zzwxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void zza(zzyj zzyjVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized boolean zza(zztx zztxVar) {
        boolean z;
        Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
        if (this.zzgbz != null) {
            z = false;
        } else {
            this.zzgbu = new AtomicBoolean();
            zzcwj.zze(this.zzgbp, zztxVar.zzcca);
            zzbie zzbieVarZzb = zzb(this.zzgbq.zzg(zztxVar).zzane());
            this.zzgbz = zzbieVarZzb.zzaca().zzafs();
            zzdcy.zza(this.zzgbz, new zzcmf(this, zzbieVarZzb), this.zzfza.zzabb());
            z = true;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbol
    public final void zzafz() {
        int iZzaer;
        zzbii zzbiiVar = this.zzgby;
        if (zzbiiVar != null && (iZzaer = zzbiiVar.zzaer()) > 0) {
            this.zzgbx = new zzbib(this.zzfza.zzabc(), com.google.android.gms.ads.internal.zzq.zzkq());
            this.zzgbx.zza(iZzaer, new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcmc
                private final zzcma zzgcb;

                {
                    this.zzgcb = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzgcb.zzalf();
                }
            });
        }
    }

    final /* synthetic */ void zzalf() {
        this.zzfza.zzabb().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcmd
            private final zzcma zzgcb;

            {
                this.zzgcb = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzgcb.zzalg();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zzbm(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final IObjectWrapper zzjr() {
        Preconditions.checkMainThread("getAdFrame must be called on the main UI thread.");
        return ObjectWrapper.wrap(this.zzfdl);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void zzjs() {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized zzua zzjt() {
        Preconditions.checkMainThread("getAdSize must be called on the main UI thread.");
        if (this.zzgby == null) {
            return null;
        }
        return zzcwi.zza(this.zzgbp, (List<zzcvu>) Collections.singletonList(this.zzgby.zzaet()));
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized String zzju() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final zzvt zzjv() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final zzuy zzjw() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzqr
    public final void zzmf() {
        zzalg();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzy
    public final void zzso() {
        zzalg();
    }
}
