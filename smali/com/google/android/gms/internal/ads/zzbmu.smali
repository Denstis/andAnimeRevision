###### Class com.google.android.gms.internal.ads.zzbmu (com.google.android.gms.internal.ads.zzbmu)
.class public final Lcom/google/android/gms/internal/ads/zzbmu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzbmk$zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfgv:Lcom/google/android/gms/internal/ads/zzbmk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbmk;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfgv:Lcom/google/android/gms/internal/ads/zzbmk;

    return-void
.end method

.method public static zzl(Lcom/google/android/gms/internal/ads/zzbmk;)Lcom/google/android/gms/internal/ads/zzbmu;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbmu;-><init>(Lcom/google/android/gms/internal/ads/zzbmk;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfgv:Lcom/google/android/gms/internal/ads/zzbmk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbmk;->zzaft()Lcom/google/android/gms/internal/ads/zzbmk$zza;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbmk$zza;

    return-object v0
.end method
