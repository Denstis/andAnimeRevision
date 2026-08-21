###### Class com.google.android.gms.internal.ads.zzoo (com.google.android.gms.internal.ads.zzoo)
.class final Lcom/google/android/gms/internal/ads/zzoo;
.super Landroid/os/HandlerThread;
.source ""

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/os/Handler$Callback;


# instance fields
.field private handler:Landroid/os/Handler;

.field private final zzbhe:[I

.field private zzbhf:Landroid/graphics/SurfaceTexture;

.field private zzbhg:Ljava/lang/Error;

.field private zzbhh:Ljava/lang/RuntimeException;

.field private zzbhi:Lcom/google/android/gms/internal/ads/zzom;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "dummySurface"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzbhe:[I

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v7, :cond_43

    if-eq v2, v5, :cond_3d

    if-eq v2, v4, :cond_12

    return v7

    :cond_12
    :try_start_12
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzoo;->zzbhf:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_21

    :try_start_17
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzoo;->zzbhi:Lcom/google/android/gms/internal/ads/zzom;

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzoo;->zzbhf:Landroid/graphics/SurfaceTexture;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzoo;->zzbhe:[I

    invoke-static {v7, v0, v6}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    goto :goto_34

    :catchall_21
    move-exception v0

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzoo;->zzbhi:Lcom/google/android/gms/internal/ads/zzom;

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzoo;->zzbhf:Landroid/graphics/SurfaceTexture;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzoo;->zzbhe:[I

    invoke-static {v7, v2, v6}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    throw v0
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v0

    :try_start_2d
    const-string v2, "DummySurface"

    const-string v3, "Failed to release dummy surface"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_38

    :goto_34
    invoke-virtual/range {p0 .. p0}, Landroid/os/HandlerThread;->quit()Z

    return v7

    :catchall_38
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/HandlerThread;->quit()Z

    throw v0

    :cond_3d
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzoo;->zzbhf:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return v7

    :cond_43
    :try_start_43
    iget v0, v0, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_49

    const/4 v0, 0x1

    goto :goto_4a

    :cond_49
    const/4 v0, 0x0

    :goto_4a
    invoke-static {v6}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    if-eqz v2, :cond_52

    const/4 v8, 0x1

    goto :goto_53

    :cond_52
    const/4 v8, 0x0

    :goto_53
    const-string v9, "eglGetDisplay failed"

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zznr;->checkState(ZLjava/lang/Object;)V

    new-array v8, v5, [I

    invoke-static {v2, v8, v6, v8, v7}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v8

    const-string v9, "eglInitialize failed"

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zznr;->checkState(ZLjava/lang/Object;)V

    const/16 v8, 0x11

    new-array v9, v8, [I

    const/16 v8, 0x3040

    aput v8, v9, v6

    const/16 v16, 0x4

    aput v16, v9, v7

    const/16 v8, 0x3024

    aput v8, v9, v5

    const/16 v8, 0x8

    aput v8, v9, v4

    const/16 v10, 0x3023

    aput v10, v9, v16

    const/4 v15, 0x5

    aput v8, v9, v15

    const/16 v10, 0x3022

    const/16 v17, 0x6

    aput v10, v9, v17

    const/4 v14, 0x7

    aput v8, v9, v14

    const/16 v10, 0x3021

    aput v10, v9, v8

    const/16 v10, 0x9

    aput v8, v9, v10

    const/16 v8, 0xa

    const/16 v10, 0x3025

    aput v10, v9, v8

    const/16 v8, 0xb

    aput v6, v9, v8

    const/16 v8, 0xc

    const/16 v10, 0x3027

    aput v10, v9, v8

    const/16 v8, 0xd

    const/16 v18, 0x3038

    aput v18, v9, v8

    const/16 v8, 0xe

    const/16 v10, 0x3033

    aput v10, v9, v8

    const/16 v8, 0xf

    aput v16, v9, v8

    const/16 v8, 0x10

    aput v18, v9, v8

    new-array v13, v7, [Landroid/opengl/EGLConfig;

    new-array v12, v7, [I

    const/4 v10, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object v8, v2

    move-object v11, v13

    move-object/from16 v22, v12

    move/from16 v12, v19

    move-object/from16 v19, v13

    move/from16 v13, v20

    const/4 v3, 0x7

    move-object/from16 v14, v22

    const/4 v3, 0x5

    move/from16 v15, v21

    invoke-static/range {v8 .. v15}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v8

    if-eqz v8, :cond_de

    aget v8, v22, v6

    if-lez v8, :cond_de

    aget-object v8, v19, v6

    if-eqz v8, :cond_de

    const/4 v8, 0x1

    goto :goto_df

    :cond_de
    const/4 v8, 0x0

    :goto_df
    const-string v9, "eglChooseConfig failed"

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zznr;->checkState(ZLjava/lang/Object;)V

    aget-object v8, v19, v6

    const/16 v9, 0x32c0

    const/16 v10, 0x3098

    if-eqz v0, :cond_f9

    new-array v11, v3, [I

    aput v10, v11, v6

    aput v5, v11, v7

    aput v9, v11, v5

    aput v7, v11, v4

    aput v18, v11, v16

    goto :goto_101

    :cond_f9
    new-array v11, v4, [I

    aput v10, v11, v6

    aput v5, v11, v7

    aput v18, v11, v5

    :goto_101
    sget-object v10, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v2, v8, v10, v11, v6}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v10

    if-eqz v10, :cond_10b

    const/4 v11, 0x1

    goto :goto_10c

    :cond_10b
    const/4 v11, 0x0

    :goto_10c
    const-string v12, "eglCreateContext failed"

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zznr;->checkState(ZLjava/lang/Object;)V

    const/16 v11, 0x3056

    const/16 v12, 0x3057

    if-eqz v0, :cond_129

    const/4 v13, 0x7

    new-array v13, v13, [I

    aput v12, v13, v6

    aput v7, v13, v7

    aput v11, v13, v5

    aput v7, v13, v4

    aput v9, v13, v16

    aput v7, v13, v3

    aput v18, v13, v17

    goto :goto_135

    :cond_129
    new-array v13, v3, [I

    aput v12, v13, v6

    aput v7, v13, v7

    aput v11, v13, v5

    aput v7, v13, v4

    aput v18, v13, v16

    :goto_135
    invoke-static {v2, v8, v13, v6}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v3

    if-eqz v3, :cond_13d

    const/4 v4, 0x1

    goto :goto_13e

    :cond_13d
    const/4 v4, 0x0

    :goto_13e
    const-string v5, "eglCreatePbufferSurface failed"

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zznr;->checkState(ZLjava/lang/Object;)V

    invoke-static {v2, v3, v3, v10}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v2

    const-string v3, "eglMakeCurrent failed"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zznr;->checkState(ZLjava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzoo;->zzbhe:[I

    invoke-static {v7, v2, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    new-instance v2, Landroid/graphics/SurfaceTexture;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzoo;->zzbhe:[I

    aget v3, v3, v6

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzoo;->zzbhf:Landroid/graphics/SurfaceTexture;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzoo;->zzbhf:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzom;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzoo;->zzbhf:Landroid/graphics/SurfaceTexture;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzom;-><init>(Lcom/google/android/gms/internal/ads/zzoo;Landroid/graphics/SurfaceTexture;ZLcom/google/android/gms/internal/ads/zzol;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzoo;->zzbhi:Lcom/google/android/gms/internal/ads/zzom;
    :try_end_16b
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_16b} :catch_189
    .catch Ljava/lang/Error; {:try_start_43 .. :try_end_16b} :catch_176
    .catchall {:try_start_43 .. :try_end_16b} :catchall_174

    monitor-enter p0

    :try_start_16c
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto :goto_198

    :catchall_171
    move-exception v0

    monitor-exit p0
    :try_end_173
    .catchall {:try_start_16c .. :try_end_173} :catchall_171

    throw v0

    :catchall_174
    move-exception v0

    goto :goto_19c

    :catch_176
    move-exception v0

    :try_start_177
    const-string v2, "DummySurface"

    const-string v3, "Failed to initialize dummy surface"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzoo;->zzbhg:Ljava/lang/Error;
    :try_end_180
    .catchall {:try_start_177 .. :try_end_180} :catchall_174

    monitor-enter p0

    :try_start_181
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto :goto_198

    :catchall_186
    move-exception v0

    monitor-exit p0
    :try_end_188
    .catchall {:try_start_181 .. :try_end_188} :catchall_186

    throw v0

    :catch_189
    move-exception v0

    :try_start_18a
    const-string v2, "DummySurface"

    const-string v3, "Failed to initialize dummy surface"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzoo;->zzbhh:Ljava/lang/RuntimeException;
    :try_end_193
    .catchall {:try_start_18a .. :try_end_193} :catchall_174

    monitor-enter p0

    :try_start_194
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    :goto_198
    return v7

    :catchall_199
    move-exception v0

    monitor-exit p0
    :try_end_19b
    .catchall {:try_start_194 .. :try_end_19b} :catchall_199

    throw v0

    :goto_19c
    monitor-enter p0

    :try_start_19d
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_1a1
    .catchall {:try_start_19d .. :try_end_1a1} :catchall_1a2

    throw v0

    :catchall_1a2
    move-exception v0

    :try_start_1a3
    monitor-exit p0
    :try_end_1a4
    .catchall {:try_start_1a3 .. :try_end_1a4} :catchall_1a2

    throw v0
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->handler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final release()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final zzl(Z)Lcom/google/android/gms/internal/ads/zzom;
    .registers 5

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->handler:Landroid/os/Handler;

    monitor-enter p0

    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzbhi:Lcom/google/android/gms/internal/ads/zzom;

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzbhh:Ljava/lang/RuntimeException;

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzbhg:Ljava/lang/Error;
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_48

    if-nez p1, :cond_31

    :try_start_2b
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_2f
    .catchall {:try_start_2b .. :try_end_2e} :catchall_48

    goto :goto_1f

    :catch_2f
    const/4 v2, 0x1

    goto :goto_1f

    :cond_31
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_48

    if-eqz v2, :cond_3b

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_3b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzbhh:Ljava/lang/RuntimeException;

    if-nez p1, :cond_47

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzbhg:Ljava/lang/Error;

    if-nez p1, :cond_46

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzbhi:Lcom/google/android/gms/internal/ads/zzom;

    return-object p1

    :cond_46
    throw p1

    :cond_47
    throw p1

    :catchall_48
    move-exception p1

    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    goto :goto_4c

    :goto_4b
    throw p1

    :goto_4c
    goto :goto_4b
.end method
