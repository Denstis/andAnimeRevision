package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class zzxb {
    private final zzty zzaax;
    private VideoOptions zzbjz;
    private boolean zzbkg;
    private AppEventListener zzbki;
    private zzvl zzbqx;
    private String zzbqy;
    private final zzaju zzbra;
    private zztp zzcbs;
    private AdListener zzcbv;
    private AdSize[] zzcdc;
    private final AtomicBoolean zzcem;
    private final VideoController zzcen;

    @VisibleForTesting
    private final zzuu zzceo;
    private OnCustomRenderedAdLoadedListener zzcep;
    private ViewGroup zzceq;
    private int zzcer;

    public zzxb(ViewGroup viewGroup) {
        this(viewGroup, null, false, zzty.zzccl, 0);
    }

    public zzxb(ViewGroup viewGroup, int i2) {
        this(viewGroup, null, false, zzty.zzccl, i2);
    }

    public zzxb(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, zzty.zzccl, 0);
    }

    public zzxb(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, int i2) {
        this(viewGroup, attributeSet, false, zzty.zzccl, i2);
    }

    @VisibleForTesting
    private zzxb(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zzty zztyVar, int i2) {
        this(viewGroup, attributeSet, z, zztyVar, null, i2);
    }

    @VisibleForTesting
    private zzxb(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zzty zztyVar, zzvl zzvlVar, int i2) {
        zzua zzuaVarZzoc;
        this.zzbra = new zzaju();
        this.zzcen = new VideoController();
        this.zzceo = new zzxa(this);
        this.zzceq = viewGroup;
        this.zzaax = zztyVar;
        this.zzbqx = null;
        this.zzcem = new AtomicBoolean(false);
        this.zzcer = i2;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zzuh zzuhVar = new zzuh(context, attributeSet);
                this.zzcdc = zzuhVar.zzr(z);
                this.zzbqy = zzuhVar.getAdUnitId();
                if (viewGroup.isInEditMode()) {
                    zzawy zzawyVarZzoj = zzuv.zzoj();
                    AdSize adSize = this.zzcdc[0];
                    int i3 = this.zzcer;
                    if (adSize.equals(AdSize.INVALID)) {
                        zzuaVarZzoc = zzua.zzoc();
                    } else {
                        zzua zzuaVar = new zzua(context, adSize);
                        zzuaVar.zzccp = zzci(i3);
                        zzuaVarZzoc = zzuaVar;
                    }
                    zzawyVarZzoj.zza(viewGroup, zzuaVarZzoc, "Ads by Google");
                }
            } catch (IllegalArgumentException e2) {
                zzuv.zzoj().zza(viewGroup, new zzua(context, AdSize.BANNER), e2.getMessage(), e2.getMessage());
            }
        }
    }

    private static zzua zza(Context context, AdSize[] adSizeArr, int i2) {
        for (AdSize adSize : adSizeArr) {
            if (adSize.equals(AdSize.INVALID)) {
                return zzua.zzoc();
            }
        }
        zzua zzuaVar = new zzua(context, adSizeArr);
        zzuaVar.zzccp = zzci(i2);
        return zzuaVar;
    }

    private static boolean zzci(int i2) {
        return i2 == 1;
    }

    public final void destroy() {
        try {
            if (this.zzbqx != null) {
                this.zzbqx.destroy();
            }
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }

    public final AdListener getAdListener() {
        return this.zzcbv;
    }

    public final AdSize getAdSize() {
        zzua zzuaVarZzjt;
        try {
            if (this.zzbqx != null && (zzuaVarZzjt = this.zzbqx.zzjt()) != null) {
                return zzuaVarZzjt.zzod();
            }
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
        AdSize[] adSizeArr = this.zzcdc;
        if (adSizeArr != null) {
            return adSizeArr[0];
        }
        return null;
    }

    public final AdSize[] getAdSizes() {
        return this.zzcdc;
    }

    public final String getAdUnitId() {
        zzvl zzvlVar;
        if (this.zzbqy == null && (zzvlVar = this.zzbqx) != null) {
            try {
                this.zzbqy = zzvlVar.getAdUnitId();
            } catch (RemoteException e2) {
                zzaxi.zze("#007 Could not call remote method.", e2);
            }
        }
        return this.zzbqy;
    }

    public final AppEventListener getAppEventListener() {
        return this.zzbki;
    }

    public final String getMediationAdapterClassName() {
        try {
            if (this.zzbqx != null) {
                return this.zzbqx.zzju();
            }
            return null;
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
            return null;
        }
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.zzcep;
    }

    public final VideoController getVideoController() {
        return this.zzcen;
    }

    public final VideoOptions getVideoOptions() {
        return this.zzbjz;
    }

    public final boolean isLoading() {
        try {
            if (this.zzbqx != null) {
                return this.zzbqx.isLoading();
            }
            return false;
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
            return false;
        }
    }

    public final void pause() {
        try {
            if (this.zzbqx != null) {
                this.zzbqx.pause();
            }
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }

    public final void recordManualImpression() {
        if (this.zzcem.getAndSet(true)) {
            return;
        }
        try {
            if (this.zzbqx != null) {
                this.zzbqx.zzjs();
            }
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }

    public final void resume() {
        try {
            if (this.zzbqx != null) {
                this.zzbqx.resume();
            }
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }

    public final void setAdListener(AdListener adListener) {
        this.zzcbv = adListener;
        this.zzceo.zza(adListener);
    }

    public final void setAdSizes(AdSize... adSizeArr) {
        if (this.zzcdc != null) {
            throw new IllegalStateException("The ad size can only be set once on AdView.");
        }
        zza(adSizeArr);
    }

    public final void setAdUnitId(String str) {
        if (this.zzbqy != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
        }
        this.zzbqy = str;
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        try {
            this.zzbki = appEventListener;
            if (this.zzbqx != null) {
                this.zzbqx.zza(appEventListener != null ? new zzuc(appEventListener) : null);
            }
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }

    public final void setManualImpressionsEnabled(boolean z) {
        this.zzbkg = z;
        try {
            if (this.zzbqx != null) {
                this.zzbqx.setManualImpressionsEnabled(this.zzbkg);
            }
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
    }

    public final void setVideoOptions(VideoOptions videoOptions) {
        this.zzbjz = videoOptions;
        try {
            if (this.zzbqx != null) {
                this.zzbqx.zza(videoOptions == null ? null : new zzyj(videoOptions));
            }
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }

    public final void zza(zztp zztpVar) {
        try {
            this.zzcbs = zztpVar;
            if (this.zzbqx != null) {
                this.zzbqx.zza(zztpVar != null ? new zzto(zztpVar) : null);
            }
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }

    public final void zza(zzwz zzwzVar) {
        try {
            if (this.zzbqx == null) {
                if ((this.zzcdc == null || this.zzbqy == null) && this.zzbqx == null) {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
                Context context = this.zzceq.getContext();
                zzua zzuaVarZza = zza(context, this.zzcdc, this.zzcer);
                this.zzbqx = "search_v2".equals(zzuaVarZza.zzabd) ? new zzun(zzuv.zzok(), context, zzuaVarZza, this.zzbqy).zzd(context, false) : new zzuj(zzuv.zzok(), context, zzuaVarZza, this.zzbqy, this.zzbra).zzd(context, false);
                this.zzbqx.zza(new zztt(this.zzceo));
                if (this.zzcbs != null) {
                    this.zzbqx.zza(new zzto(this.zzcbs));
                }
                if (this.zzbki != null) {
                    this.zzbqx.zza(new zzuc(this.zzbki));
                }
                if (this.zzcep != null) {
                    this.zzbqx.zza(new zzaai(this.zzcep));
                }
                if (this.zzbjz != null) {
                    this.zzbqx.zza(new zzyj(this.zzbjz));
                }
                this.zzbqx.setManualImpressionsEnabled(this.zzbkg);
                try {
                    IObjectWrapper iObjectWrapperZzjr = this.zzbqx.zzjr();
                    if (iObjectWrapperZzjr != null) {
                        this.zzceq.addView((View) ObjectWrapper.unwrap(iObjectWrapperZzjr));
                    }
                } catch (RemoteException e2) {
                    zzaxi.zze("#007 Could not call remote method.", e2);
                }
            }
            if (this.zzbqx.zza(zzty.zza(this.zzceq.getContext(), zzwzVar))) {
                this.zzbra.zzf(zzwzVar.zzpc());
            }
        } catch (RemoteException e3) {
            zzaxi.zze("#007 Could not call remote method.", e3);
        }
    }

    public final void zza(AdSize... adSizeArr) {
        this.zzcdc = adSizeArr;
        try {
            if (this.zzbqx != null) {
                this.zzbqx.zza(zza(this.zzceq.getContext(), this.zzcdc, this.zzcer));
            }
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
        this.zzceq.requestLayout();
    }

    public final boolean zza(zzvl zzvlVar) {
        if (zzvlVar == null) {
            return false;
        }
        try {
            IObjectWrapper iObjectWrapperZzjr = zzvlVar.zzjr();
            if (iObjectWrapperZzjr == null || ((View) ObjectWrapper.unwrap(iObjectWrapperZzjr)).getParent() != null) {
                return false;
            }
            this.zzceq.addView((View) ObjectWrapper.unwrap(iObjectWrapperZzjr));
            this.zzbqx = zzvlVar;
            return true;
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
            return false;
        }
    }

    public final zzwr zzde() {
        zzvl zzvlVar = this.zzbqx;
        if (zzvlVar == null) {
            return null;
        }
        try {
            return zzvlVar.getVideoController();
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
            return null;
        }
    }
}
