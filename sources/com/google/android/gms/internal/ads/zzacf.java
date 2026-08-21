package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzacf extends NativeContentAd {
    private final NativeAd.AdChoicesInfo zzcwi;
    private final zzaca zzcwj;
    private final zzabn zzcwk;
    private final List<NativeAd.Image> zzcwg = new ArrayList();
    private final VideoController zzcen = new VideoController();

    public zzacf(zzaca zzacaVar) {
        zzabi zzabiVarZzqq;
        zzabi zzabkVar;
        IBinder iBinder;
        this.zzcwj = zzacaVar;
        zzabf zzabfVar = null;
        try {
            List images = this.zzcwj.getImages();
            if (images != null) {
                for (Object obj : images) {
                    if (!(obj instanceof IBinder) || (iBinder = (IBinder) obj) == null) {
                        zzabkVar = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                        zzabkVar = iInterfaceQueryLocalInterface instanceof zzabi ? (zzabi) iInterfaceQueryLocalInterface : new zzabk(iBinder);
                    }
                    if (zzabkVar != null) {
                        this.zzcwg.add(new zzabn(zzabkVar));
                    }
                }
            }
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
        try {
            zzabiVarZzqq = this.zzcwj.zzqq();
        } catch (RemoteException e3) {
            zzaxi.zzc("", e3);
        }
        zzabn zzabnVar = zzabiVarZzqq != null ? new zzabn(zzabiVarZzqq) : null;
        this.zzcwk = zzabnVar;
        try {
            if (this.zzcwj.zzqo() != null) {
                zzabfVar = new zzabf(this.zzcwj.zzqo());
            }
        } catch (RemoteException e4) {
            zzaxi.zzc("", e4);
        }
        this.zzcwi = zzabfVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.ads.formats.NativeAd
    /* JADX INFO: renamed from: zzqm, reason: merged with bridge method [inline-methods] */
    public final IObjectWrapper zzjd() {
        try {
            return this.zzcwj.zzqm();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final void destroy() {
        try {
            this.zzcwj.destroy();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.zzcwi;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getAdvertiser() {
        try {
            return this.zzcwj.getAdvertiser();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getBody() {
        try {
            return this.zzcwj.getBody();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getCallToAction() {
        try {
            return this.zzcwj.getCallToAction();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final Bundle getExtras() {
        try {
            return this.zzcwj.getExtras();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getHeadline() {
        try {
            return this.zzcwj.getHeadline();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final List<NativeAd.Image> getImages() {
        return this.zzcwg;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final NativeAd.Image getLogo() {
        return this.zzcwk;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getMediationAdapterClassName() {
        try {
            return this.zzcwj.getMediationAdapterClassName();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final VideoController getVideoController() {
        try {
            if (this.zzcwj.getVideoController() != null) {
                this.zzcen.zza(this.zzcwj.getVideoController());
            }
        } catch (RemoteException e2) {
            zzaxi.zzc("Exception occurred while getting video controller", e2);
        }
        return this.zzcen;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.zzcwj.performClick(bundle);
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.zzcwj.recordImpression(bundle);
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.zzcwj.reportTouchEvent(bundle);
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }
}
