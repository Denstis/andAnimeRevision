###### Class com.google.android.gms.internal.ads.zzqh (com.google.android.gms.internal.ads.zzqh)
.class final Lcom/google/android/gms/internal/ads/zzqh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/ads/zzqn;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzqi;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqn;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzqn;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzqn;->zzbqf:I

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzqn;->zzbqf:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_c

    return v0

    :cond_c
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzqn;->value:J

    iget-wide p1, p2, Lcom/google/android/gms/internal/ads/zzqn;->value:J

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method
