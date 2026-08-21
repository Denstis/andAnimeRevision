###### Class com.google.android.gms.internal.ads.zzgj (com.google.android.gms.internal.ads.zzgj)
.class final Lcom/google/android/gms/internal/ads/zzgj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgc;


# instance fields
.field private repeatMode:I

.field private final zzacp:[Lcom/google/android/gms/internal/ads/zzgx;

.field private final zzacq:Lcom/google/android/gms/internal/ads/zzmy;

.field private final zzacr:Lcom/google/android/gms/internal/ads/zzmv;

.field private final zzacs:Landroid/os/Handler;

.field private final zzact:Lcom/google/android/gms/internal/ads/zzgl;

.field private final zzacu:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/gms/internal/ads/zzgf;",
            ">;"
        }
    .end annotation
.end field

.field private final zzacv:Lcom/google/android/gms/internal/ads/zzhd;

.field private final zzacw:Lcom/google/android/gms/internal/ads/zzha;

.field private zzacx:Z

.field private zzacy:Z

.field private zzacz:I

.field private zzada:I

.field private zzadb:I

.field private zzadc:Z

.field private zzadd:Lcom/google/android/gms/internal/ads/zzgy;

.field private zzade:Ljava/lang/Object;

.field private zzadf:Lcom/google/android/gms/internal/ads/zzmk;

.field private zzadg:Lcom/google/android/gms/internal/ads/zzmv;

.field private zzadh:Lcom/google/android/gms/internal/ads/zzgu;

.field private zzadi:Lcom/google/android/gms/internal/ads/zzgn;

.field private zzadj:I

.field private zzadk:I

.field private zzadl:J


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzgx;Lcom/google/android/gms/internal/ads/zzmy;Lcom/google/android/gms/internal/ads/zzgs;)V
    .registers 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzof;->zzbgt:Ljava/lang/String;

    const-string v2, "Init ExoPlayerLib/2.4.2 ["

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ExoPlayerImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p1

    const/4 v2, 0x0

    if-lez v0, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zznr;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzgx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacp:[Lcom/google/android/gms/internal/ads/zzgx;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zznr;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzmy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacq:Lcom/google/android/gms/internal/ads/zzmy;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacy:Z

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzgj;->repeatMode:I

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacz:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacu:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzmv;

    array-length v3, p1

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/zzmt;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzmv;-><init>([Lcom/google/android/gms/internal/ads/zzmt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacr:Lcom/google/android/gms/internal/ads/zzmv;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgy;->zzagd:Lcom/google/android/gms/internal/ads/zzgy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacv:Lcom/google/android/gms/internal/ads/zzhd;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzha;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzha;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzmk;->zzbdc:Lcom/google/android/gms/internal/ads/zzmk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadf:Lcom/google/android/gms/internal/ads/zzmk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacr:Lcom/google/android/gms/internal/ads/zzmv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadg:Lcom/google/android/gms/internal/ads/zzmv;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgu;->zzafz:Lcom/google/android/gms/internal/ads/zzgu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_89

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_8d

    :cond_89
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_8d
    new-instance v3, Lcom/google/android/gms/internal/ads/zzgi;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzgi;-><init>(Lcom/google/android/gms/internal/ads/zzgj;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacs:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgn;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzgl;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacy:Z

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacs:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzgl;-><init>([Lcom/google/android/gms/internal/ads/zzgx;Lcom/google/android/gms/internal/ads/zzmy;Lcom/google/android/gms/internal/ads/zzgs;ZILandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzgn;Lcom/google/android/gms/internal/ads/zzgc;)V

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzact:Lcom/google/android/gms/internal/ads/zzgl;

    return-void
.end method

.method private final zzdy()I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzada:I

    if-lez v0, :cond_d

    goto :goto_1a

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzgn;->zzadr:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;

    return v3

    :cond_1a
    :goto_1a
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadj:I

    return v0
.end method


# virtual methods
.method public final getBufferedPosition()J
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzada:I

    if-lez v0, :cond_d

    goto :goto_29

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzgn;->zzadr:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzha;->zzer()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzgn;->zzaew:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzga;->zzdg(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_29
    :goto_29
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadl:J

    return-wide v0
.end method

.method public final getDuration()J
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgj;->zzdy()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacv:Lcom/google/android/gms/internal/ads/zzhd;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzhd;Z)Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzhd;->zzagh:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzga;->zzdg(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPlaybackState()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacz:I

    return v0
.end method

.method public final release()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzact:Lcom/google/android/gms/internal/ads/zzgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgl;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacs:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final seekTo(J)V
    .registers 12

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgj;->zzdy()I

    move-result v0

    if-ltz v0, :cond_8b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgy;->zzep()I

    move-result v1

    if-ge v0, v1, :cond_8b

    :cond_16
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzada:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzada:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadj:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgy;->isEmpty()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    if-nez v1, :cond_55

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacv:Lcom/google/android/gms/internal/ads/zzhd;

    invoke-virtual {v1, v0, v5, v4}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzhd;Z)Lcom/google/android/gms/internal/ads/zzhd;

    cmp-long v1, p1, v2

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacv:Lcom/google/android/gms/internal/ads/zzhd;

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzhd;->zzagw:J

    goto :goto_40

    :cond_3c
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzga;->zzdh(J)J

    move-result-wide v5

    :goto_40
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacv:Lcom/google/android/gms/internal/ads/zzhd;

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzhd;->zzagx:J

    add-long/2addr v7, v5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    invoke-virtual {v1, v4, v5, v4}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;

    move-result-object v1

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzha;->zzagh:J

    cmp-long v1, v5, v2

    if-eqz v1, :cond_55

    cmp-long v1, v7, v5

    :cond_55
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadk:I

    cmp-long v1, p1, v2

    if-nez v1, :cond_67

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadl:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzact:Lcom/google/android/gms/internal/ads/zzgl;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    invoke-virtual {p1, p2, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Lcom/google/android/gms/internal/ads/zzgy;IJ)V

    return-void

    :cond_67
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadl:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzact:Lcom/google/android/gms/internal/ads/zzgl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzga;->zzdh(J)J

    move-result-wide p1

    invoke-virtual {v1, v2, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Lcom/google/android/gms/internal/ads/zzgy;IJ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgf;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgf;->zzdx()V

    goto :goto_7a

    :cond_8a
    return-void

    :cond_8b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Lcom/google/android/gms/internal/ads/zzgy;IJ)V

    goto :goto_94

    :goto_93
    throw v1

    :goto_94
    goto :goto_93
.end method

.method public final stop()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzact:Lcom/google/android/gms/internal/ads/zzgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgl;->stop()V

    return-void
.end method

.method final zza(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_146

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgf;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzgf;->zza(Lcom/google/android/gms/internal/ads/zzgd;)V

    goto :goto_16

    :cond_26
    return-void

    :pswitch_27
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fe

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgf;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzgf;->zza(Lcom/google/android/gms/internal/ads/zzgu;)V

    goto :goto_3b

    :cond_4b
    return-void

    :pswitch_4c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgp;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzada:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzgp;->zzafw:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzada:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadb:I

    if-nez v0, :cond_fe

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgp;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgp;->zzade:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzade:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgp;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzade:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgf;->zza(Lcom/google/android/gms/internal/ads/zzgy;Ljava/lang/Object;)V

    goto :goto_6d

    :cond_81
    return-void

    :pswitch_82
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzada:I

    if-nez v0, :cond_fe

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_92
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgf;->zzdx()V

    goto :goto_92

    :cond_a2
    return-void

    :pswitch_a3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzada:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzada:I

    if-nez v0, :cond_fe

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgn;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_fe

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ba
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ca

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgf;->zzdx()V

    goto :goto_ba

    :cond_ca
    return-void

    :pswitch_cb
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadb:I

    if-nez v0, :cond_fe

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzna;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacx:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzna;->zzbee:Lcom/google/android/gms/internal/ads/zzmk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadf:Lcom/google/android/gms/internal/ads/zzmk;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzna;->zzbef:Lcom/google/android/gms/internal/ads/zzmv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadg:Lcom/google/android/gms/internal/ads/zzmv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacq:Lcom/google/android/gms/internal/ads/zzmy;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzna;->zzbeg:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzmy;->zzd(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ea
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fe

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadf:Lcom/google/android/gms/internal/ads/zzmk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadg:Lcom/google/android/gms/internal/ads/zzmv;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgf;->zza(Lcom/google/android/gms/internal/ads/zzmk;Lcom/google/android/gms/internal/ads/zzmv;)V

    goto :goto_ea

    :cond_fe
    return-void

    :pswitch_ff
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_104

    goto :goto_105

    :cond_104
    const/4 v1, 0x0

    :goto_105
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadc:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgf;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadc:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgf;->zzf(Z)V

    goto :goto_10d

    :cond_11f
    return-void

    :pswitch_120
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacz:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgf;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacy:Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacz:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgf;->zza(ZI)V

    goto :goto_12a

    :cond_13e
    return-void

    :pswitch_13f
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadb:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadb:I

    return-void

    nop

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_13f
        :pswitch_120
        :pswitch_ff
        :pswitch_cb
        :pswitch_a3
        :pswitch_82
        :pswitch_4c
        :pswitch_27
        :pswitch_c
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzgf;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzlu;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgy;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzade:Ljava/lang/Object;

    if-eqz v0, :cond_2d

    :cond_d
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgy;->zzagd:Lcom/google/android/gms/internal/ads/zzgy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzade:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzade:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgf;->zza(Lcom/google/android/gms/internal/ads/zzgy;Ljava/lang/Object;)V

    goto :goto_19

    :cond_2d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacx:Z

    if-eqz v0, :cond_5b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacx:Z

    sget-object v0, Lcom/google/android/gms/internal/ads/zzmk;->zzbdc:Lcom/google/android/gms/internal/ads/zzmk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadf:Lcom/google/android/gms/internal/ads/zzmk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacr:Lcom/google/android/gms/internal/ads/zzmv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadg:Lcom/google/android/gms/internal/ads/zzmv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacq:Lcom/google/android/gms/internal/ads/zzmy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzmy;->zzd(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadf:Lcom/google/android/gms/internal/ads/zzmk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadg:Lcom/google/android/gms/internal/ads/zzmv;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgf;->zza(Lcom/google/android/gms/internal/ads/zzmk;Lcom/google/android/gms/internal/ads/zzmv;)V

    goto :goto_47

    :cond_5b
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadb:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadb:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzact:Lcom/google/android/gms/internal/ads/zzgl;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Lcom/google/android/gms/internal/ads/zzlu;Z)V

    return-void
.end method

.method public final varargs zza([Lcom/google/android/gms/internal/ads/zzgh;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzact:Lcom/google/android/gms/internal/ads/zzgl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgl;->zza([Lcom/google/android/gms/internal/ads/zzgh;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgf;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final varargs zzb([Lcom/google/android/gms/internal/ads/zzgh;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzact:Lcom/google/android/gms/internal/ads/zzgl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgl;->zzb([Lcom/google/android/gms/internal/ads/zzgh;)V

    return-void
.end method

.method public final zzdu()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacy:Z

    return v0
.end method

.method public final zzdv()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacp:[Lcom/google/android/gms/internal/ads/zzgx;

    array-length v0, v0

    return v0
.end method

.method public final zzdw()J
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzada:I

    if-lez v0, :cond_d

    goto :goto_29

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzgn;->zzadr:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzha;->zzer()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzgn;->zzaev:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzga;->zzdg(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_29
    :goto_29
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzadl:J

    return-wide v0
.end method

.method public final zze(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacy:Z

    if-eq v0, p1, :cond_23

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacy:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzact:Lcom/google/android/gms/internal/ads/zzgl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgl;->zze(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgf;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzacz:I

    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzgf;->zza(ZI)V

    goto :goto_11

    :cond_23
    return-void
.end method
