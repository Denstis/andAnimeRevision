###### Class com.google.android.gms.internal.ads.zzasm (com.google.android.gms.internal.ads.zzasm)
.class public final Lcom/google/android/gms/internal/ads/zzasm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzpj;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzbqy:Ljava/lang/String;

.field private final zzcfz:Landroid/content/Context;

.field private zzdpt:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_d
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasm;->zzcfz:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzasm;->zzbqy:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzasm;->zzdpt:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasm;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAdUnitId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->zzbqy:Ljava/lang/String;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzpk;)V
    .registers 2

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzpk;->zzbnp:Z

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzasm;->zzaf(Z)V

    return-void
.end method

.method public final zzaf(Z)V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlh()Lcom/google/android/gms/internal/ads/zzasl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->zzcfz:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzasl;->zzab(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_10
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->zzdpt:Z

    if-ne v1, p1, :cond_16

    monitor-exit v0

    return-void

    :cond_16
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzasm;->zzdpt:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzasm;->zzbqy:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_22

    monitor-exit v0

    return-void

    :cond_22
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzasm;->zzdpt:Z

    if-eqz p1, :cond_32

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlh()Lcom/google/android/gms/internal/ads/zzasl;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->zzcfz:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->zzbqy:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzasl;->zze(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3d

    :cond_32
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlh()Lcom/google/android/gms/internal/ads/zzasl;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->zzcfz:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->zzbqy:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzasl;->zzf(Landroid/content/Context;Ljava/lang/String;)V

    :goto_3d
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_10 .. :try_end_41} :catchall_3f

    throw p1
.end method
