###### Class com.google.android.gms.internal.ads.zzbyk (com.google.android.gms.internal.ads.zzbyk)
.class final Lcom/google/android/gms/internal/ads/zzbyk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdcz<",
        "Lcom/google/android/gms/internal/ads/zzbbw;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfpt:Ljava/lang/String;

.field private final synthetic zzfpu:Lcom/google/android/gms/internal/ads/zzaer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbyh;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyk;->zzfpt:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbyk;->zzfpu:Lcom/google/android/gms/internal/ads/zzaer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyk;->zzfpt:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyk;->zzfpu:Lcom/google/android/gms/internal/ads/zzaer;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbbw;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method
