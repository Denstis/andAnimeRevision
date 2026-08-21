package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzann;
import com.google.android.gms.internal.ads.zztp;

/* JADX INFO: loaded from: classes.dex */
public final class zzu extends zzann {
    private AdOverlayInfoParcel zzdii;
    private Activity zzzr;
    private boolean zzdhb = false;
    private boolean zzdij = false;

    public zzu(Activity activity, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.zzdii = adOverlayInfoParcel;
        this.zzzr = activity;
    }

    private final synchronized void zzsz() {
        if (!this.zzdij) {
            if (this.zzdii.zzdhy != null) {
                this.zzdii.zzdhy.zzsi();
            }
            this.zzdij = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final void onActivityResult(int i2, int i3, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final void onBackPressed() {
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final void onCreate(Bundle bundle) {
        zzo zzoVar;
        boolean z = false;
        if (bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false)) {
            z = true;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzdii;
        if (adOverlayInfoParcel == null || z) {
            this.zzzr.finish();
            return;
        }
        if (bundle == null) {
            zztp zztpVar = adOverlayInfoParcel.zzcbs;
            if (zztpVar != null) {
                zztpVar.onAdClicked();
            }
            if (this.zzzr.getIntent() != null && this.zzzr.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true) && (zzoVar = this.zzdii.zzdhy) != null) {
                zzoVar.zzsj();
            }
        }
        com.google.android.gms.ads.internal.zzq.zzkh();
        Activity activity = this.zzzr;
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzdii;
        if (zzb.zza(activity, adOverlayInfoParcel2.zzdhx, adOverlayInfoParcel2.zzdic)) {
            return;
        }
        this.zzzr.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final void onDestroy() {
        if (this.zzzr.isFinishing()) {
            zzsz();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final void onPause() {
        zzo zzoVar = this.zzdii.zzdhy;
        if (zzoVar != null) {
            zzoVar.onPause();
        }
        if (this.zzzr.isFinishing()) {
            zzsz();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final void onRestart() {
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final void onResume() {
        if (this.zzdhb) {
            this.zzzr.finish();
            return;
        }
        this.zzdhb = true;
        zzo zzoVar = this.zzdii.zzdhy;
        if (zzoVar != null) {
            zzoVar.onResume();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.zzdhb);
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final void onStart() {
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final void onStop() {
        if (this.zzzr.isFinishing()) {
            zzsz();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final void zzag(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final void zzda() {
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final boolean zzsp() {
        return false;
    }
}
