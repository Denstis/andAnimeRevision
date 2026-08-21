###### Class com.google.android.gms.internal.ads.zzcdr (com.google.android.gms.internal.ads.zzcdr)
.class public abstract Lcom/google/android/gms/internal/ads/zzcdr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdcj<",
        "Lcom/google/android/gms/internal/ads/zzape;",
        "Lcom/google/android/gms/internal/ads/zzcvz;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfun:Lcom/google/android/gms/internal/ads/zzbox;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbox;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zzfun:Lcom/google/android/gms/internal/ads/zzbox;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcdr;)Lcom/google/android/gms/internal/ads/zzbox;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zzfun:Lcom/google/android/gms/internal/ads/zzbox;

    return-object p0
.end method


# virtual methods
.method protected abstract zze(Lcom/google/android/gms/internal/ads/zzape;)Lcom/google/android/gms/internal/ads/zzddi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzape;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzcvz;",
            ">;"
        }
    .end annotation
.end method

.method public final synthetic zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzape;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zzfun:Lcom/google/android/gms/internal/ads/zzbox;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbox;->zzb(Lcom/google/android/gms/internal/ads/zzape;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcdr;->zze(Lcom/google/android/gms/internal/ads/zzape;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcdq;-><init>(Lcom/google/android/gms/internal/ads/zzcdr;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwn:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdcy;->zza(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdcz;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method
