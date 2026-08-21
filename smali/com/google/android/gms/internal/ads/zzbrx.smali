###### Class com.google.android.gms.internal.ads.zzbrx (com.google.android.gms.internal.ads.zzbrx)
.class public Lcom/google/android/gms/internal/ads/zzbrx;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

.field private final zzfim:Lcom/google/android/gms/internal/ads/zzbsu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbsu;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbrx;-><init>(Lcom/google/android/gms/internal/ads/zzbsu;Lcom/google/android/gms/internal/ads/zzbbw;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbsu;Lcom/google/android/gms/internal/ads/zzbbw;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrx;->zzfim:Lcom/google/android/gms/internal/ads/zzbsu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbrx;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/ads/zzbsz;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbsz;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbqs<",
            "Lcom/google/android/gms/internal/ads/zzbna;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwn:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbqs;->zzb(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbqs;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final zzaeo()Lcom/google/android/gms/internal/ads/zzbbw;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrx;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    return-object v0
.end method

.method public final zzagu()Lcom/google/android/gms/internal/ads/zzbsu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrx;->zzfim:Lcom/google/android/gms/internal/ads/zzbsu;

    return-object v0
.end method

.method public final zzagv()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrx;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbqs;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzbqs<",
            "Lcom/google/android/gms/internal/ads/zzbpg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrx;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbqs;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbrz;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzbrz;-><init>(Lcom/google/android/gms/internal/ads/zzbbw;)V

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzbqs;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method

###### Class com.google.android.gms.internal.ads.zzbrz (com.google.android.gms.internal.ads.zzbrz)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbrz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpg;


# instance fields
.field private final zzehv:Lcom/google/android/gms/internal/ads/zzbbw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbw;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrz;->zzehv:Lcom/google/android/gms/internal/ads/zzbbw;

    return-void
.end method


# virtual methods
.method public final zzafe()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrz;->zzehv:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzl()Lcom/google/android/gms/ads/internal/overlay/zzc;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzl()Lcom/google/android/gms/ads/internal/overlay/zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->close()V

    :cond_f
    return-void
.end method
