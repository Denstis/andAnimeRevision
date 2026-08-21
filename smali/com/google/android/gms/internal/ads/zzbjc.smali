###### Class com.google.android.gms.internal.ads.zzbjc (com.google.android.gms.internal.ads.zzbjc)
.class public final Lcom/google/android/gms/internal/ads/zzbjc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Ljava/util/Set<",
        "Lcom/google/android/gms/internal/ads/zzbqs<",
        "Lcom/google/android/gms/internal/ads/zzbog;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final zzfdd:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzbkf;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfec:Lcom/google/android/gms/internal/ads/zzbiv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbiv;Lcom/google/android/gms/internal/ads/zzdwo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbiv;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzbkf;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjc;->zzfec:Lcom/google/android/gms/internal/ads/zzbiv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbjc;->zzfdd:Lcom/google/android/gms/internal/ads/zzdwo;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbiv;Lcom/google/android/gms/internal/ads/zzbkf;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbiv;",
            "Lcom/google/android/gms/internal/ads/zzbkf;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbqs<",
            "Lcom/google/android/gms/internal/ads/zzbog;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Lcom/google/android/gms/internal/ads/zzbqs;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwn:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbqs;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjc;->zzfec:Lcom/google/android/gms/internal/ads/zzbiv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbjc;->zzfdd:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbkf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjc;->zza(Lcom/google/android/gms/internal/ads/zzbiv;Lcom/google/android/gms/internal/ads/zzbkf;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
