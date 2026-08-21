package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class NativeContentAdMapper extends NativeAdMapper {
    private String zzdko;
    private String zzeip;
    private List<NativeAd.Image> zzeiq;
    private String zzeis;
    private NativeAd.Image zzeiy;
    private String zzeiz;

    public final String getAdvertiser() {
        return this.zzeiz;
    }

    public final String getBody() {
        return this.zzdko;
    }

    public final String getCallToAction() {
        return this.zzeis;
    }

    public final String getHeadline() {
        return this.zzeip;
    }

    public final List<NativeAd.Image> getImages() {
        return this.zzeiq;
    }

    public final NativeAd.Image getLogo() {
        return this.zzeiy;
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

    public final void setHeadline(String str) {
        this.zzeip = str;
    }

    public final void setImages(List<NativeAd.Image> list) {
        this.zzeiq = list;
    }

    public final void setLogo(NativeAd.Image image) {
        this.zzeiy = image;
    }
}
