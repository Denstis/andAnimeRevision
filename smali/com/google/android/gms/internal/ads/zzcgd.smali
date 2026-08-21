###### Class com.google.android.gms.internal.ads.zzcgd (com.google.android.gms.internal.ads.zzcgd)
.class public final Lcom/google/android/gms/internal/ads/zzcgd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcga;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DelegateT:",
        "Ljava/lang/Object;",
        "AdapterT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcga<",
        "TAdapterT;>;"
    }
.end annotation


# instance fields
.field private final zzfxe:Lcom/google/android/gms/internal/ads/zzcga;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzcga<",
            "TDelegateT;>;"
        }
    .end annotation
.end field

.field private final zzfxf:Lcom/google/android/gms/internal/ads/zzdal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdal<",
            "TDelegateT;TAdapterT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcga;Lcom/google/android/gms/internal/ads/zzdal;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcga<",
            "TDelegateT;>;",
            "Lcom/google/android/gms/internal/ads/zzdal<",
            "TDelegateT;TAdapterT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgd;->zzfxe:Lcom/google/android/gms/internal/ads/zzcga;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgd;->zzfxf:Lcom/google/android/gms/internal/ads/zzdal;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgd;->zzfxe:Lcom/google/android/gms/internal/ads/zzcga;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcga;->zza(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;)Z

    move-result p1

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcvz;",
            "Lcom/google/android/gms/internal/ads/zzcvr;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "TAdapterT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgd;->zzfxe:Lcom/google/android/gms/internal/ads/zzcga;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcga;->zzb(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgd;->zzfxf:Lcom/google/android/gms/internal/ads/zzdal;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwi:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdcy;->zzb(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method
