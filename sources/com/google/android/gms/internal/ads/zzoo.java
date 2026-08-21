package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
final class zzoo extends HandlerThread implements SurfaceTexture.OnFrameAvailableListener, Handler.Callback {
    private Handler handler;
    private final int[] zzbhe;
    private SurfaceTexture zzbhf;
    private Error zzbhg;
    private RuntimeException zzbhh;
    private zzom zzbhi;

    public zzoo() {
        super("dummySurface");
        this.zzbhe = new int[1];
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i2 = message.what;
        try {
            if (i2 != 1) {
                if (i2 == 2) {
                    this.zzbhf.updateTexImage();
                    return true;
                }
                if (i2 != 3) {
                    return true;
                }
                try {
                    try {
                        this.zzbhf.release();
                        this.zzbhi = null;
                        this.zzbhf = null;
                        GLES20.glDeleteTextures(1, this.zzbhe, 0);
                    } catch (Throwable th) {
                        this.zzbhi = null;
                        this.zzbhf = null;
                        GLES20.glDeleteTextures(1, this.zzbhe, 0);
                        throw th;
                    }
                } finally {
                    try {
                    } finally {
                    }
                }
                return true;
            }
            try {
                try {
                    boolean z = message.arg1 != 0;
                    EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
                    zznr.checkState(eGLDisplayEglGetDisplay != null, "eglGetDisplay failed");
                    int[] iArr = new int[2];
                    zznr.checkState(EGL14.eglInitialize(eGLDisplayEglGetDisplay, iArr, 0, iArr, 1), "eglInitialize failed");
                    EGLConfig[] eGLConfigArr = new EGLConfig[1];
                    int[] iArr2 = new int[1];
                    zznr.checkState(EGL14.eglChooseConfig(eGLDisplayEglGetDisplay, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344}, 0, eGLConfigArr, 0, 1, iArr2, 0) && iArr2[0] > 0 && eGLConfigArr[0] != null, "eglChooseConfig failed");
                    EGLConfig eGLConfig = eGLConfigArr[0];
                    EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(eGLDisplayEglGetDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, z ? new int[]{12440, 2, 12992, 1, 12344} : new int[]{12440, 2, 12344}, 0);
                    zznr.checkState(eGLContextEglCreateContext != null, "eglCreateContext failed");
                    EGLSurface eGLSurfaceEglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplayEglGetDisplay, eGLConfig, z ? new int[]{12375, 1, 12374, 1, 12992, 1, 12344} : new int[]{12375, 1, 12374, 1, 12344}, 0);
                    zznr.checkState(eGLSurfaceEglCreatePbufferSurface != null, "eglCreatePbufferSurface failed");
                    zznr.checkState(EGL14.eglMakeCurrent(eGLDisplayEglGetDisplay, eGLSurfaceEglCreatePbufferSurface, eGLSurfaceEglCreatePbufferSurface, eGLContextEglCreateContext), "eglMakeCurrent failed");
                    GLES20.glGenTextures(1, this.zzbhe, 0);
                    this.zzbhf = new SurfaceTexture(this.zzbhe[0]);
                    this.zzbhf.setOnFrameAvailableListener(this);
                    this.zzbhi = new zzom(this, this.zzbhf, z);
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e2) {
                    Log.e("DummySurface", "Failed to initialize dummy surface", e2);
                    this.zzbhg = e2;
                    synchronized (this) {
                        notify();
                    }
                }
            } catch (RuntimeException e3) {
                Log.e("DummySurface", "Failed to initialize dummy surface", e3);
                this.zzbhh = e3;
                synchronized (this) {
                    notify();
                }
            }
            return true;
        } catch (Throwable th2) {
            synchronized (this) {
                notify();
                throw th2;
            }
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.handler.sendEmptyMessage(2);
    }

    public final void release() {
        this.handler.sendEmptyMessage(3);
    }

    public final zzom zzl(boolean z) {
        boolean z2;
        start();
        this.handler = new Handler(getLooper(), this);
        synchronized (this) {
            z2 = false;
            this.handler.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
            while (this.zzbhi == null && this.zzbhh == null && this.zzbhg == null) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                    z2 = true;
                }
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        RuntimeException runtimeException = this.zzbhh;
        if (runtimeException != null) {
            throw runtimeException;
        }
        Error error = this.zzbhg;
        if (error == null) {
            return this.zzbhi;
        }
        throw error;
    }
}
