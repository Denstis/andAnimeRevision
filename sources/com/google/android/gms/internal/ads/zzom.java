package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.view.Surface;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(17)
public final class zzom extends Surface {
    private static boolean zzbha;
    private static boolean zzbhb;
    private final boolean zzayy;
    private final zzoo zzbhc;
    private boolean zzbhd;

    private zzom(zzoo zzooVar, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.zzbhc = zzooVar;
        this.zzayy = z;
    }

    public static zzom zzc(Context context, boolean z) {
        if (zzof.SDK_INT < 17) {
            throw new UnsupportedOperationException("Unsupported prior to API level 17");
        }
        zznr.checkState(!z || zzc(context));
        return new zzoo().zzl(z);
    }

    public static synchronized boolean zzc(Context context) {
        if (!zzbhb) {
            if (zzof.SDK_INT >= 17) {
                boolean z = false;
                String strEglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
                if (strEglQueryString != null && strEglQueryString.contains("EGL_EXT_protected_content")) {
                    if (!(zzof.SDK_INT == 24 && (zzof.MODEL.startsWith("SM-G950") || zzof.MODEL.startsWith("SM-G955")) && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance"))) {
                        z = true;
                    }
                }
                zzbha = z;
            }
            zzbhb = true;
        }
        return zzbha;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.zzbhc) {
            if (!this.zzbhd) {
                this.zzbhc.release();
                this.zzbhd = true;
            }
        }
    }
}
