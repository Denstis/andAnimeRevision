package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzaxi;
import com.google.android.gms.internal.ads.zzvl;
import com.google.android.gms.internal.ads.zzxb;

/* JADX INFO: loaded from: classes.dex */
public final class PublisherAdView extends ViewGroup {
    private final zzxb zzabz;

    public PublisherAdView(Context context) {
        super(context);
        this.zzabz = new zzxb(this);
    }

    public PublisherAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zzabz = new zzxb(this, attributeSet, true);
        Preconditions.checkNotNull(context, "Context cannot be null");
    }

    public PublisherAdView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.zzabz = new zzxb(this, attributeSet, true);
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

    public final AdSize[] getAdSizes() {
        return this.zzabz.getAdSizes();
    }

    public final String getAdUnitId() {
        return this.zzabz.getAdUnitId();
    }

    public final AppEventListener getAppEventListener() {
        return this.zzabz.getAppEventListener();
    }

    public final String getMediationAdapterClassName() {
        return this.zzabz.getMediationAdapterClassName();
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.zzabz.getOnCustomRenderedAdLoadedListener();
    }

    public final VideoController getVideoController() {
        return this.zzabz.getVideoController();
    }

    public final VideoOptions getVideoOptions() {
        return this.zzabz.getVideoOptions();
    }

    public final boolean isLoading() {
        return this.zzabz.isLoading();
    }

    public final void loadAd(PublisherAdRequest publisherAdRequest) {
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

    public final void recordManualImpression() {
        this.zzabz.recordManualImpression();
    }

    public final void resume() {
        this.zzabz.resume();
    }

    public final void setAdListener(AdListener adListener) {
        this.zzabz.setAdListener(adListener);
    }

    public final void setAdSizes(AdSize... adSizeArr) {
        if (adSizeArr == null || adSizeArr.length <= 0) {
            throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
        }
        this.zzabz.zza(adSizeArr);
    }

    public final void setAdUnitId(String str) {
        this.zzabz.setAdUnitId(str);
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        this.zzabz.setAppEventListener(appEventListener);
    }

    @KeepForSdk
    @Deprecated
    public final void setCorrelator(Correlator correlator) {
    }

    public final void setManualImpressionsEnabled(boolean z) {
        this.zzabz.setManualImpressionsEnabled(z);
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
    }

    public final void setVideoOptions(VideoOptions videoOptions) {
        this.zzabz.setVideoOptions(videoOptions);
    }

    public final boolean zza(zzvl zzvlVar) {
        return this.zzabz.zza(zzvlVar);
    }
}
