package com.google.android.gms.ads.formats;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.internal.ads.zzaax;
import com.google.android.gms.internal.ads.zzaaz;

/* JADX INFO: loaded from: classes.dex */
public class MediaView extends FrameLayout {
    private UnifiedNativeAd.MediaContent zzbjo;
    private boolean zzbjp;
    private zzaax zzbjq;
    private ImageView.ScaleType zzbjr;
    private boolean zzbjs;
    private zzaaz zzbjt;

    public MediaView(Context context) {
        super(context);
    }

    public MediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MediaView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    @TargetApi(21)
    public MediaView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }

    public void setImageScaleType(ImageView.ScaleType scaleType) {
        this.zzbjs = true;
        this.zzbjr = scaleType;
        zzaaz zzaazVar = this.zzbjt;
        if (zzaazVar != null) {
            zzaazVar.setImageScaleType(this.zzbjr);
        }
    }

    public void setMediaContent(UnifiedNativeAd.MediaContent mediaContent) {
        this.zzbjp = true;
        this.zzbjo = mediaContent;
        zzaax zzaaxVar = this.zzbjq;
        if (zzaaxVar != null) {
            zzaaxVar.setMediaContent(mediaContent);
        }
    }

    protected final synchronized void zza(zzaax zzaaxVar) {
        this.zzbjq = zzaaxVar;
        if (this.zzbjp) {
            zzaaxVar.setMediaContent(this.zzbjo);
        }
    }

    protected final synchronized void zza(zzaaz zzaazVar) {
        this.zzbjt = zzaazVar;
        if (this.zzbjs) {
            zzaazVar.setImageScaleType(this.zzbjr);
        }
    }
}
