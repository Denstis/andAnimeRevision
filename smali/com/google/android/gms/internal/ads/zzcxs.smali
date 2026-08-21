###### Class com.google.android.gms.internal.ads.zzcxs (com.google.android.gms.internal.ads.zzcxs)
.class public abstract Lcom/google/android/gms/internal/ads/zzcxs;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zzglo:Lcom/google/android/gms/internal/ads/zzddi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final zzfcx:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

.field private final zzglp:Lcom/google/android/gms/internal/ads/zzcye;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzcye<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcxs;->zzglo:Lcom/google/android/gms/internal/ads/zzddi;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzddl;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzcye;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzddl;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/zzcye<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzfcx:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzglp:Lcom/google/android/gms/internal/ads/zzcye;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcxs;)Lcom/google/android/gms/internal/ads/zzddl;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    return-object p0
.end method

.method static synthetic zzans()Lcom/google/android/gms/internal/ads/zzddi;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcxs;->zzglo:Lcom/google/android/gms/internal/ads/zzddi;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcxs;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzfcx:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzcxs;)Lcom/google/android/gms/internal/ads/zzcye;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzglp:Lcom/google/android/gms/internal/ads/zzcye;

    return-object p0
.end method


# virtual methods
.method public final varargs zza(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzddi;)Lcom/google/android/gms/internal/ads/zzcxu;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;[",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/zzcxu;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcxu;-><init>(Lcom/google/android/gms/internal/ads/zzcxs;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzcxr;)V

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzddi;)Lcom/google/android/gms/internal/ads/zzcxy;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "TI;>;)",
            "Lcom/google/android/gms/internal/ads/zzcxy<",
            "TI;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v8, Lcom/google/android/gms/internal/ads/zzcxy;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzcxy;-><init>(Lcom/google/android/gms/internal/ads/zzcxs;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzddi;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzcxr;)V

    return-object v8
.end method

.method public final zzu(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcxw;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/ads/zzcxw;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcxw;-><init>(Lcom/google/android/gms/internal/ads/zzcxs;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcxr;)V

    return-object v0
.end method

.method protected abstract zzv(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
