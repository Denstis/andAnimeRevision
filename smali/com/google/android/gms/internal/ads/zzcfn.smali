###### Class com.google.android.gms.internal.ads.zzcfn (com.google.android.gms.internal.ads.zzcfn)
.class public final Lcom/google/android/gms/internal/ads/zzcfn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbnb;
.implements Lcom/google/android/gms/internal/ads/zzbog;


# static fields
.field private static final zzfwb:Ljava/lang/Object;

.field private static zzfwc:I


# instance fields
.field private final zzfwd:Lcom/google/android/gms/internal/ads/zzcft;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcfn;->zzfwb:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcft;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzfwd:Lcom/google/android/gms/internal/ads/zzcft;

    return-void
.end method

.method private static zzakl()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcfn;->zzfwb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/google/android/gms/internal/ads/zzcfn;->zzfwc:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/android/gms/internal/ads/zzcfn;->zzfwc:I

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private static zzakm()Z
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcfn;->zzfwb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/google/android/gms/internal/ads/zzcfn;->zzfwc:I

    sget-object v2, Lcom/google/android/gms/internal/ads/zzza;->zzctd:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    monitor-exit v0

    return v1

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method


# virtual methods
.method public final onAdFailedToLoad(I)V
    .registers 3

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzctc:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcfn;->zzakm()Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzfwd:Lcom/google/android/gms/internal/ads/zzcft;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcft;->zzbb(Z)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcfn;->zzakl()V

    :cond_21
    return-void
.end method

.method public final onAdLoaded()V
    .registers 3

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    return-void
.end method
