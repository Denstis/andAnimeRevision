###### Class com.google.android.gms.internal.ads.zzdpq (com.google.android.gms.internal.ads.zzdpq)
.class final Lcom/google/android/gms/internal/ads/zzdpq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdps;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdpp;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzj([BII)[B
    .registers 4

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method
