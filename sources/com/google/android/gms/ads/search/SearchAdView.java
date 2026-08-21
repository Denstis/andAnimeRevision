package com.google.android.gms.ads.search;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.internal.ads.zzaxi;
import com.google.android.gms.internal.ads.zzxb;

/* JADX INFO: loaded from: classes.dex */
public final class SearchAdView extends ViewGroup {
    private final zzxb zzabz;

    public SearchAdView(Context context) {
        super(context);
        this.zzabz = new zzxb(this);
    }

    public SearchAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zzabz = new zzxb(this, attributeSet, false);
    }

    public SearchAdView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.zzabz = new zzxb(this, attributeSet, false);
    }

    public final void destroy() {
        this.zzabz.destroy();
    }

    public final AdListener getAdListener() {
        return this.zzabz.getAdListener();
    }

    public final AdSize getAdSize() {
        return this.zzabz.getAdSize();
    }

    public final String getAdUnitId() {
        return this.zzabz.getAdUnitId();
    }

    public final void loadAd(DynamicHeightSearchAdRequest dynamicHeightSearchAdRequest) {
    }

    public final void loadAd(SearchAdRequest searchAdRequest) {
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

    public final void pause() {
        this.zzabz.pause();
    }

    public final void resume() {
        this.zzabz.resume();
    }

    public final void setAdListener(AdListener adListener) {
        this.zzabz.setAdListener(adListener);
    }

    public final void setAdSize(AdSize adSize) {
        this.zzabz.setAdSizes(adSize);
    }

    public final void setAdUnitId(String str) {
        this.zzabz.setAdUnitId(str);
    }
}
