###### Class com.google.android.gms.internal.ads.zzafk (com.google.android.gms.internal.ads.zzafk)
.class final Lcom/google/android/gms/internal/ads/zzafk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdcj<",
        "Lcom/google/android/gms/internal/ads/zzafj;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzcyk:Lcom/google/android/gms/internal/ads/zzafd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzafl;Lcom/google/android/gms/internal/ads/zzafd;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzafk;->zzcyk:Lcom/google/android/gms/internal/ads/zzafd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzafj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxv;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafk;->zzcyk:Lcom/google/android/gms/internal/ads/zzafd;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzafn;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzafn;-><init>(Lcom/google/android/gms/internal/ads/zzafk;Lcom/google/android/gms/internal/ads/zzaxv;)V

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzafj;->zza(Lcom/google/android/gms/internal/ads/zzafd;Lcom/google/android/gms/internal/ads/zzafh;)V

    return-object v0
.end method
