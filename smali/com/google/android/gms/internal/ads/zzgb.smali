###### Class com.google.android.gms.internal.ads.zzgb (com.google.android.gms.internal.ads.zzgb)
.class public abstract Lcom/google/android/gms/internal/ads/zzgb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgw;
.implements Lcom/google/android/gms/internal/ads/zzgx;


# instance fields
.field private index:I

.field private state:I

.field private final zzace:I

.field private zzacf:Lcom/google/android/gms/internal/ads/zzgz;

.field private zzacg:Lcom/google/android/gms/internal/ads/zzmd;

.field private zzach:J

.field private zzaci:Z

.field private zzacj:Z


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzace:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzaci:Z

    return-void
.end method


# virtual methods
.method public final disable()V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzgb;->state:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzacg:Lcom/google/android/gms/internal/ads/zzmd;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzacj:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgb;->zzdr()V

    return-void
.end method

.method protected final getIndex()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->index:I

    return v0
.end method

.method public final getState()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->state:I

    return v0
.end method

.method public final getTrackType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzace:I

    return v0
.end method

.method protected onStarted()V
    .registers 1

    return-void
.end method

.method protected onStopped()V
    .registers 1

    return-void
.end method

.method public final setIndex(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgb;->index:I

    return-void
.end method

.method public final start()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->state:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgb;->onStarted()V

    return-void
.end method

.method public final stop()V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgb;->state:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgb;->onStopped()V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzgq;Lcom/google/android/gms/internal/ads/zzik;Z)I
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzacg:Lcom/google/android/gms/internal/ads/zzmd;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzmd;->zzb(Lcom/google/android/gms/internal/ads/zzgq;Lcom/google/android/gms/internal/ads/zzik;Z)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_21

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzih;->zzfv()Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzaci:Z

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzacj:Z

    if-eqz p1, :cond_17

    return v0

    :cond_17
    const/4 p1, -0x3

    return p1

    :cond_19
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzik;->zzamb:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzach:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzik;->zzamb:J

    goto :goto_3a

    :cond_21
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3a

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzgq;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzgo;->zzafr:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3a

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzach:J

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgo;->zzdm(J)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzgq;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    :cond_3a
    :goto_3a
    return p3
.end method

.method public zza(ILjava/lang/Object;)V
    .registers 3

    return-void
.end method

.method protected zza(JZ)V
    .registers 4

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzgz;[Lcom/google/android/gms/internal/ads/zzgo;Lcom/google/android/gms/internal/ads/zzmd;JZJ)V
    .registers 11

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->state:I

    const/4 v1, 0x1

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzacf:Lcom/google/android/gms/internal/ads/zzgz;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgb;->state:I

    invoke-virtual {p0, p6}, Lcom/google/android/gms/internal/ads/zzgb;->zzd(Z)V

    invoke-virtual {p0, p2, p3, p7, p8}, Lcom/google/android/gms/internal/ads/zzgb;->zza([Lcom/google/android/gms/internal/ads/zzgo;Lcom/google/android/gms/internal/ads/zzmd;J)V

    invoke-virtual {p0, p4, p5, p6}, Lcom/google/android/gms/internal/ads/zzgb;->zza(JZ)V

    return-void
.end method

.method protected zza([Lcom/google/android/gms/internal/ads/zzgo;J)V
    .registers 4

    return-void
.end method

.method public final zza([Lcom/google/android/gms/internal/ads/zzgo;Lcom/google/android/gms/internal/ads/zzmd;J)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzacj:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzacg:Lcom/google/android/gms/internal/ads/zzmd;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzaci:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzach:J

    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzgb;->zza([Lcom/google/android/gms/internal/ads/zzgo;J)V

    return-void
.end method

.method protected zzd(Z)V
    .registers 2

    return-void
.end method

.method public final zzdi(J)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzacj:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzaci:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgb;->zza(JZ)V

    return-void
.end method

.method public final zzdj()Lcom/google/android/gms/internal/ads/zzgw;
    .registers 1

    return-object p0
.end method

.method protected final zzdj(J)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzacg:Lcom/google/android/gms/internal/ads/zzmd;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzach:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzmd;->zzeb(J)V

    return-void
.end method

.method public zzdk()Lcom/google/android/gms/internal/ads/zznv;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzdl()Lcom/google/android/gms/internal/ads/zzmd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzacg:Lcom/google/android/gms/internal/ads/zzmd;

    return-object v0
.end method

.method public final zzdm()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzaci:Z

    return v0
.end method

.method public final zzdn()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzacj:Z

    return-void
.end method

.method public final zzdo()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzacj:Z

    return v0
.end method

.method public final zzdp()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzacg:Lcom/google/android/gms/internal/ads/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzmd;->zzhe()V

    return-void
.end method

.method public zzdq()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected zzdr()V
    .registers 1

    return-void
.end method

.method protected final zzds()Lcom/google/android/gms/internal/ads/zzgz;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzacf:Lcom/google/android/gms/internal/ads/zzgz;

    return-object v0
.end method

.method protected final zzdt()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzaci:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzacj:Z

    return v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgb;->zzacg:Lcom/google/android/gms/internal/ads/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzmd;->isReady()Z

    move-result v0

    return v0
.end method
