package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class zzbxs extends zzage implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzaav {
    private zzwr zzflj;
    private View zzflo;
    private zzbuj zzfml;
    private boolean zzegn = false;
    private boolean zzfpi = false;

    public zzbxs(zzbuj zzbujVar, zzbur zzburVar) {
        this.zzflo = zzburVar.zzaht();
        this.zzflj = zzburVar.getVideoController();
        this.zzfml = zzbujVar;
        if (zzburVar.zzahu() != null) {
            zzburVar.zzahu().zza(this);
        }
    }

    private static void zza(zzagh zzaghVar, int i2) {
        try {
            zzaghVar.zzcj(i2);
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }

    private final void zzajc() {
        View view = this.zzflo;
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.zzflo);
        }
    }

    private final void zzajd() {
        View view;
        zzbuj zzbujVar = this.zzfml;
        if (zzbujVar == null || (view = this.zzflo) == null) {
            return;
        }
        zzbujVar.zzb(view, Collections.emptyMap(), Collections.emptyMap(), zzbuj.zzx(this.zzflo));
    }

    @Override // com.google.android.gms.internal.ads.zzagf
    public final void destroy() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzajc();
        zzbuj zzbujVar = this.zzfml;
        if (zzbujVar != null) {
            zzbujVar.destroy();
        }
        this.zzfml = null;
        this.zzflo = null;
        this.zzflj = null;
        this.zzegn = true;
    }

    @Override // com.google.android.gms.internal.ads.zzagf
    public final zzwr getVideoController() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (!this.zzegn) {
            return this.zzflj;
        }
        zzaxi.zzes("getVideoController: Instream ad should not be used after destroyed");
        return null;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        zzajd();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        zzajd();
    }

    @Override // com.google.android.gms.internal.ads.zzagf
    public final void zza(IObjectWrapper iObjectWrapper, zzagh zzaghVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (this.zzegn) {
            zzaxi.zzes("Instream ad is destroyed already.");
            zza(zzaghVar, 2);
            return;
        }
        if (this.zzflo == null || this.zzflj == null) {
            String str = this.zzflo == null ? "can not get video view." : "can not get video controller.";
            zzaxi.zzes(str.length() != 0 ? "Instream internal error: ".concat(str) : new String("Instream internal error: "));
            zza(zzaghVar, 0);
            return;
        }
        if (this.zzfpi) {
            zzaxi.zzes("Instream ad should not be used again.");
            zza(zzaghVar, 1);
            return;
        }
        this.zzfpi = true;
        zzajc();
        ((ViewGroup) ObjectWrapper.unwrap(iObjectWrapper)).addView(this.zzflo, new ViewGroup.LayoutParams(-1, -1));
        com.google.android.gms.ads.internal.zzq.zzlg();
        zzayd.zza(this.zzflo, (ViewTreeObserver.OnGlobalLayoutListener) this);
        com.google.android.gms.ads.internal.zzq.zzlg();
        zzayd.zza(this.zzflo, (ViewTreeObserver.OnScrollChangedListener) this);
        zzajd();
        try {
            zzaghVar.zzrc();
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }

    final /* synthetic */ void zzaje() {
        try {
            destroy();
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaav
    public final void zzqj() {
        zzaul.zzdsu.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbxv
            private final zzbxs zzfpk;

            {
                this.zzfpk = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzfpk.zzaje();
            }
        });
    }
}
