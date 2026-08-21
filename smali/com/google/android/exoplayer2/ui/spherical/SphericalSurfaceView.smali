###### Class com.google.android.exoplayer2.ui.spherical.SphericalSurfaceView (com.google.android.exoplayer2.ui.spherical.SphericalSurfaceView)
.class public final Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;,
        Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;,
        Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$SurfaceListener;
    }
.end annotation


# static fields
.field private static final FIELD_OF_VIEW_DEGREES:I = 0x5a

.field private static final PX_PER_DEGREES:F = 25.0f

.field static final UPRIGHT_ROLL:F = 3.1415927f

.field private static final Z_FAR:F = 100.0f

.field private static final Z_NEAR:F = 0.1f


# instance fields
.field private final mainHandler:Landroid/os/Handler;

.field private final orientationSensor:Landroid/hardware/Sensor;

.field private final phoneOrientationListener:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;

.field private final renderer:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;

.field private final scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private surface:Landroid/view/Surface;

.field private surfaceListener:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$SurfaceListener;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final touchTracker:Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;

.field private videoComponent:Lcom/google/android/exoplayer2/Player$VideoComponent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->mainHandler:Landroid/os/Handler;

    const-string p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->sensorManager:Landroid/hardware/SensorManager;

    sget p2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x12

    if-lt p2, v0, :cond_2b

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    goto :goto_2c

    :cond_2b
    const/4 p2, 0x0

    :goto_2c
    if-nez p2, :cond_36

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    :cond_36
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->orientationSensor:Landroid/hardware/Sensor;

    new-instance p2, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    new-instance p2, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    invoke-direct {p2, p0, v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;-><init>(Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->renderer:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;

    new-instance p2, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->renderer:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-direct {p2, p1, v0, v1}, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ui/spherical/TouchTracker$Listener;F)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->touchTracker:Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance p2, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->touchTracker:Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->renderer:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;

    invoke-direct {p2, p1, v0, v1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;-><init>(Landroid/view/Display;Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->phoneOrientationListener:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->renderer:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->touchTracker:Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;Landroid/graphics/SurfaceTexture;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method private onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/ui/spherical/b;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/ui/spherical/b;-><init>(Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static releaseSurface(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V
    .registers 2

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_5
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_a
    return-void
.end method


# virtual methods
.method public synthetic a()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->surfaceListener:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$SurfaceListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$SurfaceListener;->surfaceChanged(Landroid/view/Surface;)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->surface:Landroid/view/Surface;

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->releaseSurface(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->surface:Landroid/view/Surface;

    :cond_17
    return-void
.end method

.method public synthetic a(Landroid/graphics/SurfaceTexture;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->surface:Landroid/view/Surface;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->surface:Landroid/view/Surface;

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->surfaceListener:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$SurfaceListener;

    if-eqz p1, :cond_16

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->surface:Landroid/view/Surface;

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$SurfaceListener;->surfaceChanged(Landroid/view/Surface;)V

    :cond_16
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->releaseSurface(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/ui/spherical/c;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ui/spherical/c;-><init>(Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->orientationSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->phoneOrientationListener:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_b
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->orientationSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->phoneOrientationListener:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_f
    return-void
.end method

.method public setDefaultStereoMode(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->setDefaultStereoMode(I)V

    return-void
.end method

.method public setSingleTapListener(Lcom/google/android/exoplayer2/ui/spherical/SingleTapListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->touchTracker:Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;->setSingleTapListener(Lcom/google/android/exoplayer2/ui/spherical/SingleTapListener;)V

    return-void
.end method

.method public setSurfaceListener(Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$SurfaceListener;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->surfaceListener:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$SurfaceListener;

    return-void
.end method

.method public setVideoComponent(Lcom/google/android/exoplayer2/Player$VideoComponent;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->videoComponent:Lcom/google/android/exoplayer2/Player$VideoComponent;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_e

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->clearVideoSurface(Landroid/view/Surface;)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->videoComponent:Lcom/google/android/exoplayer2/Player$VideoComponent;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->clearVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->videoComponent:Lcom/google/android/exoplayer2/Player$VideoComponent;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->clearCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V

    :cond_1c
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->videoComponent:Lcom/google/android/exoplayer2/Player$VideoComponent;

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->videoComponent:Lcom/google/android/exoplayer2/Player$VideoComponent;

    if-eqz p1, :cond_35

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$VideoComponent;->setVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->videoComponent:Lcom/google/android/exoplayer2/Player$VideoComponent;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$VideoComponent;->setCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->videoComponent:Lcom/google/android/exoplayer2/Player$VideoComponent;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->surface:Landroid/view/Surface;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$VideoComponent;->setVideoSurface(Landroid/view/Surface;)V

    :cond_35
    return-void
.end method

###### Class com.google.android.exoplayer2.ui.spherical.SphericalSurfaceView.PhoneOrientationListener (com.google.android.exoplayer2.ui.spherical.SphericalSurfaceView$PhoneOrientationListener)
.class Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneOrientationListener"
.end annotation


# instance fields
.field private final angles:[F

.field private final display:Landroid/view/Display;

.field private final phoneInWorldSpaceMatrix:[F

.field private final remappedPhoneMatrix:[F

.field private final renderer:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;

.field private final touchTracker:Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;


# direct methods
.method public constructor <init>(Landroid/view/Display;Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->phoneInWorldSpaceMatrix:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->remappedPhoneMatrix:[F

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->angles:[F

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->display:Landroid/view/Display;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->touchTracker:Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->renderer:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->remappedPhoneMatrix:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->display:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/16 v0, 0x82

    const/16 v1, 0x81

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_24

    if-eq p1, v2, :cond_1f

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1d

    const/4 v0, 0x1

    const/4 v1, 0x2

    goto :goto_25

    :cond_1d
    const/4 v1, 0x1

    goto :goto_25

    :cond_1f
    const/16 v0, 0x81

    const/16 v1, 0x82

    goto :goto_25

    :cond_24
    const/4 v0, 0x2

    :goto_25
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->remappedPhoneMatrix:[F

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->phoneInWorldSpaceMatrix:[F

    invoke-static {p1, v0, v1, v4}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->phoneInWorldSpaceMatrix:[F

    const/16 v0, 0x83

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->remappedPhoneMatrix:[F

    invoke-static {p1, v3, v0, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->remappedPhoneMatrix:[F

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->angles:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->angles:[F

    aget p1, p1, v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->touchTracker:Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;->setRoll(F)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->phoneInWorldSpaceMatrix:[F

    const/4 v2, 0x0

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->renderer:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$PhoneOrientationListener;->phoneInWorldSpaceMatrix:[F

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->setDeviceOrientation([FF)V

    return-void
.end method

###### Class com.google.android.exoplayer2.ui.spherical.SphericalSurfaceView.Renderer (com.google.android.exoplayer2.ui.spherical.SphericalSurfaceView$Renderer)
.class Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/google/android/exoplayer2/ui/spherical/TouchTracker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Renderer"
.end annotation


# instance fields
.field private final deviceOrientationMatrix:[F

.field private deviceRoll:F

.field private final projectionMatrix:[F

.field private final scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

.field private final tempMatrix:[F

.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;

.field private touchPitch:F

.field private final touchPitchMatrix:[F

.field private final touchYawMatrix:[F

.field private final viewMatrix:[F

.field private final viewProjectionMatrix:[F


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->this$0:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->projectionMatrix:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->viewProjectionMatrix:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->deviceOrientationMatrix:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->touchPitchMatrix:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->touchYawMatrix:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->viewMatrix:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->tempMatrix:[F

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->deviceOrientationMatrix:[F

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->touchPitchMatrix:[F

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->touchYawMatrix:[F

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const p1, 0x40490fdb    # (float)Math.PI

    iput p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->deviceRoll:F

    return-void
.end method

.method private calculateFieldOfViewInYDirection(F)F
    .registers 6

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_2b

    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    double-to-float p1, v0

    return p1

    :cond_2b
    const/high16 p1, 0x42b40000    # 90.0f

    return p1
.end method

.method private updatePitchMatrix()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->touchPitchMatrix:[F

    iget v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->touchPitch:F

    neg-float v2, v1

    iget v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->deviceRoll:F

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->deviceRoll:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 14

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->tempMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->deviceOrientationMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->touchYawMatrix:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->viewMatrix:[F

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->touchPitchMatrix:[F

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->tempMatrix:[F

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2e

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->viewProjectionMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->projectionMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->viewMatrix:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->viewProjectionMatrix:[F

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->drawFrame([FI)V

    return-void

    :catchall_2e
    move-exception p1

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public declared-synchronized onScrollChange(Landroid/graphics/PointF;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->touchPitch:F

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->updatePitchMatrix()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->touchYawMatrix:[F

    const/4 v2, 0x0

    iget p1, p1, Landroid/graphics/PointF;->x:F

    neg-float v3, p1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 10

    const/4 p1, 0x0

    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    int-to-float p1, p2

    int-to-float p2, p3

    div-float v3, p1, p2

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->calculateFieldOfViewInYDirection(F)F

    move-result v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->projectionMatrix:[F

    const/4 v1, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    return-void
.end method

.method public declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->this$0:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->init()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->access$000(Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;Landroid/graphics/SurfaceTexture;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDeviceOrientation([FF)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->deviceOrientationMatrix:[F

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->deviceOrientationMatrix:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    neg-float p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->deviceRoll:F

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$Renderer;->updatePitchMatrix()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.google.android.exoplayer2.ui.spherical.SphericalSurfaceView.SurfaceListener (com.google.android.exoplayer2.ui.spherical.SphericalSurfaceView$SurfaceListener)
.class public interface abstract Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView$SurfaceListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SurfaceListener"
.end annotation


# virtual methods
.method public abstract surfaceChanged(Landroid/view/Surface;)V
.end method

###### Class com.google.android.exoplayer2.ui.spherical.b (com.google.android.exoplayer2.ui.spherical.b)
.class public final synthetic Lcom/google/android/exoplayer2/ui/spherical/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;

.field private final synthetic c:Landroid/graphics/SurfaceTexture;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;Landroid/graphics/SurfaceTexture;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/b;->b:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/b;->c:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/b;->b:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/b;->c:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->a(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

###### Class com.google.android.exoplayer2.ui.spherical.c (com.google.android.exoplayer2.ui.spherical.c)
.class public final synthetic Lcom/google/android/exoplayer2/ui/spherical/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/c;->b:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/c;->b:Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalSurfaceView;->a()V

    return-void
.end method
