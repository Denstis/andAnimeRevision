###### Class com.google.android.gms.internal.ads.zzaio (com.google.android.gms.internal.ads.zzaio)
.class public final Lcom/google/android/gms/internal/ads/zzaio;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzdau:Ljava/lang/Object;

.field private final zzdav:Ljava/lang/Object;

.field private zzdaw:Lcom/google/android/gms/internal/ads/zzaix;

.field private zzdax:Lcom/google/android/gms/internal/ads/zzaix;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaio;->zzdau:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaio;->zzdav:Ljava/lang/Object;

    return-void
.end method

.method private static zzl(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    return-object v0
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxl;)Lcom/google/android/gms/internal/ads/zzaix;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaio;->zzdav:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaio;->zzdax:Lcom/google/android/gms/internal/ads/zzaix;

    if-nez v1, :cond_1e

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaix;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaio;->zzl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzza;->zzcge:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzaix;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxl;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaio;->zzdax:Lcom/google/android/gms/internal/ads/zzaix;

    :cond_1e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaio;->zzdax:Lcom/google/android/gms/internal/ads/zzaix;

    monitor-exit v0

    return-object p1

    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public final zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxl;)Lcom/google/android/gms/internal/ads/zzaix;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaio;->zzdau:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaio;->zzdaw:Lcom/google/android/gms/internal/ads/zzaix;

    if-nez v1, :cond_1e

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaix;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaio;->zzl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzza;->zzcgf:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzaix;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxl;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaio;->zzdaw:Lcom/google/android/gms/internal/ads/zzaix;

    :cond_1e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaio;->zzdaw:Lcom/google/android/gms/internal/ads/zzaix;

    monitor-exit v0

    return-object p1

    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p1
.end method
