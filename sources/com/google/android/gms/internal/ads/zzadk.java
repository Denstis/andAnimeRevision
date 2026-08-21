package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzadk implements UnifiedNativeAd.MediaContent {
    private final zzabh zzcwp;

    public zzadk(zzabh zzabhVar) {
        this.zzcwp = zzabhVar;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd.MediaContent
    public final float getAspectRatio() {
        try {
            return this.zzcwp.getAspectRatio();
        } catch (RemoteException unused) {
            return 0.0f;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd.MediaContent
    public final Drawable getMainImage() {
        try {
            IObjectWrapper iObjectWrapperZzql = this.zzcwp.zzql();
            if (iObjectWrapperZzql != null) {
                return (Drawable) ObjectWrapper.unwrap(iObjectWrapperZzql);
            }
            return null;
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd.MediaContent
    public final void setMainImage(Drawable drawable) {
        try {
            this.zzcwp.zzt(ObjectWrapper.wrap(drawable));
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }

    public final zzabh zzqy() {
        return this.zzcwp;
    }
}
