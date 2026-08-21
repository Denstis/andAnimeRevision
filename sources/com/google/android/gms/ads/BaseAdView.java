package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.internal.ads.zzaxi;
import com.google.android.gms.internal.ads.zztp;
import com.google.android.gms.internal.ads.zzxb;

/* JADX INFO: loaded from: classes.dex */
class BaseAdView extends ViewGroup {
    protected final zzxb zzabf;

    public BaseAdView(Context context, int i2) {
        super(context);
        this.zzabf = new zzxb(this, i2);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet);
        this.zzabf = new zzxb(this, attributeSet, false, i2);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2);
        this.zzabf = new zzxb(this, attributeSet, false, i3);
    }

    public void destroy() {
        this.zzabf.destroy();
    }

    public AdListener getAdListener() {
        return this.zzabf.getAdListener();
    }

    public AdSize getAdSize() {
        return this.zzabf.getAdSize();
    }

    public String getAdUnitId() {
        return this.zzabf.getAdUnitId();
    }

    public String getMediationAdapterClassName() {
        return this.zzabf.getMediationAdapterClassName();
    }

    public boolean isLoading() {
        return this.zzabf.isLoading();
    }

    public void loadAd(AdRequest adRequest) {
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
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
    protected void onMeasure(int i2, int i3) {
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

    public void pause() {
        this.zzabf.pause();
    }

    public void resume() {
        this.zzabf.resume();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setAdListener(AdListener adListener) {
        this.zzabf.setAdListener(adListener);
        if (adListener == 0) {
            this.zzabf.zza((zztp) null);
            this.zzabf.setAppEventListener(null);
            return;
        }
        if (adListener instanceof zztp) {
            this.zzabf.zza((zztp) adListener);
        }
        if (adListener instanceof AppEventListener) {
            this.zzabf.setAppEventListener((AppEventListener) adListener);
        }
    }

    public void setAdSize(AdSize adSize) {
        this.zzabf.setAdSizes(adSize);
    }

    public void setAdUnitId(String str) {
        this.zzabf.setAdUnitId(str);
    }
}
