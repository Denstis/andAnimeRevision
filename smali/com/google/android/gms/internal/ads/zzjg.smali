###### Class com.google.android.gms.internal.ads.zzjg (com.google.android.gms.internal.ads.zzjg)
.class public final Lcom/google/android/gms/internal/ads/zzjg;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final zzanh:I

.field public final zzani:[B


# direct methods
.method public constructor <init>(I[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjg;->zzanh:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzjg;->zzani:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    const-class v2, Lcom/google/android/gms/internal/ads/zzjg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_23

    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzjg;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzjg;->zzanh:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzjg;->zzanh:I

    if-ne v2, v3, :cond_23

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjg;->zzani:[B

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzjg;->zzani:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_23

    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjg;->zzanh:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjg;->zzani:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
