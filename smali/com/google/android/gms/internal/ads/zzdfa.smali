###### Class com.google.android.gms.internal.ads.zzdfa (com.google.android.gms.internal.ads.zzdfa)
.class final Lcom/google/android/gms/internal/ads/zzdfa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdey$zza;


# instance fields
.field private final synthetic zzgtb:Lcom/google/android/gms/internal/ads/zzden;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzden;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfa;->zzgtb:Lcom/google/android/gms/internal/ads/zzden;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzapw()Lcom/google/android/gms/internal/ads/zzden;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzden<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfa;->zzgtb:Lcom/google/android/gms/internal/ads/zzden;

    return-object v0
.end method

.method public final zzapx()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfa;->zzgtb:Lcom/google/android/gms/internal/ads/zzden;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final zzapy()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfa;->zzgtb:Lcom/google/android/gms/internal/ads/zzden;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzden;->zzapo()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzden;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TQ;>;)",
            "Lcom/google/android/gms/internal/ads/zzden<",
            "TQ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfa;->zzgtb:Lcom/google/android/gms/internal/ads/zzden;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzden;->zzapo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfa;->zzgtb:Lcom/google/android/gms/internal/ads/zzden;

    return-object p1

    :cond_f
    new-instance p1, Ljava/lang/InternalError;

    const-string v0, "This should never be called, as we always first check supportedPrimitives."

    invoke-direct {p1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
.end method
