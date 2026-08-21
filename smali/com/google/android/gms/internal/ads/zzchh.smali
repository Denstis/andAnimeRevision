###### Class com.google.android.gms.internal.ads.zzchh (com.google.android.gms.internal.ads.zzchh)
.class public final Lcom/google/android/gms/internal/ads/zzchh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcga;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcga<",
        "Lcom/google/android/gms/internal/ads/zzbio;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzffn:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzfht:Lcom/google/android/gms/internal/ads/zzbmz;

.field private final zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

.field private final zzfyb:Lcom/google/android/gms/internal/ads/zzbjn;

.field private final zzfyc:Lcom/google/android/gms/internal/ads/zzcgn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbjn;Lcom/google/android/gms/internal/ads/zzcgn;Lcom/google/android/gms/internal/ads/zzbmz;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzddl;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzfyb:Lcom/google/android/gms/internal/ads/zzbjn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzfyc:Lcom/google/android/gms/internal/ads/zzcgn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzfht:Lcom/google/android/gms/internal/ads/zzbmz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzffn:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzchh;)Lcom/google/android/gms/internal/ads/zzbmz;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzfht:Lcom/google/android/gms/internal/ads/zzbmz;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;)Z
    .registers 4

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcvz;->zzgka:Lcom/google/android/gms/internal/ads/zzcvy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcvy;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwe;->zzana()Lcom/google/android/gms/internal/ads/zzada;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzfyc:Lcom/google/android/gms/internal/ads/zzcgn;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcgn;->zza(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcvz;",
            "Lcom/google/android/gms/internal/ads/zzcvr;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzbio;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzchg;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzchg;-><init>(Lcom/google/android/gms/internal/ads/zzchh;Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzddl;->zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;)Lcom/google/android/gms/internal/ads/zzbio;
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzfyb:Lcom/google/android/gms/internal/ads/zzbjn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbla;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzbla;-><init>(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbjz;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzcvz;->zzgka:Lcom/google/android/gms/internal/ads/zzcvy;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzcvy;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcwe;->zzana()Lcom/google/android/gms/internal/ads/zzada;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzchj;

    invoke-direct {v4, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzchj;-><init>(Lcom/google/android/gms/internal/ads/zzchh;Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbjz;-><init>(Lcom/google/android/gms/internal/ads/zzada;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbjn;->zza(Lcom/google/android/gms/internal/ads/zzbla;Lcom/google/android/gms/internal/ads/zzbjz;)Lcom/google/android/gms/internal/ads/zzbjw;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbjw;->zzada()Lcom/google/android/gms/internal/ads/zzbio;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzfyc:Lcom/google/android/gms/internal/ads/zzcgn;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcgn;->zzb(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzcvr;->zzgjn:I

    int-to-long v0, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzffn:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1, v0, v1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdcy;->zza(Lcom/google/android/gms/internal/ads/zzddi;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzchi;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzchi;-><init>(Lcom/google/android/gms/internal/ads/zzchh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdcy;->zza(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdcz;Ljava/util/concurrent/Executor;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzchg (com.google.android.gms.internal.ads.zzchg)
.class final synthetic Lcom/google/android/gms/internal/ads/zzchg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzfea:Lcom/google/android/gms/internal/ads/zzcvr;

.field private final zzfom:Lcom/google/android/gms/internal/ads/zzcvz;

.field private final zzfya:Lcom/google/android/gms/internal/ads/zzchh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchh;Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchg;->zzfya:Lcom/google/android/gms/internal/ads/zzchh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchg;->zzfom:Lcom/google/android/gms/internal/ads/zzcvz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzchg;->zzfea:Lcom/google/android/gms/internal/ads/zzcvr;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchg;->zzfya:Lcom/google/android/gms/internal/ads/zzchh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchg;->zzfom:Lcom/google/android/gms/internal/ads/zzcvz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchg;->zzfea:Lcom/google/android/gms/internal/ads/zzcvr;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzchh;->zzc(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;)Lcom/google/android/gms/internal/ads/zzbio;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzchj (com.google.android.gms.internal.ads.zzchj)
.class final synthetic Lcom/google/android/gms/internal/ads/zzchj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfea:Lcom/google/android/gms/internal/ads/zzcvr;

.field private final zzfom:Lcom/google/android/gms/internal/ads/zzcvz;

.field private final zzfya:Lcom/google/android/gms/internal/ads/zzchh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchh;Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzfya:Lcom/google/android/gms/internal/ads/zzchh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzfom:Lcom/google/android/gms/internal/ads/zzcvz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzfea:Lcom/google/android/gms/internal/ads/zzcvr;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzfya:Lcom/google/android/gms/internal/ads/zzchh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzfom:Lcom/google/android/gms/internal/ads/zzcvz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzfea:Lcom/google/android/gms/internal/ads/zzcvr;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzchh;->zzd(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;)V

    return-void
.end method
