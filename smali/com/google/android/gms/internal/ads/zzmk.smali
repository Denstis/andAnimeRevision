###### Class com.google.android.gms.internal.ads.zzmk (com.google.android.gms.internal.ads.zzmk)
.class public final Lcom/google/android/gms/internal/ads/zzmk;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final zzbdc:Lcom/google/android/gms/internal/ads/zzmk;


# instance fields
.field public final length:I

.field private zzafv:I

.field private final zzbdd:[Lcom/google/android/gms/internal/ads/zzmh;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzmk;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzmh;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzmk;-><init>([Lcom/google/android/gms/internal/ads/zzmh;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzmk;->zzbdc:Lcom/google/android/gms/internal/ads/zzmk;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/zzmh;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzbdd:[Lcom/google/android/gms/internal/ads/zzmh;

    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmk;->length:I

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

    const-class v2, Lcom/google/android/gms/internal/ads/zzmk;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_23

    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzmk;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmk;->length:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzmk;->length:I

    if-ne v2, v3, :cond_23

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzbdd:[Lcom/google/android/gms/internal/ads/zzmh;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzmk;->zzbdd:[Lcom/google/android/gms/internal/ads/zzmh;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzafv:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzbdd:[Lcom/google/android/gms/internal/ads/zzmh;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzafv:I

    :cond_c
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzafv:I

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzmh;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmk;->length:I

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzbdd:[Lcom/google/android/gms/internal/ads/zzmh;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_c

    return v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    const/4 p1, -0x1

    return p1
.end method

.method public final zzav(I)Lcom/google/android/gms/internal/ads/zzmh;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzbdd:[Lcom/google/android/gms/internal/ads/zzmh;

    aget-object p1, v0, p1

    return-object p1
.end method
