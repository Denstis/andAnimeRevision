###### Class com.google.android.gms.internal.ads.zzbdj (com.google.android.gms.internal.ads.zzbdj)
.class public final Lcom/google/android/gms/internal/ads/zzbdj;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final heightPixels:I

.field private final type:I

.field public final widthPixels:I


# direct methods
.method private constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdj;->type:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbdj;->widthPixels:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbdj;->heightPixels:I

    return-void
.end method

.method public static zzaar()Lcom/google/android/gms/internal/ads/zzbdj;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdj;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/gms/internal/ads/zzbdj;-><init>(III)V

    return-object v0
.end method

.method public static zzaas()Lcom/google/android/gms/internal/ads/zzbdj;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdj;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzbdj;-><init>(III)V

    return-object v0
.end method

.method public static zzaat()Lcom/google/android/gms/internal/ads/zzbdj;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdj;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzbdj;-><init>(III)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzua;)Lcom/google/android/gms/internal/ads/zzbdj;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzua;->zzccm:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    new-instance p0, Lcom/google/android/gms/internal/ads/zzbdj;

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbdj;-><init>(III)V

    return-object p0

    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzua;->zzcco:Z

    if-eqz v0, :cond_17

    new-instance p0, Lcom/google/android/gms/internal/ads/zzbdj;

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbdj;-><init>(III)V

    return-object p0

    :cond_17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzua;->zzbmb:Z

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdj;->zzaar()Lcom/google/android/gms/internal/ads/zzbdj;

    move-result-object p0

    return-object p0

    :cond_20
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzua;->widthPixels:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzua;->heightPixels:I

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbdj;->zzp(II)Lcom/google/android/gms/internal/ads/zzbdj;

    move-result-object p0

    return-object p0
.end method

.method public static zzp(II)Lcom/google/android/gms/internal/ads/zzbdj;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdj;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbdj;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final isFluid()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdj;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzaau()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdj;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzaav()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdj;->type:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final zzaaw()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdj;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzaax()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdj;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method
