###### Class com.google.android.gms.internal.ads.zzbei (com.google.android.gms.internal.ads.zzbei)
.class public abstract Lcom/google/android/gms/internal/ads/zzbei;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbgq;


# static fields
.field private static zzejt:Lcom/google/android/gms/internal/ads/zzbei;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzajx;I)Lcom/google/android/gms/internal/ads/zzbei;
    .registers 3

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzbei;->zzd(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzbei;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbei;->zzabg()Lcom/google/android/gms/internal/ads/zzchm;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzchm;->zzb(Lcom/google/android/gms/internal/ads/zzajx;)V

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzaxl;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbfx$zza;)Lcom/google/android/gms/internal/ads/zzbei;
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/zzbei;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbei;->zzejt:Lcom/google/android/gms/internal/ads/zzbei;

    if-nez v1, :cond_96

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbfo;-><init>(Lcom/google/android/gms/internal/ads/zzbez;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbel$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbel$zza;-><init>()V

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/ads/zzbel$zza;->zza(Lcom/google/android/gms/internal/ads/zzaxl;)Lcom/google/android/gms/internal/ads/zzbel$zza;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbel$zza;->zzbs(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbel$zza;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbel;

    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzbel;-><init>(Lcom/google/android/gms/internal/ads/zzbel$zza;Lcom/google/android/gms/internal/ads/zzbek;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzbfo;->zzc(Lcom/google/android/gms/internal/ads/zzbel;)Lcom/google/android/gms/internal/ads/zzbfo;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbfx;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ads/zzbfx;-><init>(Lcom/google/android/gms/internal/ads/zzbfx$zza;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbfo;->zza(Lcom/google/android/gms/internal/ads/zzbfx;)Lcom/google/android/gms/internal/ads/zzbfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbfo;->zzadg()Lcom/google/android/gms/internal/ads/zzbei;

    move-result-object p2

    sput-object p2, Lcom/google/android/gms/internal/ads/zzbei;->zzejt:Lcom/google/android/gms/internal/ads/zzbei;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzza;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkn()Lcom/google/android/gms/internal/ads/zzatr;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/google/android/gms/internal/ads/zzatr;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxl;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkp()Lcom/google/android/gms/internal/ads/zzrh;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzrh;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaul;->zzao(Landroid/content/Context;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaul;->zzap(Landroid/content/Context;)Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaue;->zzan(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkm()Lcom/google/android/gms/internal/ads/zzpv;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzpv;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzle()Lcom/google/android/gms/internal/ads/zzawu;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzawu;->initialize(Landroid/content/Context;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzza;->zzctc:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_96

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcfw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzsd;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzsi;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzsi;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzsd;-><init>(Lcom/google/android/gms/internal/ads/zzsi;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcfj;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcfh;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/zzcfh;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbei;->zzejt:Lcom/google/android/gms/internal/ads/zzbei;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbei;->zzabe()Lcom/google/android/gms/internal/ads/zzddl;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcfj;-><init>(Lcom/google/android/gms/internal/ads/zzcfh;Lcom/google/android/gms/internal/ads/zzddl;)V

    invoke-direct {p2, p1, p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcfw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxl;Lcom/google/android/gms/internal/ads/zzsd;Lcom/google/android/gms/internal/ads/zzcfj;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcfw;->zzakr()V

    :cond_96
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbei;->zzejt:Lcom/google/android/gms/internal/ads/zzbei;

    monitor-exit v0

    return-object p0

    :catchall_9a
    move-exception p0

    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_3 .. :try_end_9c} :catchall_9a

    throw p0
.end method

.method public static zzd(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzbei;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/zzbei;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbei;->zzejt:Lcom/google/android/gms/internal/ads/zzbei;

    if-eqz v1, :cond_b

    sget-object p0, Lcom/google/android/gms/internal/ads/zzbei;->zzejt:Lcom/google/android/gms/internal/ads/zzbei;

    monitor-exit v0

    return-object p0

    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_20

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxl;

    const v1, 0xee0d68

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaxl;-><init>(IIZZ)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbex;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbex;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbei;->zza(Lcom/google/android/gms/internal/ads/zzaxl;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbfx$zza;)Lcom/google/android/gms/internal/ads/zzbei;

    move-result-object p0

    return-object p0

    :catchall_20
    move-exception p0

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzape;)Lcom/google/android/gms/internal/ads/zzcsm;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzctp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzctp;-><init>(Lcom/google/android/gms/internal/ads/zzape;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbei;->zza(Lcom/google/android/gms/internal/ads/zzctp;)Lcom/google/android/gms/internal/ads/zzcsm;

    move-result-object p1

    return-object p1
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/ads/zzctp;)Lcom/google/android/gms/internal/ads/zzcsm;
.end method

.method public abstract zzabb()Ljava/util/concurrent/Executor;
.end method

.method public abstract zzabc()Ljava/util/concurrent/ScheduledExecutorService;
.end method

.method public abstract zzabd()Ljava/util/concurrent/Executor;
.end method

.method public abstract zzabe()Lcom/google/android/gms/internal/ads/zzddl;
.end method

.method public abstract zzabf()Lcom/google/android/gms/internal/ads/zzbou;
.end method

.method public abstract zzabg()Lcom/google/android/gms/internal/ads/zzchm;
.end method

.method public abstract zzabh()Lcom/google/android/gms/internal/ads/zzbga;
.end method

.method public abstract zzabi()Lcom/google/android/gms/internal/ads/zzbjm;
.end method

.method public abstract zzabj()Lcom/google/android/gms/internal/ads/zzbih;
.end method

.method public abstract zzabk()Lcom/google/android/gms/internal/ads/zzbsr;
.end method

.method public abstract zzabl()Lcom/google/android/gms/internal/ads/zzbtk;
.end method

.method public abstract zzabm()Lcom/google/android/gms/internal/ads/zzbzf;
.end method

.method public abstract zzabn()Lcom/google/android/gms/internal/ads/zzcvm;
.end method

.method public abstract zzabo()Lcom/google/android/gms/internal/ads/zzcmy;
.end method
