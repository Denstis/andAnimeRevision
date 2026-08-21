###### Class com.google.android.gms.internal.ads.zzctk (com.google.android.gms.internal.ads.zzctk)
.class public final Lcom/google/android/gms/internal/ads/zzctk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcru;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcru<",
        "Lcom/google/android/gms/internal/ads/zzcth;",
        ">;"
    }
.end annotation


# instance fields
.field private applicationInfo:Landroid/content/pm/ApplicationInfo;

.field private zzdmb:Z

.field private zzffn:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzghl:Lcom/google/android/gms/internal/ads/zzajk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzajk;Ljava/util/concurrent/ScheduledExecutorService;ZLandroid/content/pm/ApplicationInfo;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctk;->zzghl:Lcom/google/android/gms/internal/ads/zzajk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctk;->zzffn:Ljava/util/concurrent/ScheduledExecutorService;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzctk;->zzdmb:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzctk;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-void
.end method


# virtual methods
.method public final zzalv()Lcom/google/android/gms/internal/ads/zzddi;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzcth;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzctk;->zzdmb:Z

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Auto Collect Location is false."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdcy;->zzi(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctk;->zzghl:Lcom/google/android/gms/internal/ads/zzajk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctk;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzajk;->zza(Landroid/content/pm/ApplicationInfo;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzza;->zzcor:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzctk;->zzffn:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdcy;->zza(Lcom/google/android/gms/internal/ads/zzddi;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzctj;->zzdos:Lcom/google/android/gms/internal/ads/zzdal;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwi:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdcy;->zzb(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    return-object v0
.end method
