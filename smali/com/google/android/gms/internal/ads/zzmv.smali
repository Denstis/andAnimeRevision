###### Class com.google.android.gms.internal.ads.zzmv (com.google.android.gms.internal.ads.zzmv)
.class public final Lcom/google/android/gms/internal/ads/zzmv;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final length:I

.field private zzafv:I

.field private final zzbec:[Lcom/google/android/gms/internal/ads/zzmt;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/zzmt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmv;->zzbec:[Lcom/google/android/gms/internal/ads/zzmt;

    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmv;->length:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1a

    const-class v0, Lcom/google/android/gms/internal/ads/zzmv;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_f

    goto :goto_1a

    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/ads/zzmv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmv;->zzbec:[Lcom/google/android/gms/internal/ads/zzmt;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzmv;->zzbec:[Lcom/google/android/gms/internal/ads/zzmt;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmv;->zzafv:I

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmv;->zzbec:[Lcom/google/android/gms/internal/ads/zzmt;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzmv;->zzafv:I

    :cond_e
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmv;->zzafv:I

    return v0
.end method

.method public final zzax(I)Lcom/google/android/gms/internal/ads/zzmt;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmv;->zzbec:[Lcom/google/android/gms/internal/ads/zzmt;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final zzhy()[Lcom/google/android/gms/internal/ads/zzmt;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmv;->zzbec:[Lcom/google/android/gms/internal/ads/zzmt;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzmt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzmt;

    return-object v0
.end method
