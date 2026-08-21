package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.util.Log;
import com.google.android.gms.common.util.VisibleForTesting;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(14)
public final class zzazh extends Thread implements SurfaceTexture.OnFrameAvailableListener, zzazi {
    private static final float[] zzdzj = {-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};
    private int height;
    private int width;
    private final float[] zzdzg;
    private final zzazg zzdzk;
    private final float[] zzdzl;
    private final float[] zzdzm;
    private final float[] zzdzn;
    private final float[] zzdzo;
    private final float[] zzdzp;
    private final float[] zzdzq;
    private float zzdzr;
    private float zzdzs;
    private float zzdzt;
    private SurfaceTexture zzdzu;
    private SurfaceTexture zzdzv;
    private int zzdzw;
    private int zzdzx;
    private int zzdzy;
    private FloatBuffer zzdzz;
    private final CountDownLatch zzeaa;
    private final Object zzeab;
    private EGL10 zzeac;
    private EGLDisplay zzead;
    private EGLContext zzeae;
    private EGLSurface zzeaf;
    private volatile boolean zzeag;
    private volatile boolean zzeah;

    public zzazh(Context context) {
        super("SphericalVideoProcessor");
        this.zzdzz = ByteBuffer.allocateDirect(zzdzj.length << 2).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.zzdzz.put(zzdzj).position(0);
        this.zzdzg = new float[9];
        this.zzdzl = new float[9];
        this.zzdzm = new float[9];
        this.zzdzn = new float[9];
        this.zzdzo = new float[9];
        this.zzdzp = new float[9];
        this.zzdzq = new float[9];
        this.zzdzr = Float.NaN;
        this.zzdzk = new zzazg(context);
        this.zzdzk.zza(this);
        this.zzeaa = new CountDownLatch(1);
        this.zzeab = new Object();
    }

    private static void zza(float[] fArr, float f2) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        double d2 = f2;
        fArr[4] = (float) Math.cos(d2);
        fArr[5] = (float) (-Math.sin(d2));
        fArr[6] = 0.0f;
        fArr[7] = (float) Math.sin(d2);
        fArr[8] = (float) Math.cos(d2);
    }

    private static void zza(float[] fArr, float[] fArr2, float[] fArr3) {
        fArr[0] = (fArr2[0] * fArr3[0]) + (fArr2[1] * fArr3[3]) + (fArr2[2] * fArr3[6]);
        fArr[1] = (fArr2[0] * fArr3[1]) + (fArr2[1] * fArr3[4]) + (fArr2[2] * fArr3[7]);
        fArr[2] = (fArr2[0] * fArr3[2]) + (fArr2[1] * fArr3[5]) + (fArr2[2] * fArr3[8]);
        fArr[3] = (fArr2[3] * fArr3[0]) + (fArr2[4] * fArr3[3]) + (fArr2[5] * fArr3[6]);
        fArr[4] = (fArr2[3] * fArr3[1]) + (fArr2[4] * fArr3[4]) + (fArr2[5] * fArr3[7]);
        fArr[5] = (fArr2[3] * fArr3[2]) + (fArr2[4] * fArr3[5]) + (fArr2[5] * fArr3[8]);
        fArr[6] = (fArr2[6] * fArr3[0]) + (fArr2[7] * fArr3[3]) + (fArr2[8] * fArr3[6]);
        fArr[7] = (fArr2[6] * fArr3[1]) + (fArr2[7] * fArr3[4]) + (fArr2[8] * fArr3[7]);
        fArr[8] = (fArr2[6] * fArr3[2]) + (fArr2[7] * fArr3[5]) + (fArr2[8] * fArr3[8]);
    }

    private static void zzb(float[] fArr, float f2) {
        double d2 = f2;
        fArr[0] = (float) Math.cos(d2);
        fArr[1] = (float) (-Math.sin(d2));
        fArr[2] = 0.0f;
        fArr[3] = (float) Math.sin(d2);
        fArr[4] = (float) Math.cos(d2);
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    private static int zzd(int i2, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i2);
        zzey("createShader");
        if (iGlCreateShader == 0) {
            return iGlCreateShader;
        }
        GLES20.glShaderSource(iGlCreateShader, str);
        zzey("shaderSource");
        GLES20.glCompileShader(iGlCreateShader);
        zzey("compileShader");
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        zzey("getShaderiv");
        if (iArr[0] != 0) {
            return iGlCreateShader;
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Could not compile shader ");
        sb.append(i2);
        sb.append(":");
        Log.e("SphericalVideoRenderer", sb.toString());
        Log.e("SphericalVideoRenderer", GLES20.glGetShaderInfoLog(iGlCreateShader));
        GLES20.glDeleteShader(iGlCreateShader);
        zzey("deleteShader");
        return 0;
    }

    private static void zzey(String str) {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError != 0) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21);
            sb.append(str);
            sb.append(": glError ");
            sb.append(iGlGetError);
            Log.e("SphericalVideoRenderer", sb.toString());
        }
    }

    @VisibleForTesting
    private final boolean zzxj() {
        EGLSurface eGLSurface;
        EGLSurface eGLSurface2 = this.zzeaf;
        boolean zEglDestroyContext = false;
        if (eGLSurface2 != null && eGLSurface2 != (eGLSurface = EGL10.EGL_NO_SURFACE)) {
            zEglDestroyContext = this.zzeac.eglDestroySurface(this.zzead, this.zzeaf) | this.zzeac.eglMakeCurrent(this.zzead, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT) | false;
            this.zzeaf = null;
        }
        EGLContext eGLContext = this.zzeae;
        if (eGLContext != null) {
            zEglDestroyContext |= this.zzeac.eglDestroyContext(this.zzead, eGLContext);
            this.zzeae = null;
        }
        EGLDisplay eGLDisplay = this.zzead;
        if (eGLDisplay == null) {
            return zEglDestroyContext;
        }
        boolean zEglTerminate = zEglDestroyContext | this.zzeac.eglTerminate(eGLDisplay);
        this.zzead = null;
        return zEglTerminate;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.zzdzy++;
        synchronized (this.zzeab) {
            this.zzeab.notifyAll();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            Method dump skipped, instruction units count: 1038
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzazh.run():void");
    }

    public final void zza(SurfaceTexture surfaceTexture, int i2, int i3) {
        this.width = i2;
        this.height = i3;
        this.zzdzv = surfaceTexture;
    }

    public final void zzb(float f2, float f3) {
        float f4;
        float f5;
        float f6;
        int i2 = this.width;
        int i3 = this.height;
        float f7 = f2 * 1.7453293f;
        if (i2 > i3) {
            f4 = f7 / i2;
            f5 = f3 * 1.7453293f;
            f6 = i2;
        } else {
            f4 = f7 / i3;
            f5 = f3 * 1.7453293f;
            f6 = i3;
        }
        this.zzdzs -= f4;
        this.zzdzt -= f5 / f6;
        if (this.zzdzt < -1.5707964f) {
            this.zzdzt = -1.5707964f;
        }
        if (this.zzdzt > 1.5707964f) {
            this.zzdzt = 1.5707964f;
        }
    }

    public final void zzl(int i2, int i3) {
        synchronized (this.zzeab) {
            this.width = i2;
            this.height = i3;
            this.zzeag = true;
            this.zzeab.notifyAll();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzazi
    public final void zzst() {
        synchronized (this.zzeab) {
            this.zzeab.notifyAll();
        }
    }

    public final void zzxh() {
        synchronized (this.zzeab) {
            this.zzeah = true;
            this.zzdzv = null;
            this.zzeab.notifyAll();
        }
    }

    public final SurfaceTexture zzxi() {
        if (this.zzdzv == null) {
            return null;
        }
        try {
            this.zzeaa.await();
        } catch (InterruptedException unused) {
        }
        return this.zzdzu;
    }
}
