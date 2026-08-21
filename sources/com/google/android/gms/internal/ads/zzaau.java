package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzaau extends zzabl {
    private final int height;
    private final Uri uri;
    private final int width;
    private final Drawable zzcvx;
    private final double zzcvy;

    public zzaau(Drawable drawable, Uri uri, double d2, int i2, int i3) {
        this.zzcvx = drawable;
        this.uri = uri;
        this.zzcvy = d2;
        this.width = i2;
        this.height = i3;
    }

    @Override // com.google.android.gms.internal.ads.zzabi
    public final int getHeight() {
        return this.height;
    }

    @Override // com.google.android.gms.internal.ads.zzabi
    public final double getScale() {
        return this.zzcvy;
    }

    @Override // com.google.android.gms.internal.ads.zzabi
    public final Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.gms.internal.ads.zzabi
    public final int getWidth() {
        return this.width;
    }

    @Override // com.google.android.gms.internal.ads.zzabi
    public final IObjectWrapper zzqi() {
        return ObjectWrapper.wrap(this.zzcvx);
    }
}
