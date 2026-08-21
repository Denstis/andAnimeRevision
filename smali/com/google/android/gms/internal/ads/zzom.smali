###### Class com.google.android.gms.internal.ads.zzom (com.google.android.gms.internal.ads.zzom)
.class public final Lcom/google/android/gms/internal/ads/zzom;
.super Landroid/view/Surface;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# static fields
.field private static zzbha:Z

.field private static zzbhb:Z


# instance fields
.field private final zzayy:Z

.field private final zzbhc:Lcom/google/android/gms/internal/ads/zzoo;

.field private zzbhd:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzoo;Landroid/graphics/SurfaceTexture;Z)V
    .registers 4

    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzom;->zzbhc:Lcom/google/android/gms/internal/ads/zzoo;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzom;->zzayy:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzoo;Landroid/graphics/SurfaceTexture;ZLcom/google/android/gms/internal/ads/zzol;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzom;-><init>(Lcom/google/android/gms/internal/ads/zzoo;Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method public static zzc(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzom;
    .registers 4

    sget v0, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1f

    if-eqz p1, :cond_11

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzom;->zzc(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzoo;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoo;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzoo;->zzl(Z)Lcom/google/android/gms/internal/ads/zzom;

    move-result-object p0

    return-object p0

    :cond_1f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unsupported prior to API level 17"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized zzc(Landroid/content/Context;)Z
    .registers 6

    const-class v0, Lcom/google/android/gms/internal/ads/zzom;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzom;->zzbhb:Z

    if-nez v1, :cond_53

    sget v1, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v2, 0x11

    const/4 v3, 0x1

    if-lt v1, v2, :cond_51

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    const/16 v4, 0x3055

    invoke-static {v2, v4}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4f

    const-string v4, "EGL_EXT_protected_content"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4f

    sget v2, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v4, 0x18

    if-ne v2, v4, :cond_4b

    sget-object v2, Lcom/google/android/gms/internal/ads/zzof;->MODEL:Ljava/lang/String;

    const-string v4, "SM-G950"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    sget-object v2, Lcom/google/android/gms/internal/ads/zzof;->MODEL:Ljava/lang/String;

    const-string v4, "SM-G955"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    :cond_3d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "android.hardware.vr.high_performance"

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4b

    const/4 p0, 0x1

    goto :goto_4c

    :cond_4b
    const/4 p0, 0x0

    :goto_4c
    if-nez p0, :cond_4f

    const/4 v1, 0x1

    :cond_4f
    sput-boolean v1, Lcom/google/android/gms/internal/ads/zzom;->zzbha:Z

    :cond_51
    sput-boolean v3, Lcom/google/android/gms/internal/ads/zzom;->zzbhb:Z

    :cond_53
    sget-boolean p0, Lcom/google/android/gms/internal/ads/zzom;->zzbha:Z
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_57

    monitor-exit v0

    return p0

    :catchall_57
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final release()V
    .registers 3

    invoke-super {p0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzom;->zzbhc:Lcom/google/android/gms/internal/ads/zzoo;

    monitor-enter v0

    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzom;->zzbhd:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzom;->zzbhc:Lcom/google/android/gms/internal/ads/zzoo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzoo;->release()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzom;->zzbhd:Z

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
