###### Class com.google.android.gms.internal.ads.zzbmr (com.google.android.gms.internal.ads.zzbmr)
.class public final Lcom/google/android/gms/internal/ads/zzbmr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzcwe;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfgv:Lcom/google/android/gms/internal/ads/zzbmk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbmk;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmr;->zzfgv:Lcom/google/android/gms/internal/ads/zzbmk;

    return-void
.end method

.method public static zzi(Lcom/google/android/gms/internal/ads/zzbmk;)Lcom/google/android/gms/internal/ads/zzbmr;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbmr;-><init>(Lcom/google/android/gms/internal/ads/zzbmk;)V

    return-object v0
.end method

.method public static zzj(Lcom/google/android/gms/internal/ads/zzbmk;)Lcom/google/android/gms/internal/ads/zzcwe;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbmk;->zzafu()Lcom/google/android/gms/internal/ads/zzcwe;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzcwe;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmr;->zzfgv:Lcom/google/android/gms/internal/ads/zzbmk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbmr;->zzj(Lcom/google/android/gms/internal/ads/zzbmk;)Lcom/google/android/gms/internal/ads/zzcwe;

    move-result-object v0

    return-object v0
.end method
