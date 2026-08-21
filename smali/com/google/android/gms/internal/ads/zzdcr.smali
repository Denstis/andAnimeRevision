###### Class com.google.android.gms.internal.ads.zzdcr (com.google.android.gms.internal.ads.zzdcr)
.class final Lcom/google/android/gms/internal/ads/zzdcr;
.super Lcom/google/android/gms/internal/ads/zzdce$zza;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdce$zza;"
    }
.end annotation


# instance fields
.field private final synthetic zzgrg:Lcom/google/android/gms/internal/ads/zzdcm;

.field private zzgrk:Lcom/google/android/gms/internal/ads/zzdco;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdcm;Lcom/google/android/gms/internal/ads/zzday;ZLcom/google/android/gms/internal/ads/zzdco;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzday<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "*>;>;Z",
            "Lcom/google/android/gms/internal/ads/zzdco;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcr;->zzgrg:Lcom/google/android/gms/internal/ads/zzdcm;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzdce$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdce;Lcom/google/android/gms/internal/ads/zzday;ZZ)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdcr;->zzgrk:Lcom/google/android/gms/internal/ads/zzdco;

    return-void
.end method


# virtual methods
.method final interruptTask()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcr;->zzgrk:Lcom/google/android/gms/internal/ads/zzdco;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddh;->interruptTask()V

    :cond_7
    return-void
.end method

.method final zza(ZILjava/lang/Object;)V
    .registers 4

    return-void
.end method

.method final zzapb()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzapb()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcr;->zzgrk:Lcom/google/android/gms/internal/ads/zzdco;

    return-void
.end method

.method final zzapc()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcr;->zzgrk:Lcom/google/android/gms/internal/ads/zzdco;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdco;->execute()V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcr;->zzgrg:Lcom/google/android/gms/internal/ads/zzdcm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdby;->isDone()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdaq;->checkState(Z)V

    return-void
.end method
