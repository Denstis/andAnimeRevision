###### Class com.google.android.gms.internal.ads.zzbhf (com.google.android.gms.internal.ads.zzbhf)
.class public final Lcom/google/android/gms/internal/ads/zzbhf;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzbly:Ljava/lang/String;

.field private final zzfbm:Lcom/google/android/gms/internal/ads/zzajc;

.field private zzfbn:Lcom/google/android/gms/internal/ads/zzbhk;

.field private final zzfbo:Lcom/google/android/gms/internal/ads/zzaer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfbp:Lcom/google/android/gms/internal/ads/zzaer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajc;Ljava/util/concurrent/Executor;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhe;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbhe;-><init>(Lcom/google/android/gms/internal/ads/zzbhf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzfbo:Lcom/google/android/gms/internal/ads/zzaer;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbhg;-><init>(Lcom/google/android/gms/internal/ads/zzbhf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzfbp:Lcom/google/android/gms/internal/ads/zzaer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzbly:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzfbm:Lcom/google/android/gms/internal/ads/zzajc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhf;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbhf;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbhf;Ljava/util/Map;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhf;->zzl(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbhf;)Lcom/google/android/gms/internal/ads/zzbhk;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzfbn:Lcom/google/android/gms/internal/ads/zzbhk;

    return-object p0
.end method

.method private final zzl(Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-string v1, "hashCode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzbly:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    return v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbhk;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzfbm:Lcom/google/android/gms/internal/ads/zzajc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzfbo:Lcom/google/android/gms/internal/ads/zzaer;

    const-string v2, "/updateActiveView"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzajc;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzfbm:Lcom/google/android/gms/internal/ads/zzajc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzfbp:Lcom/google/android/gms/internal/ads/zzaer;

    const-string v2, "/untrackActiveViewUnit"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzajc;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzfbn:Lcom/google/android/gms/internal/ads/zzbhk;

    return-void
.end method

.method public final zzaeh()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzfbm:Lcom/google/android/gms/internal/ads/zzajc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzfbo:Lcom/google/android/gms/internal/ads/zzaer;

    const-string v2, "/updateActiveView"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzajc;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzfbm:Lcom/google/android/gms/internal/ads/zzajc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzfbp:Lcom/google/android/gms/internal/ads/zzaer;

    const-string v2, "/untrackActiveViewUnit"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzajc;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbbw;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzfbo:Lcom/google/android/gms/internal/ads/zzaer;

    const-string v1, "/updateActiveView"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzfbp:Lcom/google/android/gms/internal/ads/zzaer;

    const-string v1, "/untrackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzbbw;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzfbo:Lcom/google/android/gms/internal/ads/zzaer;

    const-string v1, "/updateActiveView"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzfbp:Lcom/google/android/gms/internal/ads/zzaer;

    const-string v1, "/untrackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    return-void
.end method
