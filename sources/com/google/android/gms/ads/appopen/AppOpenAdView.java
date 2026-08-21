package com.google.android.gms.ads.appopen;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzaxi;
import com.google.android.gms.internal.ads.zzqt;
import com.google.android.gms.internal.ads.zzua;
import com.google.android.gms.internal.ads.zzvl;

/* JADX INFO: loaded from: classes.dex */
public final class AppOpenAdView extends ViewGroup {
    private AppOpenAd zzabx;
    private AppOpenAdPresentationCallback zzaby;

    public AppOpenAdView(Context context) {
        super(context);
        Preconditions.checkNotNull(context, "Context cannot be null");
    }

    public AppOpenAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AppOpenAdView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    private final AdSize getAdSize() {
        zzvl zzvlVarZzdg = this.zzabx.zzdg();
        if (zzvlVarZzdg == null) {
            return null;
        }
        try {
            zzua zzuaVarZzjt = zzvlVarZzdg.zzjt();
            if (zzuaVarZzjt != null) {
                return zzuaVarZzjt.zzod();
            }
            return null;
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
            return null;
        }
    }

    private final void zzdi() {
        AppOpenAdPresentationCallback appOpenAdPresentationCallback;
        AppOpenAd appOpenAd = this.zzabx;
        if (appOpenAd == null || (appOpenAdPresentationCallback = this.zzaby) == null) {
            return;
        }
        appOpenAd.zza(new zzqt(appOpenAdPresentationCallback));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            return;
        }
        int measuredWidth = childAt.getMeasuredWidth();
        int measuredHeight = childAt.getMeasuredHeight();
        int i6 = ((i4 - i2) - measuredWidth) / 2;
        int i7 = ((i5 - i3) - measuredHeight) / 2;
        childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
    }

    @Override // android.view.View
    protected final void onMeasure(int i2, int i3) {
        int heightInPixels;
        int measuredWidth = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            AdSize adSize = null;
            try {
                adSize = getAdSize();
            } catch (NullPointerException e2) {
                zzaxi.zzc("Unable to retrieve ad size.", e2);
            }
            if (adSize != null) {
                Context context = getContext();
                int widthInPixels = adSize.getWidthInPixels(context);
                heightInPixels = adSize.getHeightInPixels(context);
                measuredWidth = widthInPixels;
            } else {
                heightInPixels = 0;
            }
        } else {
            measureChild(childAt, i2, i3);
            measuredWidth = childAt.getMeasuredWidth();
            heightInPixels = childAt.getMeasuredHeight();
        }
        setMeasuredDimension(View.resolveSize(Math.max(measuredWidth, getSuggestedMinimumWidth()), i2), View.resolveSize(Math.max(heightInPixels, getSuggestedMinimumHeight()), i3));
    }

    public final void setAppOpenAd(AppOpenAd appOpenAd) {
        IObjectWrapper iObjectWrapperZzjr;
        try {
            zzvl zzvlVarZzdg = appOpenAd.zzdg();
            if (zzvlVarZzdg == null || (iObjectWrapperZzjr = zzvlVarZzdg.zzjr()) == null) {
                return;
            }
            View view = (View) ObjectWrapper.unwrap(iObjectWrapperZzjr);
            if (view.getParent() != null) {
                zzaxi.zzes("Trying to set AppOpenAd which is already in use.");
                return;
            }
            removeAllViews();
            addView(view);
            this.zzabx = appOpenAd;
            zzdi();
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }

    public final void setAppOpenAdPresentationCallback(AppOpenAdPresentationCallback appOpenAdPresentationCallback) {
        this.zzaby = appOpenAdPresentationCallback;
        zzdi();
    }
}
