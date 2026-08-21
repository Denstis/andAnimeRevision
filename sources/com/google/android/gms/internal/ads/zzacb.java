package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzacb extends NativeAppInstallAd {
    private final zzabw zzcwf;
    private final zzabn zzcwh;
    private final NativeAd.AdChoicesInfo zzcwi;
    private final List<NativeAd.Image> zzcwg = new ArrayList();
    private final VideoController zzcen = new VideoController();

    public zzacb(zzabw zzabwVar) {
        zzabi zzabiVarZzqn;
        zzabi zzabkVar;
        IBinder iBinder;
        this.zzcwf = zzabwVar;
        zzabf zzabfVar = null;
        try {
            List images = this.zzcwf.getImages();
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
            zzabiVarZzqn = this.zzcwf.zzqn();
        } catch (RemoteException e3) {
            zzaxi.zzc("", e3);
        }
        zzabn zzabnVar = zzabiVarZzqn != null ? new zzabn(zzabiVarZzqn) : null;
        this.zzcwh = zzabnVar;
        try {
            if (this.zzcwf.zzqo() != null) {
                zzabfVar = new zzabf(this.zzcwf.zzqo());
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
            return this.zzcwf.zzqm();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final void destroy() {
        try {
            this.zzcwf.destroy();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.zzcwi;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getBody() {
        try {
            return this.zzcwf.getBody();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getCallToAction() {
        try {
            return this.zzcwf.getCallToAction();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final Bundle getExtras() {
        try {
            return this.zzcwf.getExtras();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getHeadline() {
        try {
            return this.zzcwf.getHeadline();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final NativeAd.Image getIcon() {
        return this.zzcwh;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final List<NativeAd.Image> getImages() {
        return this.zzcwg;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getMediationAdapterClassName() {
        try {
            return this.zzcwf.getMediationAdapterClassName();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getPrice() {
        try {
            return this.zzcwf.getPrice();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final Double getStarRating() {
        try {
            double starRating = this.zzcwf.getStarRating();
            if (starRating == -1.0d) {
                return null;
            }
            return Double.valueOf(starRating);
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getStore() {
        try {
            return this.zzcwf.getStore();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final VideoController getVideoController() {
        try {
            if (this.zzcwf.getVideoController() != null) {
                this.zzcen.zza(this.zzcwf.getVideoController());
            }
        } catch (RemoteException e2) {
            zzaxi.zzc("Exception occurred while getting video controller", e2);
        }
        return this.zzcen;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.zzcwf.performClick(bundle);
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.zzcwf.recordImpression(bundle);
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.zzcwf.reportTouchEvent(bundle);
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }
}
