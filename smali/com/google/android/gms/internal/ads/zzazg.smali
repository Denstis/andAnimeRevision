###### Class com.google.android.gms.internal.ads.zzazg (com.google.android.gms.internal.ads.zzazg)
.class final Lcom/google/android/gms/internal/ads/zzazg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final zzdzb:Landroid/hardware/SensorManager;

.field private final zzdzc:Ljava/lang/Object;

.field private final zzdzd:Landroid/view/Display;

.field private final zzdze:[F

.field private final zzdzf:[F

.field private zzdzg:[F

.field private zzdzh:Landroid/os/Handler;

.field private zzdzi:Lcom/google/android/gms/internal/ads/zzazi;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzb:Landroid/hardware/SensorManager;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzd:Landroid/view/Display;

    const/16 p1, 0x9

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdze:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzf:[F

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzc:Ljava/lang/Object;

    return-void
.end method

.method private final zzk(II)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzf:[F

    aget v1, v0, p1

    aget v2, v0, p2

    aput v2, v0, p1

    aput v1, v0, p2

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    aget v1, p1, v4

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    aget v1, p1, v3

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_79

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzg:[F

    const/16 v5, 0x9

    if-nez v2, :cond_25

    new-array v2, v5, [F

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzg:[F

    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_7d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdze:[F

    invoke-static {v1, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzd:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/16 v1, 0x81

    const/4 v2, 0x3

    if-eq p1, v4, :cond_54

    const/16 v6, 0x82

    if-eq p1, v3, :cond_4c

    if-eq p1, v2, :cond_44

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdze:[F

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzf:[F

    invoke-static {p1, v0, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5b

    :cond_44
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdze:[F

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzf:[F

    invoke-static {p1, v6, v4, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_5b

    :cond_4c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdze:[F

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzf:[F

    invoke-static {p1, v1, v6, v7}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_5b

    :cond_54
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdze:[F

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzf:[F

    invoke-static {p1, v3, v1, v6}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    :goto_5b
    invoke-direct {p0, v4, v2}, Lcom/google/android/gms/internal/ads/zzazg;->zzk(II)V

    const/4 p1, 0x6

    invoke-direct {p0, v3, p1}, Lcom/google/android/gms/internal/ads/zzazg;->zzk(II)V

    const/4 p1, 0x5

    const/4 v1, 0x7

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzazg;->zzk(II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzc:Ljava/lang/Object;

    monitor-enter p1

    :try_start_6a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzf:[F

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzg:[F

    invoke-static {v1, v0, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit p1
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_7a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzi:Lcom/google/android/gms/internal/ads/zzazi;

    if-eqz p1, :cond_79

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzazi;->zzst()V

    :cond_79
    return-void

    :catchall_7a
    move-exception v0

    :try_start_7b
    monitor-exit p1
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v0

    :catchall_7d
    move-exception p1

    :try_start_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw p1
.end method

.method final start()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzh:Landroid/os/Handler;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzb:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-nez v0, :cond_15

    const-string v0, "No Sensor of TYPE_ROTATION_VECTOR"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    return-void

    :cond_15
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "OrientationMonitor"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdac;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzdac;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzh:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzb:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzh:Landroid/os/Handler;

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "SensorManager.registerListener failed."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzazg;->stop()V

    :cond_3d
    return-void
.end method

.method final stop()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzh:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzb:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzh:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzazf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzazf;-><init>(Lcom/google/android/gms/internal/ads/zzazg;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzh:Landroid/os/Handler;

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzazi;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzi:Lcom/google/android/gms/internal/ads/zzazi;

    return-void
.end method

.method final zza([F)Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzc:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzg:[F

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return v2

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzg:[F

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzdzg:[F

    array-length v3, v3

    invoke-static {v1, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method
