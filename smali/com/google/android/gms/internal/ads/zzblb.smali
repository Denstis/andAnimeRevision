###### Class com.google.android.gms.internal.ads.zzblb (com.google.android.gms.internal.ads.zzblb)
.class final Lcom/google/android/gms/internal/ads/zzblb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdcz<",
        "Lcom/google/android/gms/internal/ads/zzbkk;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzffs:Lcom/google/android/gms/internal/ads/zzdcz;

.field private final synthetic zzfft:Lcom/google/android/gms/internal/ads/zzbkv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbkv;Lcom/google/android/gms/internal/ads/zzdcz;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblb;->zzfft:Lcom/google/android/gms/internal/ads/zzbkv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzblb;->zzffs:Lcom/google/android/gms/internal/ads/zzdcz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbkk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblb;->zzfft:Lcom/google/android/gms/internal/ads/zzbkv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbkv;->zza(Lcom/google/android/gms/internal/ads/zzbkv;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblb;->zzffs:Lcom/google/android/gms/internal/ads/zzdcz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdcz;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblb;->zzfft:Lcom/google/android/gms/internal/ads/zzbkv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbkv;->zza(Lcom/google/android/gms/internal/ads/zzbkv;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblb;->zzffs:Lcom/google/android/gms/internal/ads/zzdcz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdcz;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method
