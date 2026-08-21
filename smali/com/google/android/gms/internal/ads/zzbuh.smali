###### Class com.google.android.gms.internal.ads.zzbuh (com.google.android.gms.internal.ads.zzbuh)
.class public final Lcom/google/android/gms/internal/ads/zzbuh;
.super Lcom/google/android/gms/internal/ads/zzabg;
.source ""


# instance fields
.field private final zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

.field private zzfkn:Lcom/google/android/gms/dynamic/IObjectWrapper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbur;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzabg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuh;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    return-void
.end method

.method private final zzahj()F
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuh;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbur;->getVideoController()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwr;->getAspectRatio()F

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    const-string v1, "Remote exception getting video controller aspect ratio."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static zzar(Lcom/google/android/gms/dynamic/IObjectWrapper;)F
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eq v1, v2, :cond_24

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    :cond_24
    return v0
.end method


# virtual methods
.method public final getAspectRatio()F
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzctg:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuh;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbur;->getMediaContentAspectRatio()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuh;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbur;->getMediaContentAspectRatio()F

    move-result v0

    return v0

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuh;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbur;->getVideoController()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbuh;->zzahj()F

    move-result v0

    return v0

    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuh;->zzfkn:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_3b

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbuh;->zzar(Lcom/google/android/gms/dynamic/IObjectWrapper;)F

    move-result v0

    return v0

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuh;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbur;->zzahr()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v0

    if-nez v0, :cond_44

    return v1

    :cond_44
    if-eqz v0, :cond_5f

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabi;->getWidth()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5f

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabi;->getHeight()I

    move-result v2

    if-eq v2, v3, :cond_5f

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabi;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabi;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_60

    :cond_5f
    const/4 v2, 0x0

    :goto_60
    cmpl-float v1, v2, v1

    if-eqz v1, :cond_65

    return v2

    :cond_65
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabi;->zzqi()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbuh;->zzar(Lcom/google/android/gms/dynamic/IObjectWrapper;)F

    move-result v0

    return v0
.end method

.method public final zzql()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuh;->zzfkn:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuh;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbur;->zzahr()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    return-object v0

    :cond_f
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabi;->zzqi()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzt(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcoh:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuh;->zzfkn:Lcom/google/android/gms/dynamic/IObjectWrapper;

    :cond_14
    return-void
.end method
