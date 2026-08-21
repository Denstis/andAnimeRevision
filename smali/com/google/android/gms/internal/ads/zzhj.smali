###### Class com.google.android.gms.internal.ads.zzhj (com.google.android.gms.internal.ads.zzhj)
.class public final Lcom/google/android/gms/internal/ads/zzhj;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final zzahe:Lcom/google/android/gms/internal/ads/zzhg;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzhg;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_c

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zznr;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhj;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzahe:Lcom/google/android/gms/internal/ads/zzhg;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzhj;)Lcom/google/android/gms/internal/ads/zzhg;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzahe:Lcom/google/android/gms/internal/ads/zzhg;

    return-object p0
.end method


# virtual methods
.method public final zzb(IJJ)V
    .registers 15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzahe:Lcom/google/android/gms/internal/ads/zzhg;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->handler:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzhn;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(Lcom/google/android/gms/internal/ads/zzhj;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    return-void
.end method

.method public final zzb(Ljava/lang/String;JJ)V
    .registers 15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzahe:Lcom/google/android/gms/internal/ads/zzhg;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->handler:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzhl;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzhl;-><init>(Lcom/google/android/gms/internal/ads/zzhj;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzgo;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzahe:Lcom/google/android/gms/internal/ads/zzhg;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhk;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzhk;-><init>(Lcom/google/android/gms/internal/ads/zzhj;Lcom/google/android/gms/internal/ads/zzgo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzil;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzahe:Lcom/google/android/gms/internal/ads/zzhg;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhi;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Lcom/google/android/gms/internal/ads/zzhj;Lcom/google/android/gms/internal/ads/zzil;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzil;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzahe:Lcom/google/android/gms/internal/ads/zzhg;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzhm;-><init>(Lcom/google/android/gms/internal/ads/zzhj;Lcom/google/android/gms/internal/ads/zzil;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public final zzr(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzahe:Lcom/google/android/gms/internal/ads/zzhg;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Lcom/google/android/gms/internal/ads/zzhj;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method
