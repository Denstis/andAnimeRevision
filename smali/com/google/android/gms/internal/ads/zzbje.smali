###### Class com.google.android.gms.internal.ads.zzbje (com.google.android.gms.internal.ads.zzbje)
.class public final Lcom/google/android/gms/internal/ads/zzbje;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzbqs<",
        "Lcom/google/android/gms/internal/ads/zzbog;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzfdd:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzbkd;",
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
            "Lcom/google/android/gms/internal/ads/zzbkd;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbje;->zzfec:Lcom/google/android/gms/internal/ads/zzbiv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbje;->zzfdd:Lcom/google/android/gms/internal/ads/zzdwo;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbiv;Lcom/google/android/gms/internal/ads/zzbkd;)Lcom/google/android/gms/internal/ads/zzbqs;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbiv;",
            "Lcom/google/android/gms/internal/ads/zzbkd;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzbqs<",
            "Lcom/google/android/gms/internal/ads/zzbog;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/google/android/gms/internal/ads/zzbqs;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwm:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbqs;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbqs;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbje;->zzfec:Lcom/google/android/gms/internal/ads/zzbiv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbje;->zzfdd:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbkd;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbje;->zza(Lcom/google/android/gms/internal/ads/zzbiv;Lcom/google/android/gms/internal/ads/zzbkd;)Lcom/google/android/gms/internal/ads/zzbqs;

    move-result-object v0

    return-object v0
.end method
