###### Class com.google.android.exoplayer2.video.DummySurface (com.google.android.exoplayer2.video.DummySurface)
.class public final Lcom/google/android/exoplayer2/video/DummySurface;
.super Landroid/view/Surface;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;
    }
.end annotation


# static fields
.field private static final EXTENSION_PROTECTED_CONTENT:Ljava/lang/String; = "EGL_EXT_protected_content"

.field private static final EXTENSION_SURFACELESS_CONTEXT:Ljava/lang/String; = "EGL_KHR_surfaceless_context"

.field private static final TAG:Ljava/lang/String; = "DummySurface"

.field private static secureMode:I

.field private static secureModeInitialized:Z


# instance fields
.field public final secure:Z

.field private final thread:Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

.field private threadReleased:Z


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;Z)V
    .registers 4

    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->thread:Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/video/DummySurface;->secure:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;ZLcom/google/android/exoplayer2/video/DummySurface$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/DummySurface;-><init>(Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method private static assertApiLevel17OrHigher()V
    .registers 2

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported prior to API level 17"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSecureModeV24(Landroid/content/Context;)I
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1c

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "samsung"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v3, "XT1650"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    return v2

    :cond_1c
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v0, v1, :cond_2d

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.vr.high_performance"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2d

    return v2

    :cond_2d
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object p0

    const/16 v0, 0x3055

    invoke-static {p0, v0}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3a

    return v2

    :cond_3a
    const-string v0, "EGL_EXT_protected_content"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    return v2

    :cond_43
    const-string v0, "EGL_KHR_surfaceless_context"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4d

    const/4 p0, 0x1

    goto :goto_4e

    :cond_4d
    const/4 p0, 0x2

    :goto_4e
    return p0
.end method

.method public static declared-synchronized isSecureSupported(Landroid/content/Context;)Z
    .registers 6

    const-class v0, Lcom/google/android/exoplayer2/video/DummySurface;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/google/android/exoplayer2/video/DummySurface;->secureModeInitialized:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_19

    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v1, v4, :cond_11

    const/4 p0, 0x0

    goto :goto_15

    :cond_11
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/DummySurface;->getSecureModeV24(Landroid/content/Context;)I

    move-result p0

    :goto_15
    sput p0, Lcom/google/android/exoplayer2/video/DummySurface;->secureMode:I

    sput-boolean v2, Lcom/google/android/exoplayer2/video/DummySurface;->secureModeInitialized:Z

    :cond_19
    sget p0, Lcom/google/android/exoplayer2/video/DummySurface;->secureMode:I
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_21

    if-eqz p0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    monitor-exit v0

    return v2

    :catchall_21
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;
    .registers 3

    invoke-static {}, Lcom/google/android/exoplayer2/video/DummySurface;->assertApiLevel17OrHigher()V

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    invoke-static {p0}, Lcom/google/android/exoplayer2/video/DummySurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    new-instance p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;-><init>()V

    if-eqz p1, :cond_1c

    sget v0, Lcom/google/android/exoplayer2/video/DummySurface;->secureMode:I

    :cond_1c
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->init(I)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public release()V
    .registers 3

    invoke-super {p0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface;->thread:Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

    monitor-enter v0

    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->threadReleased:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->thread:Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->release()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->threadReleased:Z

    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method

###### Class com.google.android.exoplayer2.video.DummySurface.AnonymousClass1 (com.google.android.exoplayer2.video.DummySurface$1)
.class synthetic Lcom/google/android/exoplayer2/video/DummySurface$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/DummySurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.exoplayer2.video.DummySurface.DummySurfaceThread (com.google.android.exoplayer2.video.DummySurface$DummySurfaceThread)
.class Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;
.super Landroid/os/HandlerThread;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/DummySurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummySurfaceThread"
.end annotation


# static fields
.field private static final MSG_INIT:I = 0x1

.field private static final MSG_RELEASE:I = 0x2


# instance fields
.field private eglSurfaceTexture:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

.field private handler:Landroid/os/Handler;

.field private initError:Ljava/lang/Error;

.field private initException:Ljava/lang/RuntimeException;

.field private surface:Lcom/google/android/exoplayer2/video/DummySurface;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "dummySurface"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private initInternal(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->eglSurfaceTexture:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->eglSurfaceTexture:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->init(I)V

    new-instance v0, Lcom/google/android/exoplayer2/video/DummySurface;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->eglSurfaceTexture:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/exoplayer2/video/DummySurface;-><init>(Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;ZLcom/google/android/exoplayer2/video/DummySurface$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surface:Lcom/google/android/exoplayer2/video/DummySurface;

    return-void
.end method

.method private releaseInternal()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->eglSurfaceTexture:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->eglSurfaceTexture:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->release()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 p1, 0x2

    if-eq v0, p1, :cond_9

    return v1

    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->releaseInternal()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_10

    :goto_c
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_19

    :catchall_10
    move-exception p1

    :try_start_11
    const-string v0, "DummySurface"

    const-string v2, "Failed to release dummy surface"

    invoke-static {v0, v2, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1a

    goto :goto_c

    :goto_19
    return v1

    :catchall_1a
    move-exception p1

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    throw p1

    :cond_1f
    :try_start_1f
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initInternal(I)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_24} :catch_42
    .catch Ljava/lang/Error; {:try_start_1f .. :try_end_24} :catch_2f
    .catchall {:try_start_1f .. :try_end_24} :catchall_2d

    monitor-enter p0

    :try_start_25
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto :goto_51

    :catchall_2a
    move-exception p1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2a

    throw p1

    :catchall_2d
    move-exception p1

    goto :goto_55

    :catch_2f
    move-exception p1

    :try_start_30
    const-string v0, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    invoke-static {v0, v2, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initError:Ljava/lang/Error;
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_2d

    monitor-enter p0

    :try_start_3a
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto :goto_51

    :catchall_3f
    move-exception p1

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_3f

    throw p1

    :catch_42
    move-exception p1

    :try_start_43
    const-string v0, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    invoke-static {v0, v2, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initException:Ljava/lang/RuntimeException;
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_2d

    monitor-enter p0

    :try_start_4d
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    :goto_51
    return v1

    :catchall_52
    move-exception p1

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_52

    throw p1

    :goto_55
    monitor-enter p0

    :try_start_56
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_5b

    throw p1

    :catchall_5b
    move-exception p1

    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    goto :goto_5f

    :goto_5e
    throw p1

    :goto_5f
    goto :goto_5e
.end method

.method public init(I)Lcom/google/android/exoplayer2/video/DummySurface;
    .registers 5

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->eglSurfaceTexture:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    monitor-enter p0

    :try_start_18
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_23
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-nez p1, :cond_35

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initException:Ljava/lang/RuntimeException;

    if-nez p1, :cond_35

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initError:Ljava/lang/Error;
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_52

    if-nez p1, :cond_35

    :try_start_2f
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_33
    .catchall {:try_start_2f .. :try_end_32} :catchall_52

    goto :goto_23

    :catch_33
    const/4 v2, 0x1

    goto :goto_23

    :cond_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_52

    if-eqz v2, :cond_3f

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_3f
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initException:Ljava/lang/RuntimeException;

    if-nez p1, :cond_51

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initError:Ljava/lang/Error;

    if-nez p1, :cond_50

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surface:Lcom/google/android/exoplayer2/video/DummySurface;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/video/DummySurface;

    return-object p1

    :cond_50
    throw p1

    :cond_51
    throw p1

    :catchall_52
    move-exception p1

    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    goto :goto_56

    :goto_55
    throw p1

    :goto_56
    goto :goto_55
.end method

.method public release()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
