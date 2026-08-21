package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes.dex */
final class zzcmf implements zzdcz<zzbii> {
    private final /* synthetic */ zzbie zzgch;
    private final /* synthetic */ zzcma zzgci;

    zzcmf(zzcma zzcmaVar, zzbie zzbieVar) {
        this.zzgci = zzcmaVar;
        this.zzgch = zzbieVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final /* synthetic */ void onSuccess(zzbii zzbiiVar) {
        zzbii zzbiiVar2 = zzbiiVar;
        synchronized (this.zzgci) {
            zzcma.zza(this.zzgci, (zzddi) null);
            if (this.zzgci.zzgby != null) {
                this.zzgci.zzgby.destroy();
            }
            this.zzgci.zzgby = zzbiiVar2;
            this.zzgci.zzfdl.removeAllViews();
            this.zzgci.zzfdl.addView(zzbiiVar2.zzaeu(), com.google.android.gms.ads.internal.zzq.zzkl().zzvr());
            com.google.android.gms.ads.internal.overlay.zzq zzqVarZza = this.zzgci.zza(zzbiiVar2);
            zzcma zzcmaVar = this.zzgci;
            RelativeLayout.LayoutParams layoutParamsZzb = zzcma.zzb(zzbiiVar2);
            zzqVarZza.zzae(zzbiiVar2.zzaev());
            this.zzgci.zzfdl.addView(zzqVarZza, layoutParamsZzb);
            this.zzgci.zzc(zzbiiVar2);
            this.zzgci.zzfdl.setMinimumHeight(this.zzgci.zzale().heightPixels);
            this.zzgci.zzfdl.setMinimumWidth(this.zzgci.zzale().widthPixels);
            try {
                this.zzgci.zzgbv.zza(new zzbik(zzbiiVar2, this.zzgci));
            } catch (RemoteException e2) {
                zzaxi.zzc("RemoteException when onAppOpenAdLoaded is called", e2);
            }
            zzbiiVar2.zzafa();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzb(Throwable th) {
        synchronized (this.zzgci) {
            zzcma.zza(this.zzgci, (zzddi) null);
            this.zzgch.zzacb().onAdFailedToLoad(zzccu.zzd(th));
            zzcwj.zzc(th, "AppOpenAdManagerShim.onFailure");
        }
    }
}
