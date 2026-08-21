###### Class com.google.android.gms.internal.ads.zzdpz (com.google.android.gms.internal.ads.zzdpz)
.class final Lcom/google/android/gms/internal/ads/zzdpz;
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

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdpz;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzj([BII)[B
    .registers 6

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
