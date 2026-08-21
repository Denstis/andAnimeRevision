package com.google.android.gms.ads.formats;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzabm;
import com.google.android.gms.internal.ads.zzaxi;
import com.google.android.gms.internal.ads.zzuv;
import com.google.android.gms.internal.ads.zzza;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class NativeAdView extends FrameLayout {
    private final FrameLayout zzbkb;
    private final zzabm zzbkc;

    public NativeAdView(Context context) {
        super(context);
        this.zzbkb = zzd(context);
        this.zzbkc = zzjf();
    }

    public NativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zzbkb = zzd(context);
        this.zzbkc = zzjf();
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.zzbkb = zzd(context);
        this.zzbkc = zzjf();
    }

    @TargetApi(21)
    public NativeAdView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.zzbkb = zzd(context);
        this.zzbkc = zzjf();
    }

    private final FrameLayout zzd(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    private final zzabm zzjf() {
        Preconditions.checkNotNull(this.zzbkb, "createDelegate must be called after mOverlayFrame has been created");
        if (isInEditMode()) {
            return null;
        }
        return zzuv.zzok().zza(this.zzbkb.getContext(), this, this.zzbkb);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
        super.bringChildToFront(this.zzbkb);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void bringChildToFront(View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.zzbkb;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    public void destroy() {
        try {
            this.zzbkc.destroy();
        } catch (RemoteException e2) {
            zzaxi.zzc("Unable to destroy native ad view", e2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        zzabm zzabmVar;
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcnp)).booleanValue() && (zzabmVar = this.zzbkc) != null) {
            try {
                zzabmVar.zzj(ObjectWrapper.wrap(motionEvent));
            } catch (RemoteException e2) {
                zzaxi.zzc("Unable to call handleTouchEvent on delegate", e2);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public AdChoicesView getAdChoicesView() {
        View viewZzbk = zzbk(NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW);
        if (viewZzbk instanceof AdChoicesView) {
            return (AdChoicesView) viewZzbk;
        }
        return null;
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        zzabm zzabmVar = this.zzbkc;
        if (zzabmVar != null) {
            try {
                zzabmVar.zzc(ObjectWrapper.wrap(view), i2);
            } catch (RemoteException e2) {
                zzaxi.zzc("Unable to call onVisibilityChanged on delegate", e2);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        super.removeAllViews();
        super.addView(this.zzbkb);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.zzbkb == view) {
            return;
        }
        super.removeView(view);
    }

    public void setAdChoicesView(AdChoicesView adChoicesView) {
        zza(NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, adChoicesView);
    }

    public void setNativeAd(NativeAd nativeAd) {
        try {
            this.zzbkc.zze((IObjectWrapper) nativeAd.zzjd());
        } catch (RemoteException e2) {
            zzaxi.zzc("Unable to call setNativeAd on delegate", e2);
        }
    }

    protected final void zza(String str, View view) {
        try {
            this.zzbkc.zzc(str, ObjectWrapper.wrap(view));
        } catch (RemoteException e2) {
            zzaxi.zzc("Unable to call setAssetView on delegate", e2);
        }
    }

    protected final View zzbk(String str) {
        try {
            IObjectWrapper iObjectWrapperZzcj = this.zzbkc.zzcj(str);
            if (iObjectWrapperZzcj != null) {
                return (View) ObjectWrapper.unwrap(iObjectWrapperZzcj);
            }
            return null;
        } catch (RemoteException e2) {
            zzaxi.zzc("Unable to call getAssetView on delegate", e2);
            return null;
        }
    }
}
