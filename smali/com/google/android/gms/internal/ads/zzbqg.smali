###### Class com.google.android.gms.internal.ads.zzbqg (com.google.android.gms.internal.ads.zzbqg)
.class public final Lcom/google/android/gms/internal/ads/zzbqg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzcjf;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfco:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/common/util/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfhv:Lcom/google/android/gms/internal/ads/zzbpn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbpn;Lcom/google/android/gms/internal/ads/zzdwo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbpn;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/common/util/Clock;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqg;->zzfhv:Lcom/google/android/gms/internal/ads/zzbpn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqg;->zzfco:Lcom/google/android/gms/internal/ads/zzdwo;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzbpn;Lcom/google/android/gms/internal/ads/zzdwo;)Lcom/google/android/gms/internal/ads/zzbqg;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbpn;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/common/util/Clock;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbqg;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbqg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbqg;-><init>(Lcom/google/android/gms/internal/ads/zzbpn;Lcom/google/android/gms/internal/ads/zzdwo;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqg;->zzfhv:Lcom/google/android/gms/internal/ads/zzbpn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqg;->zzfco:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/util/Clock;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbpn;->zza(Lcom/google/android/gms/common/util/Clock;)Lcom/google/android/gms/internal/ads/zzcjf;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcjf;

    return-object v0
.end method
