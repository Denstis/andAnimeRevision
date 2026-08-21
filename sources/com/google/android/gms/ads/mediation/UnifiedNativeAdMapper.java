package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class UnifiedNativeAdMapper {
    private Bundle extras = new Bundle();
    private VideoController zzcen;
    private String zzdko;
    private String zzeip;
    private List<NativeAd.Image> zzeiq;
    private NativeAd.Image zzeir;
    private String zzeis;
    private String zzeiu;
    private String zzeiv;
    private View zzeiw;
    private boolean zzeix;
    private String zzeiz;
    private Double zzeja;
    private View zzejb;
    private Object zzejc;
    private boolean zzejd;
    private boolean zzeje;
    private float zzejf;

    public View getAdChoicesContent() {
        return this.zzejb;
    }

    public final String getAdvertiser() {
        return this.zzeiz;
    }

    public final String getBody() {
        return this.zzdko;
    }

    public final String getCallToAction() {
        return this.zzeis;
    }

    public final Bundle getExtras() {
        return this.extras;
    }

    public final String getHeadline() {
        return this.zzeip;
    }

    public final NativeAd.Image getIcon() {
        return this.zzeir;
    }

    public final List<NativeAd.Image> getImages() {
        return this.zzeiq;
    }

    public float getMediaContentAspectRatio() {
        return this.zzejf;
    }

    public final boolean getOverrideClickHandling() {
        return this.zzeje;
    }

    public final boolean getOverrideImpressionRecording() {
        return this.zzejd;
    }

    public final String getPrice() {
        return this.zzeiv;
    }

    public final Double getStarRating() {
        return this.zzeja;
    }

    public final String getStore() {
        return this.zzeiu;
    }

    public final VideoController getVideoController() {
        return this.zzcen;
    }

    public void handleClick(View view) {
    }

    public boolean hasVideoContent() {
        return this.zzeix;
    }

    public void recordImpression() {
    }

    public void setAdChoicesContent(View view) {
        this.zzejb = view;
    }

    public final void setAdvertiser(String str) {
        this.zzeiz = str;
    }

    public final void setBody(String str) {
        this.zzdko = str;
    }

    public final void setCallToAction(String str) {
        this.zzeis = str;
    }

    public final void setExtras(Bundle bundle) {
        this.extras = bundle;
    }

    public void setHasVideoContent(boolean z) {
        this.zzeix = z;
    }

    public final void setHeadline(String str) {
        this.zzeip = str;
    }

    public final void setIcon(NativeAd.Image image) {
        this.zzeir = image;
    }

    public final void setImages(List<NativeAd.Image> list) {
        this.zzeiq = list;
    }

    public void setMediaContentAspectRatio(float f2) {
        this.zzejf = f2;
    }

    public void setMediaView(View view) {
        this.zzeiw = view;
    }

    public final void setOverrideClickHandling(boolean z) {
        this.zzeje = z;
    }

    public final void setOverrideImpressionRecording(boolean z) {
        this.zzejd = z;
    }

    public final void setPrice(String str) {
        this.zzeiv = str;
    }

    public final void setStarRating(Double d2) {
        this.zzeja = d2;
    }

    public final void setStore(String str) {
        this.zzeiu = str;
    }

    public void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
    }

    public void untrackView(View view) {
    }

    public final void zza(VideoController videoController) {
        this.zzcen = videoController;
    }

    public final View zzaba() {
        return this.zzeiw;
    }

    public final Object zzji() {
        return this.zzejc;
    }

    public final void zzn(Object obj) {
        this.zzejc = obj;
    }
}
