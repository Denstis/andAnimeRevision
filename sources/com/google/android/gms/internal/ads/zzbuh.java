package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzbuh extends zzabg {
    private final zzbur zzfjl;
    private IObjectWrapper zzfkn;

    public zzbuh(zzbur zzburVar) {
        this.zzfjl = zzburVar;
    }

    private final float zzahj() {
        try {
            return this.zzfjl.getVideoController().getAspectRatio();
        } catch (RemoteException e2) {
            zzaxi.zzc("Remote exception getting video controller aspect ratio.", e2);
            return 0.0f;
        }
    }

    private static float zzar(IObjectWrapper iObjectWrapper) {
        Drawable drawable;
        if (iObjectWrapper == null || (drawable = (Drawable) ObjectWrapper.unwrap(iObjectWrapper)) == null || drawable.getIntrinsicWidth() == -1 || drawable.getIntrinsicHeight() == -1) {
            return 0.0f;
        }
        return drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final float getAspectRatio() {
        if (!((Boolean) zzuv.zzon().zzd(zzza.zzctg)).booleanValue()) {
            return 0.0f;
        }
        if (this.zzfjl.getMediaContentAspectRatio() != 0.0f) {
            return this.zzfjl.getMediaContentAspectRatio();
        }
        if (this.zzfjl.getVideoController() != null) {
            return zzahj();
        }
        IObjectWrapper iObjectWrapper = this.zzfkn;
        if (iObjectWrapper != null) {
            return zzar(iObjectWrapper);
        }
        zzabi zzabiVarZzahr = this.zzfjl.zzahr();
        if (zzabiVarZzahr == null) {
            return 0.0f;
        }
        float width = (zzabiVarZzahr == null || zzabiVarZzahr.getWidth() == -1 || zzabiVarZzahr.getHeight() == -1) ? 0.0f : zzabiVarZzahr.getWidth() / zzabiVarZzahr.getHeight();
        return width != 0.0f ? width : zzar(zzabiVarZzahr.zzqi());
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final IObjectWrapper zzql() {
        IObjectWrapper iObjectWrapper = this.zzfkn;
        if (iObjectWrapper != null) {
            return iObjectWrapper;
        }
        zzabi zzabiVarZzahr = this.zzfjl.zzahr();
        if (zzabiVarZzahr == null) {
            return null;
        }
        return zzabiVarZzahr.zzqi();
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final void zzt(IObjectWrapper iObjectWrapper) {
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcoh)).booleanValue()) {
            this.zzfkn = iObjectWrapper;
        }
    }
}
