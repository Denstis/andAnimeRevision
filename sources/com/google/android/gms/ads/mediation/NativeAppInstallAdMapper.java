package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class NativeAppInstallAdMapper extends NativeAdMapper {
    private String zzdko;
    private String zzeip;
    private List<NativeAd.Image> zzeiq;
    private NativeAd.Image zzeir;
    private String zzeis;
    private double zzeit;
    private String zzeiu;
    private String zzeiv;

    public final String getBody() {
        return this.zzdko;
    }

    public final String getCallToAction() {
        return this.zzeis;
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

    public final String getPrice() {
        return this.zzeiv;
    }

    public final double getStarRating() {
        return this.zzeit;
    }

    public final String getStore() {
        return this.zzeiu;
    }

    public final void setBody(String str) {
        this.zzdko = str;
    }

    public final void setCallToAction(String str) {
        this.zzeis = str;
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

    public final void setPrice(String str) {
        this.zzeiv = str;
    }

    public final void setStarRating(double d2) {
        this.zzeit = d2;
    }

    public final void setStore(String str) {
        this.zzeiu = str;
    }
}
