###### Class com.google.android.gms.internal.ads.zzcjg (com.google.android.gms.internal.ads.zzcjg)
.class public final Lcom/google/android/gms/internal/ads/zzcjg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdcj<",
        "Lcom/google/android/gms/internal/ads/zzcvz;",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzfbe:Lcom/google/android/gms/internal/ads/zzcyp;

.field private final zzfcx:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzfgb:Lcom/google/android/gms/internal/ads/zzcyg;

.field private final zzfht:Lcom/google/android/gms/internal/ads/zzbmz;

.field private final zzfzi:Lcom/google/android/gms/internal/ads/zzbkp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbkp<",
            "TAdT;>;"
        }
    .end annotation
.end field

.field private final zzfzj:Lcom/google/android/gms/internal/ads/zzcjf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcyg;Lcom/google/android/gms/internal/ads/zzcjf;Lcom/google/android/gms/internal/ads/zzbmz;Lcom/google/android/gms/internal/ads/zzcyp;Lcom/google/android/gms/internal/ads/zzbkp;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcyg;",
            "Lcom/google/android/gms/internal/ads/zzcjf;",
            "Lcom/google/android/gms/internal/ads/zzbmz;",
            "Lcom/google/android/gms/internal/ads/zzcyp;",
            "Lcom/google/android/gms/internal/ads/zzbkp<",
            "TAdT;>;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfgb:Lcom/google/android/gms/internal/ads/zzcyg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfzj:Lcom/google/android/gms/internal/ads/zzcjf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfht:Lcom/google/android/gms/internal/ads/zzbmz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfbe:Lcom/google/android/gms/internal/ads/zzcyp;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfzi:Lcom/google/android/gms/internal/ads/zzbkp;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcjg;->executor:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfcx:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzcvr;Lcom/google/android/gms/internal/ads/zzcga;Lcom/google/android/gms/internal/ads/zzcvz;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 8

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfzj:Lcom/google/android/gms/internal/ads/zzcjf;

    invoke-interface {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzcga;->zzb(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p2

    iget p3, p1, Lcom/google/android/gms/internal/ads/zzcvr;->zzgjn:I

    int-to-long v0, p3

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfcx:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p2, v0, v1, p3, v2}, Lcom/google/android/gms/internal/ads/zzdcy;->zza(Lcom/google/android/gms/internal/ads/zzddi;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/internal/ads/zzcjf;->zza(Lcom/google/android/gms/internal/ads/zzcvr;Lcom/google/android/gms/internal/ads/zzddi;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 10

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcvz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfgb:Lcom/google/android/gms/internal/ads/zzcyg;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcyd;->zzgml:Lcom/google/android/gms/internal/ads/zzcyd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcxs;->zzu(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcxw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcjh;

    const-string v2, "No ad configs"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcjh;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdcy;->zzi(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcxw;->zzb(Lcom/google/android/gms/internal/ads/zzddi;)Lcom/google/android/gms/internal/ads/zzcxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxy;->zzant()Lcom/google/android/gms/internal/ads/zzcxp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfht:Lcom/google/android/gms/internal/ads/zzbmz;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbha;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfbe:Lcom/google/android/gms/internal/ads/zzcyp;

    invoke-direct {v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzbha;-><init>(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcyp;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjg;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbpm;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzcvz;->zzgkb:Lcom/google/android/gms/internal/ads/zzcvx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcvx;->zzgjx:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcvr;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzcvr;->zzgiy:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_47
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfzi:Lcom/google/android/gms/internal/ads/zzbkp;

    iget v7, v3, Lcom/google/android/gms/internal/ads/zzcvr;->zzfis:I

    invoke-interface {v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzbkp;->zze(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzcga;

    move-result-object v6

    if-eqz v6, :cond_47

    invoke-interface {v6, p1, v3}, Lcom/google/android/gms/internal/ads/zzcga;->zza(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;)Z

    move-result v7

    if-eqz v7, :cond_47

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzfgb:Lcom/google/android/gms/internal/ads/zzcyg;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzcyd;->zzgmm:Lcom/google/android/gms/internal/ads/zzcyd;

    invoke-virtual {v4, v7, v0}, Lcom/google/android/gms/internal/ads/zzcxs;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzddi;)Lcom/google/android/gms/internal/ads/zzcxy;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "render-config-"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzcxy;->zzgi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcxy;

    move-result-object v0

    const-class v4, Ljava/lang/Throwable;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzcjj;

    invoke-direct {v5, p0, v3, v6, p1}, Lcom/google/android/gms/internal/ads/zzcjj;-><init>(Lcom/google/android/gms/internal/ads/zzcjg;Lcom/google/android/gms/internal/ads/zzcvr;Lcom/google/android/gms/internal/ads/zzcga;Lcom/google/android/gms/internal/ads/zzcvz;)V

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzcxy;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdcj;)Lcom/google/android/gms/internal/ads/zzcxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxy;->zzant()Lcom/google/android/gms/internal/ads/zzcxp;

    move-result-object v0

    :cond_a1
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_a4
    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzcjj (com.google.android.gms.internal.ads.zzcjj)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcjj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcj;


# instance fields
.field private final zzfym:Lcom/google/android/gms/internal/ads/zzcvr;

.field private final zzfyo:Lcom/google/android/gms/internal/ads/zzcvz;

.field private final zzfzk:Lcom/google/android/gms/internal/ads/zzcjg;

.field private final zzfzl:Lcom/google/android/gms/internal/ads/zzcga;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcjg;Lcom/google/android/gms/internal/ads/zzcvr;Lcom/google/android/gms/internal/ads/zzcga;Lcom/google/android/gms/internal/ads/zzcvz;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzfzk:Lcom/google/android/gms/internal/ads/zzcjg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzfym:Lcom/google/android/gms/internal/ads/zzcvr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzfzl:Lcom/google/android/gms/internal/ads/zzcga;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzfyo:Lcom/google/android/gms/internal/ads/zzcvz;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzfzk:Lcom/google/android/gms/internal/ads/zzcjg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzfym:Lcom/google/android/gms/internal/ads/zzcvr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzfzl:Lcom/google/android/gms/internal/ads/zzcga;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzfyo:Lcom/google/android/gms/internal/ads/zzcvz;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzcjg;->zza(Lcom/google/android/gms/internal/ads/zzcvr;Lcom/google/android/gms/internal/ads/zzcga;Lcom/google/android/gms/internal/ads/zzcvz;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method
