###### Class com.google.android.gms.internal.ads.zzbji (com.google.android.gms.internal.ads.zzbji)
.class public final Lcom/google/android/gms/internal/ads/zzbji;
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
        "Lcom/google/android/gms/internal/ads/zzbpg;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzfec:Lcom/google/android/gms/internal/ads/zzbiv;

.field private final zzfeg:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzbou;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbiv;Lcom/google/android/gms/internal/ads/zzdwo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbiv;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzbou;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbji;->zzfec:Lcom/google/android/gms/internal/ads/zzbiv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbji;->zzfeg:Lcom/google/android/gms/internal/ads/zzdwo;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbji;->zzfeg:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbou;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbqs;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbix;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzbix;-><init>(Lcom/google/android/gms/internal/ads/zzbou;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwn:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbqs;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbqs;

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzbix (com.google.android.gms.internal.ads.zzbix)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbix;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpg;


# instance fields
.field private final zzfee:Lcom/google/android/gms/internal/ads/zzbou;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbou;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbix;->zzfee:Lcom/google/android/gms/internal/ads/zzbou;

    return-void
.end method


# virtual methods
.method public final zzafe()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbix;->zzfee:Lcom/google/android/gms/internal/ads/zzbou;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbou;->zzaga()V

    return-void
.end method
