package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.MuteThisAdListener;
import com.google.android.gms.ads.MuteThisAdReason;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzadl extends UnifiedNativeAd {
    private final zzabn zzcwh;
    private final NativeAd.AdChoicesInfo zzcwi;
    private final zzadg zzcwq;
    private final List<NativeAd.Image> zzcwg = new ArrayList();
    private final VideoController zzcen = new VideoController();
    private final List<MuteThisAdReason> zzcwr = new ArrayList();

    public zzadl(zzadg zzadgVar) {
        zzabi zzabiVarZzqn;
        zzabi zzabkVar;
        IBinder iBinder;
        this.zzcwq = zzadgVar;
        zzabf zzabfVar = null;
        try {
            List images = this.zzcwq.getImages();
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
            List muteThisAdReasons = this.zzcwq.getMuteThisAdReasons();
            if (muteThisAdReasons != null) {
                for (Object obj2 : muteThisAdReasons) {
                    zzwi zzwiVarZzg = obj2 instanceof IBinder ? zzwl.zzg((IBinder) obj2) : null;
                    if (zzwiVarZzg != null) {
                        this.zzcwr.add(new zzwn(zzwiVarZzg));
                    }
                }
            }
        } catch (RemoteException e3) {
            zzaxi.zzc("", e3);
        }
        try {
            zzabiVarZzqn = this.zzcwq.zzqn();
        } catch (RemoteException e4) {
            zzaxi.zzc("", e4);
        }
        zzabn zzabnVar = zzabiVarZzqn != null ? new zzabn(zzabiVarZzqn) : null;
        this.zzcwh = zzabnVar;
        try {
            if (this.zzcwq.zzqo() != null) {
                zzabfVar = new zzabf(this.zzcwq.zzqo());
            }
        } catch (RemoteException e5) {
            zzaxi.zzc("", e5);
        }
        this.zzcwi = zzabfVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    /* JADX INFO: renamed from: zzqm, reason: merged with bridge method [inline-methods] */
    public final IObjectWrapper zzjd() {
        try {
            return this.zzcwq.zzqm();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void cancelUnconfirmedClick() {
        try {
            this.zzcwq.cancelUnconfirmedClick();
        } catch (RemoteException e2) {
            zzaxi.zzc("Failed to cancelUnconfirmedClick", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void destroy() {
        try {
            this.zzcwq.destroy();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void enableCustomClickGesture() {
        try {
            this.zzcwq.zzqw();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.zzcwi;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getAdvertiser() {
        try {
            return this.zzcwq.getAdvertiser();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getBody() {
        try {
            return this.zzcwq.getBody();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getCallToAction() {
        try {
            return this.zzcwq.getCallToAction();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Bundle getExtras() {
        try {
            Bundle extras = this.zzcwq.getExtras();
            if (extras != null) {
                return extras;
            }
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getHeadline() {
        try {
            return this.zzcwq.getHeadline();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final NativeAd.Image getIcon() {
        return this.zzcwh;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final List<NativeAd.Image> getImages() {
        return this.zzcwg;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final UnifiedNativeAd.MediaContent getMediaContent() {
        try {
            if (this.zzcwq.zzqx() != null) {
                return new zzadk(this.zzcwq.zzqx());
            }
            return null;
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getMediationAdapterClassName() {
        try {
            return this.zzcwq.getMediationAdapterClassName();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final List<MuteThisAdReason> getMuteThisAdReasons() {
        return this.zzcwr;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getPrice() {
        try {
            return this.zzcwq.getPrice();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Double getStarRating() {
        try {
            double starRating = this.zzcwq.getStarRating();
            if (starRating == -1.0d) {
                return null;
            }
            return Double.valueOf(starRating);
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getStore() {
        try {
            return this.zzcwq.getStore();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final VideoController getVideoController() {
        try {
            if (this.zzcwq.getVideoController() != null) {
                this.zzcen.zza(this.zzcwq.getVideoController());
            }
        } catch (RemoteException e2) {
            zzaxi.zzc("Exception occurred while getting video controller", e2);
        }
        return this.zzcen;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final boolean isCustomClickGestureEnabled() {
        try {
            return this.zzcwq.isCustomClickGestureEnabled();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final boolean isCustomMuteThisAdEnabled() {
        try {
            return this.zzcwq.isCustomMuteThisAdEnabled();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void muteThisAd(MuteThisAdReason muteThisAdReason) {
        try {
            if (!isCustomMuteThisAdEnabled()) {
                zzaxi.zzes("Ad is not custom mute enabled");
                return;
            }
            if (muteThisAdReason == null) {
                this.zzcwq.zza((zzwi) null);
            } else if (muteThisAdReason instanceof zzwn) {
                this.zzcwq.zza(((zzwn) muteThisAdReason).zzow());
            } else {
                zzaxi.zzes("Use mute reason from UnifiedNativeAd.getMuteThisAdReasons() or null");
            }
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.zzcwq.performClick(bundle);
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void recordCustomClickGesture() {
        try {
            this.zzcwq.recordCustomClickGesture();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.zzcwq.recordImpression(bundle);
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.zzcwq.reportTouchEvent(bundle);
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void setMuteThisAdListener(MuteThisAdListener muteThisAdListener) {
        try {
            this.zzcwq.zza(new zzwj(muteThisAdListener));
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void setUnconfirmedClickListener(UnifiedNativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        try {
            this.zzcwq.zza(new zzadu(unconfirmedClickListener));
        } catch (RemoteException e2) {
            zzaxi.zzc("Failed to setUnconfirmedClickListener", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Object zzji() {
        try {
            IObjectWrapper iObjectWrapperZzqp = this.zzcwq.zzqp();
            if (iObjectWrapperZzqp != null) {
                return ObjectWrapper.unwrap(iObjectWrapperZzqp);
            }
            return null;
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }
}
