###### Class com.google.android.gms.internal.ads.zzcsi (com.google.android.gms.internal.ads.zzcsi)
.class public final Lcom/google/android/gms/internal/ads/zzcsi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcru;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcru<",
        "Lcom/google/android/gms/internal/ads/zzcsf;",
        ">;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzffn:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzggu:Lcom/google/android/gms/internal/ads/zzatn;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzatn;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzggu:Lcom/google/android/gms/internal/ads/zzatn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzlk:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzffn:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcsi;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzaxv;)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzlk:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzawy;->zzbj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_1d
    move-object v1, v0

    :goto_1e
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcsf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzlk:Landroid/content/Context;

    invoke-direct {v2, p1, v3, v1}, Lcom/google/android/gms/internal/ads/zzcsf;-><init>(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzaxv;->set(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_28} :catch_29
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_28} :catch_29
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_28} :catch_29

    return-void

    :catch_29
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzlk:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawy;->zzbj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcsf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzlk:Landroid/content/Context;

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzcsf;-><init>(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzaxv;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzalv()Lcom/google/android/gms/internal/ads/zzddi;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzcsf;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzckp:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_46

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxv;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzggu:Lcom/google/android/gms/internal/ads/zzatn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzlk:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzatn;->zzak(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcsh;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzcsh;-><init>(Lcom/google/android/gms/internal/ads/zzcsi;Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzaxv;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcsi;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzddi;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzffn:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcsk;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzcsk;-><init>(Lcom/google/android/gms/internal/ads/zzddi;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzza;->zzckq:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-object v0

    :cond_46
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Did not ad Ad ID into query param."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdcy;->zzi(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzcsh (com.google.android.gms.internal.ads.zzcsh)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcsh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfoe:Lcom/google/android/gms/internal/ads/zzddi;

.field private final zzftc:Lcom/google/android/gms/internal/ads/zzaxv;

.field private final zzggt:Lcom/google/android/gms/internal/ads/zzcsi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcsi;Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzaxv;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzggt:Lcom/google/android/gms/internal/ads/zzcsi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzfoe:Lcom/google/android/gms/internal/ads/zzddi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzftc:Lcom/google/android/gms/internal/ads/zzaxv;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzggt:Lcom/google/android/gms/internal/ads/zzcsi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzfoe:Lcom/google/android/gms/internal/ads/zzddi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzftc:Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcsi;->zza(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzaxv;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcsk (com.google.android.gms.internal.ads.zzcsk)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcsk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfov:Lcom/google/android/gms/internal/ads/zzddi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzddi;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsk;->zzfov:Lcom/google/android/gms/internal/ads/zzddi;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsk;->zzfov:Lcom/google/android/gms/internal/ads/zzddi;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method
