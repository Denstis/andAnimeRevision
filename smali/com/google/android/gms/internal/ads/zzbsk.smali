###### Class com.google.android.gms.internal.ads.zzbsk (com.google.android.gms.internal.ads.zzbsk)
.class public final Lcom/google/android/gms/internal/ads/zzbsk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzbbw;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfin:Lcom/google/android/gms/internal/ads/zzbrx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbrx;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsk;->zzfin:Lcom/google/android/gms/internal/ads/zzbrx;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzbrx;)Lcom/google/android/gms/internal/ads/zzbsk;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbsk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbsk;-><init>(Lcom/google/android/gms/internal/ads/zzbrx;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsk;->zzfin:Lcom/google/android/gms/internal/ads/zzbrx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbrx;->zzaeo()Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v0

    return-object v0
.end method
