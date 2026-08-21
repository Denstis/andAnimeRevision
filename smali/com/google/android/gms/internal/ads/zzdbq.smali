###### Class com.google.android.gms.internal.ads.zzdbq (com.google.android.gms.internal.ads.zzdbq)
.class final Lcom/google/android/gms/internal/ads/zzdbq;
.super Lcom/google/android/gms/internal/ads/zzdbd;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdbd<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient offset:I

.field private final transient size:I

.field private final transient zzgpo:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;II)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdbd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbq;->zzgpo:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdbq;->offset:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdbq;->size:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbq;->size:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdaq;->zzr(II)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbq;->zzgpo:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdbq;->offset:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbq;->size:I

    return v0
.end method

.method final zzaoo()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
