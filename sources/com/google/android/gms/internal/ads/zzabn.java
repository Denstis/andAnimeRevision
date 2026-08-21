package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzabn extends NativeAd.Image {
    private final int height;
    private final Uri uri;
    private final int width;
    private final double zzcvy;
    private final zzabi zzcwd;
    private final Drawable zzcwe;

    public zzabn(zzabi zzabiVar) {
        int width;
        IObjectWrapper iObjectWrapperZzqi;
        this.zzcwd = zzabiVar;
        Uri uri = null;
        try {
            iObjectWrapperZzqi = this.zzcwd.zzqi();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
        Drawable drawable = iObjectWrapperZzqi != null ? (Drawable) ObjectWrapper.unwrap(iObjectWrapperZzqi) : null;
        this.zzcwe = drawable;
        try {
            uri = this.zzcwd.getUri();
        } catch (RemoteException e3) {
            zzaxi.zzc("", e3);
        }
        this.uri = uri;
        double scale = 1.0d;
        try {
            scale = this.zzcwd.getScale();
        } catch (RemoteException e4) {
            zzaxi.zzc("", e4);
        }
        this.zzcvy = scale;
        int height = -1;
        try {
            width = this.zzcwd.getWidth();
        } catch (RemoteException e5) {
            zzaxi.zzc("", e5);
            width = -1;
        }
        this.width = width;
        try {
            height = this.zzcwd.getHeight();
        } catch (RemoteException e6) {
            zzaxi.zzc("", e6);
        }
        this.height = height;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final Drawable getDrawable() {
        return this.zzcwe;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final int getHeight() {
        return this.height;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final double getScale() {
        return this.zzcvy;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final int getWidth() {
        return this.width;
    }
}
