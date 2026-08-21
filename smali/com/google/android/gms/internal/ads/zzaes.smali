###### Class com.google.android.gms.internal.ads.zzaes (com.google.android.gms.internal.ads.zzaes)
.class public final Lcom/google/android/gms/internal/ads/zzaes;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaer<",
        "Lcom/google/android/gms/internal/ads/zzbbw;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzcya:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzcxx:Lcom/google/android/gms/ads/internal/zzc;

.field private final zzcxy:Lcom/google/android/gms/internal/ads/zzamz;

.field private final zzcxz:Lcom/google/android/gms/internal/ads/zzani;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "resize"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "playVideo"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "storePicture"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    const-string v6, "createCalendarEvent"

    aput-object v6, v1, v5

    const/4 v6, 0x4

    const-string v7, "setOrientationProperties"

    aput-object v7, v1, v6

    const/4 v7, 0x5

    const-string v8, "closeResizedAd"

    aput-object v8, v1, v7

    const/4 v8, 0x6

    const-string v9, "unload"

    aput-object v9, v1, v8

    new-array v9, v0, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v8

    invoke-static {v1, v9}, Lcom/google/android/gms/common/util/CollectionUtils;->mapOfKeyValueArrays([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaes;->zzcya:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzc;Lcom/google/android/gms/internal/ads/zzamz;Lcom/google/android/gms/internal/ads/zzani;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaes;->zzcxx:Lcom/google/android/gms/ads/internal/zzc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaes;->zzcxy:Lcom/google/android/gms/internal/ads/zzamz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaes;->zzcxz:Lcom/google/android/gms/internal/ads/zzani;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 8

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbw;

    const-string v0, "a"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaes;->zzcya:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2d

    if-eq v0, v1, :cond_2d

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaes;->zzcxx:Lcom/google/android/gms/ads/internal/zzc;

    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/zzc;->zzjk()Z

    move-result v3

    if-nez v3, :cond_2d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaes;->zzcxx:Lcom/google/android/gms/ads/internal/zzc;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzc;->zzbl(Ljava/lang/String;)V

    return-void

    :cond_2d
    const/4 v3, 0x1

    if-eq v0, v3, :cond_6a

    const/4 v4, 0x3

    if-eq v0, v4, :cond_61

    const/4 v4, 0x4

    if-eq v0, v4, :cond_58

    if-eq v0, v2, :cond_4f

    const/4 p1, 0x6

    if-eq v0, p1, :cond_49

    if-eq v0, v1, :cond_43

    const-string p1, "Unknown MRAID command called."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

    return-void

    :cond_43
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaes;->zzcxz:Lcom/google/android/gms/internal/ads/zzani;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzani;->zzsm()V

    return-void

    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaes;->zzcxy:Lcom/google/android/gms/internal/ads/zzamz;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzamz;->zzv(Z)V

    return-void

    :cond_4f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanb;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzanb;-><init>(Lcom/google/android/gms/internal/ads/zzbbw;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanb;->execute()V

    return-void

    :cond_58
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamu;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzamu;-><init>(Lcom/google/android/gms/internal/ads/zzbbw;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamu;->execute()V

    return-void

    :cond_61
    new-instance v0, Lcom/google/android/gms/internal/ads/zzana;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzana;-><init>(Lcom/google/android/gms/internal/ads/zzbbw;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzana;->execute()V

    return-void

    :cond_6a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaes;->zzcxy:Lcom/google/android/gms/internal/ads/zzamz;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzamz;->zzg(Ljava/util/Map;)V

    return-void
.end method
