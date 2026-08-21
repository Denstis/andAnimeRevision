###### Class com.google.android.gms.internal.ads.zzzz (com.google.android.gms.internal.ads.zzzz)
.class public final Lcom/google/android/gms/internal/ads/zzzz;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final time:J

.field private final zzcuo:Ljava/lang/String;

.field private final zzcup:Lcom/google/android/gms/internal/ads/zzzz;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzzz;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzzz;->time:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzzz;->zzcuo:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzzz;->zzcup:Lcom/google/android/gms/internal/ads/zzzz;

    return-void
.end method


# virtual methods
.method public final getTime()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzzz;->time:J

    return-wide v0
.end method

.method public final zzpz()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzz;->zzcuo:Ljava/lang/String;

    return-object v0
.end method

.method public final zzqa()Lcom/google/android/gms/internal/ads/zzzz;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzz;->zzcup:Lcom/google/android/gms/internal/ads/zzzz;

    return-object v0
.end method
