###### Class com.google.android.gms.internal.ads.zzajb (com.google.android.gms.internal.ads.zzajb)
.class final Lcom/google/android/gms/internal/ads/zzajb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaxz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaxz<",
        "Lcom/google/android/gms/internal/ads/zzail;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzcyd:Lcom/google/android/gms/internal/ads/zzaxv;

.field private final synthetic zzdbh:Lcom/google/android/gms/internal/ads/zzaia;

.field private final synthetic zzdbi:Ljava/lang/Object;

.field private final synthetic zzdbj:Lcom/google/android/gms/internal/ads/zzaiy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaiy;Lcom/google/android/gms/internal/ads/zzaia;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaxv;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzdbj:Lcom/google/android/gms/internal/ads/zzaiy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzdbh:Lcom/google/android/gms/internal/ads/zzaia;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzdbi:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzcyd:Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzh(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Lcom/google/android/gms/internal/ads/zzail;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzdbj:Lcom/google/android/gms/internal/ads/zzaiy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzdbh:Lcom/google/android/gms/internal/ads/zzaia;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzdbi:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzcyd:Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Lcom/google/android/gms/internal/ads/zzaiy;Lcom/google/android/gms/internal/ads/zzaia;Lcom/google/android/gms/internal/ads/zzail;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaxv;)V

    return-void
.end method
