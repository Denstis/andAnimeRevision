###### Class com.google.android.gms.internal.ads.zzgl (com.google.android.gms.internal.ads.zzgl)
.class final Lcom/google/android/gms/internal/ads/zzgl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/gms/internal/ads/zzlr;
.implements Lcom/google/android/gms/internal/ads/zzlt;
.implements Lcom/google/android/gms/internal/ads/zzmx;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private repeatMode:I

.field private state:I

.field private final zzacp:[Lcom/google/android/gms/internal/ads/zzgx;

.field private final zzacq:Lcom/google/android/gms/internal/ads/zzmy;

.field private final zzacs:Landroid/os/Handler;

.field private final zzacv:Lcom/google/android/gms/internal/ads/zzhd;

.field private final zzacw:Lcom/google/android/gms/internal/ads/zzha;

.field private zzacy:Z

.field private zzadc:Z

.field private zzadd:Lcom/google/android/gms/internal/ads/zzgy;

.field private zzadh:Lcom/google/android/gms/internal/ads/zzgu;

.field private zzadi:Lcom/google/android/gms/internal/ads/zzgn;

.field private final zzady:[Lcom/google/android/gms/internal/ads/zzgw;

.field private final zzadz:Lcom/google/android/gms/internal/ads/zzgs;

.field private zzaea:Lcom/google/android/gms/internal/ads/zzlu;

.field private final zzaec:Lcom/google/android/gms/internal/ads/zzod;

.field private final zzaed:Landroid/os/HandlerThread;

.field private final zzaee:Lcom/google/android/gms/internal/ads/zzgc;

.field private zzaef:Lcom/google/android/gms/internal/ads/zzgx;

.field private zzaeg:Lcom/google/android/gms/internal/ads/zznv;

.field private zzaeh:[Lcom/google/android/gms/internal/ads/zzgx;

.field private zzaei:Z

.field private zzaej:Z

.field private zzaek:I

.field private zzael:I

.field private zzaem:J

.field private zzaen:I

.field private zzaeo:Lcom/google/android/gms/internal/ads/zzgm;

.field private zzaep:J

.field private zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

.field private zzaer:Lcom/google/android/gms/internal/ads/zzgk;

.field private zzaes:Lcom/google/android/gms/internal/ads/zzgk;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzgx;Lcom/google/android/gms/internal/ads/zzmy;Lcom/google/android/gms/internal/ads/zzgs;ZILandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzgn;Lcom/google/android/gms/internal/ads/zzgc;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacp:[Lcom/google/android/gms/internal/ads/zzgx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacq:Lcom/google/android/gms/internal/ads/zzmy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadz:Lcom/google/android/gms/internal/ads/zzgs;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacy:Z

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgl;->repeatMode:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacs:Landroid/os/Handler;

    const/4 p4, 0x1

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzgl;->state:I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaee:Lcom/google/android/gms/internal/ads/zzgc;

    array-length p4, p1

    new-array p4, p4, [Lcom/google/android/gms/internal/ads/zzgw;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzady:[Lcom/google/android/gms/internal/ads/zzgw;

    const/4 p4, 0x0

    :goto_1d
    array-length p5, p1

    if-ge p4, p5, :cond_32

    aget-object p5, p1, p4

    invoke-interface {p5, p4}, Lcom/google/android/gms/internal/ads/zzgx;->setIndex(I)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzady:[Lcom/google/android/gms/internal/ads/zzgw;

    aget-object p6, p1, p4

    invoke-interface {p6}, Lcom/google/android/gms/internal/ads/zzgx;->zzdj()Lcom/google/android/gms/internal/ads/zzgw;

    move-result-object p6

    aput-object p6, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_1d

    :cond_32
    new-instance p1, Lcom/google/android/gms/internal/ads/zzod;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzod;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaec:Lcom/google/android/gms/internal/ads/zzod;

    new-array p1, p3, [Lcom/google/android/gms/internal/ads/zzgx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeh:[Lcom/google/android/gms/internal/ads/zzgx;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacv:Lcom/google/android/gms/internal/ads/zzhd;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzha;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzha;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzmy;->zza(Lcom/google/android/gms/internal/ads/zzmx;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgu;->zzafz:Lcom/google/android/gms/internal/ads/zzgu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    new-instance p1, Landroid/os/HandlerThread;

    const/16 p2, -0x10

    const-string p3, "ExoPlayerImplInternal:Handler"

    invoke-direct {p1, p3, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaed:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaed:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaed:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->handler:Landroid/os/Handler;

    return-void
.end method

.method private final setState(I)V
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->state:I

    if-eq v0, p1, :cond_11

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->state:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacs:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    return-void
.end method

.method private final zza(ILcom/google/android/gms/internal/ads/zzgy;Lcom/google/android/gms/internal/ads/zzgy;)I
    .registers 10

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgy;->zzeq()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, p1

    const/4 p1, -0x1

    :goto_8
    if-ge v2, v0, :cond_26

    if-ne p1, v1, :cond_26

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacv:Lcom/google/android/gms/internal/ads/zzhd;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzgl;->repeatMode:I

    invoke-virtual {p2, v3, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Lcom/google/android/gms/internal/ads/zzhd;I)I

    move-result v3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    const/4 v4, 0x1

    invoke-virtual {p2, v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzha;->zzadn:Ljava/lang/Object;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzgy;->zzc(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_26
    return p1
.end method

.method private final zza(IJ)J
    .registers 11

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgl;->zzee()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaej:Z

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgl;->setState(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    const/4 v3, 0x0

    if-nez v2, :cond_18

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgk;->release()V

    :cond_16
    move-object v4, v3

    goto :goto_2b

    :cond_18
    move-object v4, v3

    :goto_19
    if-eqz v2, :cond_2b

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzgk;->zzadr:I

    if-ne v5, p1, :cond_25

    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/zzgk;->zzadu:Z

    if-eqz v5, :cond_25

    move-object v4, v2

    goto :goto_28

    :cond_25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgk;->release()V

    :goto_28
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    goto :goto_19

    :cond_2b
    :goto_2b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    if-ne p1, v4, :cond_33

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    if-eq p1, v2, :cond_4b

    :cond_33
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeh:[Lcom/google/android/gms/internal/ads/zzgx;

    array-length v2, p1

    const/4 v5, 0x0

    :goto_37
    if-ge v5, v2, :cond_41

    aget-object v6, p1, v5

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzgx;->disable()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    :cond_41
    new-array p1, v0, [Lcom/google/android/gms/internal/ads/zzgx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeh:[Lcom/google/android/gms/internal/ads/zzgx;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeg:Lcom/google/android/gms/internal/ads/zznv;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaef:Lcom/google/android/gms/internal/ads/zzgx;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    :cond_4b
    if-eqz v4, :cond_6a

    iput-object v3, v4, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzgl;->zzb(Lcom/google/android/gms/internal/ads/zzgk;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzgk;->zzadv:Z

    if-eqz v0, :cond_63

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgk;->zzadm:Lcom/google/android/gms/internal/ads/zzls;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzls;->zzea(J)J

    move-result-wide p1

    move-wide p2, p1

    :cond_63
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzgl;->zzdk(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgl;->zzei()V

    goto :goto_73

    :cond_6a
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzgl;->zzdk(J)V

    :goto_73
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzgm;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzgm;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgm;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    :cond_a
    :try_start_a
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzgm;->zzaet:I

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzgm;->zzaeu:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgl;->zzb(Lcom/google/android/gms/internal/ads/zzgy;IJ)Landroid/util/Pair;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_12} :catch_60

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    if-ne v1, v0, :cond_17

    return-object p1

    :cond_17
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzha;->zzadn:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgy;->zzc(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_3c
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgl;->zza(ILcom/google/android/gms/internal/ads/zzgy;Lcom/google/android/gms/internal/ads/zzgy;)I

    move-result p1

    if-eq p1, v2, :cond_5e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgl;->zzb(IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_5e
    const/4 p1, 0x0

    return-object p1

    :catch_60
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzgm;->zzaet:I

    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzgm;->zzaeu:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Lcom/google/android/gms/internal/ads/zzgy;IJ)V

    throw v0
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzgy;IJJ)Landroid/util/Pair;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzgy;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgy;->zzep()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/internal/ads/zznr;->zzc(III)I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacv:Lcom/google/android/gms/internal/ads/zzhd;

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzhd;ZJ)Lcom/google/android/gms/internal/ads/zzhd;

    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p3, p5

    if-nez p2, :cond_24

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacv:Lcom/google/android/gms/internal/ads/zzhd;

    iget-wide p3, p2, Lcom/google/android/gms/internal/ads/zzhd;->zzagw:J

    cmp-long p2, p3, p5

    if-nez p2, :cond_24

    const/4 p1, 0x0

    return-object p1

    :cond_24
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacv:Lcom/google/android/gms/internal/ads/zzhd;

    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/zzhd;->zzagx:J

    add-long/2addr v2, p3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    invoke-virtual {p1, v1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;

    move-result-object p1

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzha;->zzagh:J

    cmp-long p3, p1, p5

    if-eqz p3, :cond_37

    cmp-long p3, v2, p1

    :cond_37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final zza(JJ)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    add-long/2addr p1, p3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-gtz v0, :cond_18

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_18
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzgl;->handler:Landroid/os/Handler;

    invoke-virtual {p3, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzgk;)V
    .registers 1

    :goto_0
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgk;->release()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    goto :goto_0

    :cond_8
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzgx;)V
    .registers 3

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzgx;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzgx;->stop()V

    :cond_a
    return-void
.end method

.method private final zza(Ljava/lang/Object;I)V
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgn;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgl;->zzb(Ljava/lang/Object;I)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgn;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(IJ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgl;->setState(I)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgl;->zzh(Z)V

    return-void
.end method

.method private final zza([ZI)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzgx;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeh:[Lcom/google/android/gms/internal/ads/zzgx;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzgl;->zzacp:[Lcom/google/android/gms/internal/ads/zzgx;

    array-length v5, v4

    if-ge v2, v5, :cond_97

    aget-object v4, v4, v2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzgk;->zzadx:Lcom/google/android/gms/internal/ads/zzna;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzna;->zzbef:Lcom/google/android/gms/internal/ads/zzmv;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzmv;->zzax(I)Lcom/google/android/gms/internal/ads/zzmt;

    move-result-object v5

    if-eqz v5, :cond_93

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeh:[Lcom/google/android/gms/internal/ads/zzgx;

    add-int/lit8 v15, v3, 0x1

    aput-object v4, v6, v3

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzgx;->getState()I

    move-result v3

    if-nez v3, :cond_92

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadx:Lcom/google/android/gms/internal/ads/zzna;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzna;->zzbeh:[Lcom/google/android/gms/internal/ads/zzgz;

    aget-object v7, v3, v2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzgl;->zzacy:Z

    const/4 v6, 0x1

    if-eqz v3, :cond_3e

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzgl;->state:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_3e

    const/4 v3, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v3, 0x0

    :goto_3f
    aget-boolean v8, p1, v2

    if-nez v8, :cond_47

    if-eqz v3, :cond_47

    const/4 v12, 0x1

    goto :goto_48

    :cond_47
    const/4 v12, 0x0

    :goto_48
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzmt;->length()I

    move-result v6

    new-array v8, v6, [Lcom/google/android/gms/internal/ads/zzgo;

    const/4 v6, 0x0

    :goto_4f
    array-length v9, v8

    if-ge v6, v9, :cond_5b

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/zzmt;->zzau(I)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v9

    aput-object v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4f

    :cond_5b
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzgk;->zzado:[Lcom/google/android/gms/internal/ads/zzmd;

    aget-object v9, v6, v2

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzgl;->zzaep:J

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgk;->zzdz()J

    move-result-wide v13

    move-object v6, v4

    invoke-interface/range {v6 .. v14}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Lcom/google/android/gms/internal/ads/zzgz;[Lcom/google/android/gms/internal/ads/zzgo;Lcom/google/android/gms/internal/ads/zzmd;JZJ)V

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzgx;->zzdk()Lcom/google/android/gms/internal/ads/zznv;

    move-result-object v5

    if-eqz v5, :cond_8d

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeg:Lcom/google/android/gms/internal/ads/zznv;

    if-nez v6, :cond_81

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeg:Lcom/google/android/gms/internal/ads/zznv;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzgl;->zzaef:Lcom/google/android/gms/internal/ads/zzgx;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeg:Lcom/google/android/gms/internal/ads/zznv;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzgl;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/zznv;->zzb(Lcom/google/android/gms/internal/ads/zzgu;)Lcom/google/android/gms/internal/ads/zzgu;

    goto :goto_8d

    :cond_81
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Multiple renderer media clocks enabled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgd;->zza(Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object v1

    throw v1

    :cond_8d
    :goto_8d
    if-eqz v3, :cond_92

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzgx;->start()V

    :cond_92
    move v3, v15

    :cond_93
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    :cond_97
    return-void
.end method

.method private final zzb(IJ)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgl;->zzb(Lcom/google/android/gms/internal/ads/zzgy;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzgy;IJ)Landroid/util/Pair;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzgy;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Lcom/google/android/gms/internal/ads/zzgy;IJJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzgk;)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacp:[Lcom/google/android/gms/internal/ads/zzgx;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacp:[Lcom/google/android/gms/internal/ads/zzgx;

    array-length v5, v4

    if-ge v2, v5, :cond_5c

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzgx;->getState()I

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v5, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v5, 0x0

    :goto_1d
    aput-boolean v5, v0, v2

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzgk;->zzadx:Lcom/google/android/gms/internal/ads/zzna;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzna;->zzbef:Lcom/google/android/gms/internal/ads/zzmv;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzmv;->zzax(I)Lcom/google/android/gms/internal/ads/zzmt;

    move-result-object v5

    if-eqz v5, :cond_2b

    add-int/lit8 v3, v3, 0x1

    :cond_2b
    aget-boolean v6, v0, v2

    if-eqz v6, :cond_59

    if-eqz v5, :cond_43

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzgx;->zzdo()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzgx;->zzdl()Lcom/google/android/gms/internal/ads/zzmd;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzgk;->zzado:[Lcom/google/android/gms/internal/ads/zzmd;

    aget-object v6, v6, v2

    if-ne v5, v6, :cond_59

    :cond_43
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaef:Lcom/google/android/gms/internal/ads/zzgx;

    if-ne v4, v5, :cond_53

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaec:Lcom/google/android/gms/internal/ads/zzod;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeg:Lcom/google/android/gms/internal/ads/zznv;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzod;->zza(Lcom/google/android/gms/internal/ads/zznv;)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeg:Lcom/google/android/gms/internal/ads/zznv;

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaef:Lcom/google/android/gms/internal/ads/zzgx;

    :cond_53
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Lcom/google/android/gms/internal/ads/zzgx;)V

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzgx;->disable()V

    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_5c
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacs:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgk;->zzadx:Lcom/google/android/gms/internal/ads/zzna;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzgl;->zza([ZI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;I)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacs:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    invoke-direct {v1, v2, p1, v3, p2}, Lcom/google/android/gms/internal/ads/zzgp;-><init>(Lcom/google/android/gms/internal/ads/zzgy;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgn;I)V

    const/4 p1, 0x6

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private final zzdk(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    if-nez v0, :cond_8

    const-wide/32 v0, 0x3938700

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgk;->zzdz()J

    move-result-wide v0

    :goto_c
    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaep:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaec:Lcom/google/android/gms/internal/ads/zzod;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaep:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzod;->zzef(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeh:[Lcom/google/android/gms/internal/ads/zzgx;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, p2, :cond_26

    aget-object v1, p1, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaep:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgx;->zzdi(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_26
    return-void
.end method

.method private final zzdl(J)Z
    .registers 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzgn;->zzaev:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    if-eqz p1, :cond_1c

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzgk;->zzadu:Z

    if-eqz p1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p1, 0x0

    return p1

    :cond_1e
    :goto_1e
    const/4 p1, 0x1

    return p1
.end method

.method private final zzed()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaej:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaec:Lcom/google/android/gms/internal/ads/zzod;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzod;->start()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeh:[Lcom/google/android/gms/internal/ads/zzgx;

    array-length v2, v1

    :goto_b
    if-ge v0, v2, :cond_15

    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzgx;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_15
    return-void
.end method

.method private final zzee()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaec:Lcom/google/android/gms/internal/ads/zzod;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzod;->stop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeh:[Lcom/google/android/gms/internal/ads/zzgx;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Lcom/google/android/gms/internal/ads/zzgx;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    return-void
.end method

.method private final zzef()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgk;->zzadm:Lcom/google/android/gms/internal/ads/zzls;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzls;->zzhc()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgl;->zzdk(J)V

    goto :goto_44

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaef:Lcom/google/android/gms/internal/ads/zzgx;

    if-eqz v0, :cond_32

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgx;->zzeo()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeg:Lcom/google/android/gms/internal/ads/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznv;->zzfj()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaep:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaec:Lcom/google/android/gms/internal/ads/zzod;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaep:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzod;->zzef(J)V

    goto :goto_3a

    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaec:Lcom/google/android/gms/internal/ads/zzod;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzod;->zzfj()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaep:J

    :goto_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaep:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgk;->zzdz()J

    move-result-wide v3

    sub-long/2addr v1, v3

    move-wide v0, v1

    :goto_44
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iput-wide v0, v2, Lcom/google/android/gms/internal/ads/zzgn;->zzaev:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaem:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeh:[Lcom/google/android/gms/internal/ads/zzgx;

    array-length v0, v0

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_5b

    move-wide v3, v1

    goto :goto_63

    :cond_5b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgk;->zzadm:Lcom/google/android/gms/internal/ads/zzls;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzls;->zzhd()J

    move-result-wide v3

    :goto_63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    cmp-long v5, v3, v1

    if-nez v5, :cond_78

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzgk;->zzadr:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;

    move-result-object v1

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzha;->zzagh:J

    :cond_78
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzgn;->zzaew:J

    return-void
.end method

.method private final zzeg()V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgl;->zzh(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadz:Lcom/google/android/gms/internal/ads/zzgs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgs;->onStopped()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgl;->setState(I)V

    return-void
.end method

.method private final zzeh()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    if-eqz v0, :cond_29

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzgk;->zzadu:Z

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    if-eqz v1, :cond_10

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    if-ne v1, v0, :cond_29

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeh:[Lcom/google/android/gms/internal/ads/zzgx;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzgx;->zzdm()Z

    move-result v3

    if-nez v3, :cond_1f

    return-void

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgk;->zzadm:Lcom/google/android/gms/internal/ads/zzls;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzls;->zzha()V

    :cond_29
    return-void
.end method

.method private final zzei()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzgk;->zzadu:Z

    if-nez v1, :cond_9

    const-wide/16 v0, 0x0

    goto :goto_f

    :cond_9
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgk;->zzadm:Lcom/google/android/gms/internal/ads/zzls;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzls;->zzgz()J

    move-result-wide v0

    :goto_f
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1a

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgl;->zzg(Z)V

    return-void

    :cond_1a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaep:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgk;->zzdz()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sub-long/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadz:Lcom/google/android/gms/internal/ads/zzgs;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgs;->zzdn(J)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgl;->zzg(Z)V

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgk;->zzadm:Lcom/google/android/gms/internal/ads/zzls;

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzls;->zzdy(J)Z

    :cond_36
    return-void
.end method

.method private final zzg(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadc:Z

    if-eq v0, p1, :cond_11

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacs:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    return-void
.end method

.method private final zzh(Z)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaej:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaec:Lcom/google/android/gms/internal/ads/zzod;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzod;->stop()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeg:Lcom/google/android/gms/internal/ads/zznv;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaef:Lcom/google/android/gms/internal/ads/zzgx;

    const-wide/32 v2, 0x3938700

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaep:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeh:[Lcom/google/android/gms/internal/ads/zzgx;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v3, :cond_34

    aget-object v5, v2, v4

    :try_start_20
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Lcom/google/android/gms/internal/ads/zzgx;)V

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzgx;->disable()V
    :try_end_26
    .catch Lcom/google/android/gms/internal/ads/zzgd; {:try_start_20 .. :try_end_26} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_26} :catch_27

    goto :goto_31

    :catch_27
    move-exception v5

    goto :goto_2a

    :catch_29
    move-exception v5

    :goto_2a
    const-string v6, "ExoPlayerImplInternal"

    const-string v7, "Stop failed."

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_34
    new-array v2, v0, [Lcom/google/android/gms/internal/ads/zzgx;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeh:[Lcom/google/android/gms/internal/ads/zzgx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    if-eqz v2, :cond_3d

    goto :goto_3f

    :cond_3d
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    :goto_3f
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Lcom/google/android/gms/internal/ads/zzgk;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgl;->zzg(Z)V

    if-eqz p1, :cond_58

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaea:Lcom/google/android/gms/internal/ads/zzlu;

    if-eqz p1, :cond_56

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzlu;->zzhm()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaea:Lcom/google/android/gms/internal/ads/zzlu;

    :cond_56
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    :cond_58
    return-void
.end method

.method private final zzn(I)Z
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacv:Lcom/google/android/gms/internal/ads/zzhd;

    invoke-virtual {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzhd;Z)Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzhd;->zzagt:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzacv:Lcom/google/android/gms/internal/ads/zzhd;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzgl;->repeatMode:I

    invoke-virtual {v0, p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Lcom/google/android/gms/internal/ads/zzhd;I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_25

    const/4 p1, 0x1

    return p1

    :cond_25
    return v2
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 36

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    const/4 v10, 0x1

    :try_start_5
    iget v2, v1, Landroid/os/Message;->what:I
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/zzgd; {:try_start_5 .. :try_end_7} :catch_8dd
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_7} :catch_8cb
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_7} :catch_8af

    const/4 v11, 0x7

    const-wide/16 v3, 0x0

    const/4 v14, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v15, 0x4

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x2

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_8ec

    return v9

    :pswitch_19
    :try_start_19
    iget v1, v1, Landroid/os/Message;->arg1:I

    iput v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->repeatMode:I

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    if-eqz v2, :cond_24

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    goto :goto_26

    :cond_24
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    :goto_26
    if-eqz v2, :cond_9e

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    if-ne v2, v3, :cond_2e

    const/4 v3, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x0

    :goto_2f
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    if-ne v2, v4, :cond_37

    move v4, v3

    move-object v3, v2

    const/4 v2, 0x1

    goto :goto_3a

    :cond_37
    move v4, v3

    move-object v3, v2

    const/4 v2, 0x0

    :goto_3a
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget v12, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadr:I

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacv:Lcom/google/android/gms/internal/ads/zzhd;

    invoke-virtual {v11, v12, v13, v14, v1}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Lcom/google/android/gms/internal/ads/zzhd;I)I

    move-result v11

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    if-eqz v12, :cond_65

    if-eq v11, v5, :cond_65

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzgk;->zzadr:I

    if-ne v12, v11, :cond_65

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    if-ne v3, v11, :cond_5a

    const/4 v11, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v11, 0x0

    :goto_5b
    or-int/2addr v4, v11

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    if-ne v3, v11, :cond_62

    const/4 v11, 0x1

    goto :goto_63

    :cond_62
    const/4 v11, 0x0

    :goto_63
    or-int/2addr v2, v11

    goto :goto_3a

    :cond_65
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    if-eqz v5, :cond_70

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Lcom/google/android/gms/internal/ads/zzgk;)V

    iput-object v6, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    :cond_70
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadr:I

    invoke-direct {v8, v5}, Lcom/google/android/gms/internal/ads/zzgl;->zzn(I)Z

    move-result v5

    iput-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadt:Z

    if-nez v2, :cond_7c

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    :cond_7c
    if-nez v4, :cond_95

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    if-eqz v2, :cond_95

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzgk;->zzadr:I

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzgn;->zzaev:J

    invoke-direct {v8, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgl;->zza(IJ)J

    move-result-wide v3

    new-instance v5, Lcom/google/android/gms/internal/ads/zzgn;

    invoke-direct {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(IJ)V

    iput-object v5, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    :cond_95
    iget v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->state:I

    if-ne v2, v15, :cond_9e

    if-eqz v1, :cond_9e

    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/zzgl;->setState(I)V

    :cond_9e
    return v10

    :pswitch_9f
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzgh;
    :try_end_a3
    .catch Lcom/google/android/gms/internal/ads/zzgd; {:try_start_19 .. :try_end_a3} :catch_8aa
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_a3} :catch_8a5
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_a3} :catch_8af

    :try_start_a3
    array-length v2, v1

    :goto_a4
    if-ge v9, v2, :cond_b4

    aget-object v3, v1, v9

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzgh;->zzacl:Lcom/google/android/gms/internal/ads/zzge;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzgh;->zzacm:I

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzgh;->zzacn:Ljava/lang/Object;

    invoke-interface {v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzge;->zza(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_a4

    :cond_b4
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaea:Lcom/google/android/gms/internal/ads/zzlu;

    if-eqz v1, :cond_bd

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_bd
    .catchall {:try_start_a3 .. :try_end_bd} :catchall_cc

    :cond_bd
    :try_start_bd
    monitor-enter p0
    :try_end_be
    .catch Lcom/google/android/gms/internal/ads/zzgd; {:try_start_bd .. :try_end_be} :catch_8aa
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_be} :catch_8a5
    .catch Ljava/lang/RuntimeException; {:try_start_bd .. :try_end_be} :catch_8af

    :try_start_be
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzael:I

    add-int/2addr v1, v10

    iput v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzael:I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return v10

    :catchall_c8
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_cb
    .catchall {:try_start_be .. :try_end_cb} :catchall_c8

    :try_start_cb
    throw v1

    :catchall_cc
    move-exception v0

    move-object v1, v0

    monitor-enter p0
    :try_end_cf
    .catch Lcom/google/android/gms/internal/ads/zzgd; {:try_start_cb .. :try_end_cf} :catch_8aa
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_cf} :catch_8a5
    .catch Ljava/lang/RuntimeException; {:try_start_cb .. :try_end_cf} :catch_8af

    :try_start_cf
    iget v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzael:I

    add-int/2addr v2, v10

    iput v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzael:I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_d8
    .catchall {:try_start_cf .. :try_end_d8} :catchall_d9

    :try_start_d8
    throw v1
    :try_end_d9
    .catch Lcom/google/android/gms/internal/ads/zzgd; {:try_start_d8 .. :try_end_d9} :catch_8aa
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_d9} :catch_8a5
    .catch Ljava/lang/RuntimeException; {:try_start_d8 .. :try_end_d9} :catch_8af

    :catchall_d9
    move-exception v0

    move-object v1, v0

    :try_start_db
    monitor-exit p0
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_d9

    :try_start_dc
    throw v1

    :pswitch_dd
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    if-eqz v1, :cond_1cf

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    const/4 v2, 0x1

    :goto_e4
    if-eqz v1, :cond_1cf

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzgk;->zzadu:Z

    if-nez v3, :cond_ec

    goto/16 :goto_1cf

    :cond_ec
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgk;->zzeb()Z

    move-result v3

    if-nez v3, :cond_fa

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    if-ne v1, v3, :cond_f7

    const/4 v2, 0x0

    :cond_f7
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    goto :goto_e4

    :cond_fa
    if-eqz v2, :cond_198

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    if-eq v2, v3, :cond_104

    const/4 v2, 0x1

    goto :goto_105

    :cond_104
    const/4 v2, 0x0

    :goto_105
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Lcom/google/android/gms/internal/ads/zzgk;)V

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iput-object v6, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacp:[Lcom/google/android/gms/internal/ads/zzgx;

    array-length v3, v3

    new-array v3, v3, [Z

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget-wide v11, v5, Lcom/google/android/gms/internal/ads/zzgn;->zzaev:J

    invoke-virtual {v4, v11, v12, v2, v3}, Lcom/google/android/gms/internal/ads/zzgk;->zza(JZ[Z)J

    move-result-wide v4

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget-wide v11, v2, Lcom/google/android/gms/internal/ads/zzgn;->zzaev:J

    cmp-long v2, v4, v11

    if-eqz v2, :cond_136

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iput-wide v4, v2, Lcom/google/android/gms/internal/ads/zzgn;->zzaev:J

    invoke-direct {v8, v4, v5}, Lcom/google/android/gms/internal/ads/zzgl;->zzdk(J)V

    :cond_136
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacp:[Lcom/google/android/gms/internal/ads/zzgx;

    array-length v2, v2

    new-array v2, v2, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_13d
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacp:[Lcom/google/android/gms/internal/ads/zzgx;

    array-length v11, v11

    if-ge v4, v11, :cond_189

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacp:[Lcom/google/android/gms/internal/ads/zzgx;

    aget-object v11, v11, v4

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzgx;->getState()I

    move-result v12

    if-eqz v12, :cond_14e

    const/4 v12, 0x1

    goto :goto_14f

    :cond_14e
    const/4 v12, 0x0

    :goto_14f
    aput-boolean v12, v2, v4

    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzgk;->zzado:[Lcom/google/android/gms/internal/ads/zzmd;

    aget-object v12, v12, v4

    if-eqz v12, :cond_15b

    add-int/lit8 v5, v5, 0x1

    :cond_15b
    aget-boolean v13, v2, v4

    if-eqz v13, :cond_186

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzgx;->zzdl()Lcom/google/android/gms/internal/ads/zzmd;

    move-result-object v13

    if-eq v12, v13, :cond_17d

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaef:Lcom/google/android/gms/internal/ads/zzgx;

    if-ne v11, v13, :cond_176

    if-nez v12, :cond_172

    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaec:Lcom/google/android/gms/internal/ads/zzod;

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeg:Lcom/google/android/gms/internal/ads/zznv;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/ads/zzod;->zza(Lcom/google/android/gms/internal/ads/zznv;)V

    :cond_172
    iput-object v6, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeg:Lcom/google/android/gms/internal/ads/zznv;

    iput-object v6, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaef:Lcom/google/android/gms/internal/ads/zzgx;

    :cond_176
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Lcom/google/android/gms/internal/ads/zzgx;)V

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzgx;->disable()V

    goto :goto_186

    :cond_17d
    aget-boolean v12, v3, v4

    if-eqz v12, :cond_186

    iget-wide v12, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaep:J

    invoke-interface {v11, v12, v13}, Lcom/google/android/gms/internal/ads/zzgx;->zzdi(J)V

    :cond_186
    :goto_186
    add-int/lit8 v4, v4, 0x1

    goto :goto_13d

    :cond_189
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacs:Landroid/os/Handler;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgk;->zzadx:Lcom/google/android/gms/internal/ads/zzna;

    invoke-virtual {v3, v14, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {v8, v2, v5}, Lcom/google/android/gms/internal/ads/zzgl;->zza([ZI)V

    goto :goto_1c4

    :cond_198
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    :goto_19c
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    if-eqz v1, :cond_1a4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgk;->release()V

    goto :goto_19c

    :cond_1a4
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzgk;->zzadu:Z

    if-eqz v1, :cond_1c4

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzgk;->zzads:J

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget-wide v4, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaep:J

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgk;->zzdz()J

    move-result-wide v11

    sub-long/2addr v4, v11

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    invoke-virtual {v3, v1, v2, v9}, Lcom/google/android/gms/internal/ads/zzgk;->zzb(JZ)J

    :cond_1c4
    :goto_1c4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgl;->zzei()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgl;->zzef()V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1cf
    :goto_1cf
    return v10

    :pswitch_1d0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzls;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    if-eqz v2, :cond_1e2

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzgk;->zzadm:Lcom/google/android/gms/internal/ads/zzls;

    if-eq v2, v1, :cond_1df

    goto :goto_1e2

    :cond_1df
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgl;->zzei()V

    :cond_1e2
    :goto_1e2
    return v10

    :pswitch_1e3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzls;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    if-eqz v2, :cond_218

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzgk;->zzadm:Lcom/google/android/gms/internal/ads/zzls;

    if-eq v2, v1, :cond_1f2

    goto :goto_218

    :cond_1f2
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iput-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzgk;->zzadu:Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgk;->zzeb()Z

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzgk;->zzads:J

    invoke-virtual {v1, v2, v3, v9}, Lcom/google/android/gms/internal/ads/zzgk;->zzb(JZ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzgk;->zzads:J

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    if-nez v1, :cond_215

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzgk;->zzads:J

    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/internal/ads/zzgl;->zzdk(J)V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzgl;->zzb(Lcom/google/android/gms/internal/ads/zzgk;)V

    :cond_215
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgl;->zzei()V

    :cond_218
    :goto_218
    return v10

    :pswitch_219
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgy;

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_288

    iget v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaen:I

    if-lez v3, :cond_258

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeo:Lcom/google/android/gms/internal/ads/zzgm;

    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Lcom/google/android/gms/internal/ads/zzgm;)Landroid/util/Pair;

    move-result-object v3

    iget v4, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaen:I

    iput v9, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaen:I

    iput-object v6, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeo:Lcom/google/android/gms/internal/ads/zzgm;

    if-nez v3, :cond_240

    :goto_23b
    invoke-direct {v8, v1, v4}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Ljava/lang/Object;I)V

    goto/16 :goto_372

    :cond_240
    new-instance v7, Lcom/google/android/gms/internal/ads/zzgn;

    iget-object v11, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v7, v11, v14, v15}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(IJ)V

    iput-object v7, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    goto :goto_289

    :cond_258
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzgn;->zzads:J

    cmp-long v7, v3, v12

    if-nez v7, :cond_288

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgy;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_26d

    invoke-direct {v8, v1, v9}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Ljava/lang/Object;I)V

    goto/16 :goto_372

    :cond_26d
    invoke-direct {v8, v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzgl;->zzb(IJ)Landroid/util/Pair;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzgn;

    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v4, v7, v14, v15}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(IJ)V

    iput-object v4, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    :cond_288
    const/4 v4, 0x0

    :goto_289
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    if-eqz v3, :cond_290

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    goto :goto_292

    :cond_290
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    :goto_292
    if-eqz v3, :cond_36f

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadn:Ljava/lang/Object;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzgy;->zzc(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v5, :cond_2f2

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadr:I

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    invoke-direct {v8, v6, v2, v7}, Lcom/google/android/gms/internal/ads/zzgl;->zza(ILcom/google/android/gms/internal/ads/zzgy;Lcom/google/android/gms/internal/ads/zzgy;)I

    move-result v2

    if-ne v2, v5, :cond_2a9

    goto :goto_23b

    :cond_2a9
    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    invoke-virtual {v6, v2, v7, v9}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;

    invoke-direct {v8, v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzgl;->zzb(IJ)Landroid/util/Pair;

    move-result-object v2

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    invoke-virtual {v2, v6, v7, v10}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzha;->zzadn:Ljava/lang/Object;

    iput v5, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadr:I

    :goto_2d1
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    if-eqz v7, :cond_2e5

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadn:Ljava/lang/Object;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e1

    move v7, v6

    goto :goto_2e2

    :cond_2e1
    const/4 v7, -0x1

    :goto_2e2
    iput v7, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadr:I

    goto :goto_2d1

    :cond_2e5
    invoke-direct {v8, v6, v11, v12}, Lcom/google/android/gms/internal/ads/zzgl;->zza(IJ)J

    move-result-wide v2

    new-instance v5, Lcom/google/android/gms/internal/ads/zzgn;

    invoke-direct {v5, v6, v2, v3}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(IJ)V

    iput-object v5, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    goto/16 :goto_36f

    :cond_2f2
    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/zzgl;->zzn(I)Z

    move-result v2

    invoke-virtual {v3, v7, v2}, Lcom/google/android/gms/internal/ads/zzgk;->zzc(IZ)V

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    if-ne v3, v2, :cond_2ff

    const/4 v2, 0x1

    goto :goto_300

    :cond_2ff
    const/4 v2, 0x0

    :goto_300
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget v11, v11, Lcom/google/android/gms/internal/ads/zzgn;->zzadr:I

    if-eq v7, v11, :cond_319

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    new-instance v12, Lcom/google/android/gms/internal/ads/zzgn;

    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/zzgn;->zzads:J

    invoke-direct {v12, v7, v13, v14}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(IJ)V

    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/zzgn;->zzaev:J

    iput-wide v13, v12, Lcom/google/android/gms/internal/ads/zzgn;->zzaev:J

    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/zzgn;->zzaew:J

    iput-wide v13, v12, Lcom/google/android/gms/internal/ads/zzgn;->zzaew:J

    iput-object v12, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    :cond_319
    :goto_319
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    if-eqz v11, :cond_36f

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacv:Lcom/google/android/gms/internal/ads/zzhd;

    iget v15, v8, Lcom/google/android/gms/internal/ads/zzgl;->repeatMode:I

    invoke-virtual {v12, v7, v13, v14, v15}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Lcom/google/android/gms/internal/ads/zzhd;I)I

    move-result v7

    if-eq v7, v5, :cond_350

    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzgk;->zzadn:Ljava/lang/Object;

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    invoke-virtual {v13, v7, v14, v10}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzha;->zzadn:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_350

    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/zzgl;->zzn(I)Z

    move-result v3

    invoke-virtual {v11, v7, v3}, Lcom/google/android/gms/internal/ads/zzgk;->zzc(IZ)V

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    if-ne v11, v3, :cond_34c

    const/4 v3, 0x1

    goto :goto_34d

    :cond_34c
    const/4 v3, 0x0

    :goto_34d
    or-int/2addr v2, v3

    move-object v3, v11

    goto :goto_319

    :cond_350
    if-nez v2, :cond_366

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzgk;->zzadr:I

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzgn;->zzaev:J

    invoke-direct {v8, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgl;->zza(IJ)J

    move-result-wide v5

    new-instance v3, Lcom/google/android/gms/internal/ads/zzgn;

    invoke-direct {v3, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(IJ)V

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    goto :goto_36f

    :cond_366
    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iput-object v6, v2, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Lcom/google/android/gms/internal/ads/zzgk;)V

    :cond_36f
    :goto_36f
    invoke-direct {v8, v1, v4}, Lcom/google/android/gms/internal/ads/zzgl;->zzb(Ljava/lang/Object;I)V

    :goto_372
    return v10

    :pswitch_373
    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/zzgl;->zzh(Z)V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadz:Lcom/google/android/gms/internal/ads/zzgs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgs;->zzem()V

    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/zzgl;->setState(I)V

    monitor-enter p0
    :try_end_37f
    .catch Lcom/google/android/gms/internal/ads/zzgd; {:try_start_dc .. :try_end_37f} :catch_8aa
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_37f} :catch_8a5
    .catch Ljava/lang/RuntimeException; {:try_start_dc .. :try_end_37f} :catch_8af

    :try_start_37f
    iput-boolean v10, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaei:Z

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return v10

    :catchall_386
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_389
    .catchall {:try_start_37f .. :try_end_389} :catchall_386

    :try_start_389
    throw v1

    :pswitch_38a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgl;->zzeg()V

    return v10

    :pswitch_38e
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgu;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeg:Lcom/google/android/gms/internal/ads/zznv;

    if-eqz v2, :cond_39d

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeg:Lcom/google/android/gms/internal/ads/zznv;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zznv;->zzb(Lcom/google/android/gms/internal/ads/zzgu;)Lcom/google/android/gms/internal/ads/zzgu;

    move-result-object v1

    goto :goto_3a3

    :cond_39d
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaec:Lcom/google/android/gms/internal/ads/zzod;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzod;->zzb(Lcom/google/android/gms/internal/ads/zzgu;)Lcom/google/android/gms/internal/ads/zzgu;

    move-result-object v1

    :goto_3a3
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacs:Landroid/os/Handler;

    invoke-virtual {v2, v11, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return v10

    :pswitch_3af
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgm;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    if-nez v2, :cond_3c0

    iget v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaen:I

    add-int/2addr v2, v10

    iput v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaen:I

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeo:Lcom/google/android/gms/internal/ads/zzgm;

    goto/16 :goto_44b

    :cond_3c0
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Lcom/google/android/gms/internal/ads/zzgm;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_3e6

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgn;

    invoke-direct {v1, v9, v3, v4}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacs:Landroid/os/Handler;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    invoke-virtual {v1, v15, v10, v9, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgn;

    invoke-direct {v1, v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    invoke-direct {v8, v15}, Lcom/google/android/gms/internal/ads/zzgl;->setState(I)V

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzgl;->zzh(Z)V

    goto :goto_44b

    :cond_3e6
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzgm;->zzaeu:J

    cmp-long v1, v3, v12

    if-nez v1, :cond_3ee

    const/4 v1, 0x1

    goto :goto_3ef

    :cond_3ee
    const/4 v1, 0x0

    :goto_3ef
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_3ff
    .catch Lcom/google/android/gms/internal/ads/zzgd; {:try_start_389 .. :try_end_3ff} :catch_8aa
    .catch Ljava/io/IOException; {:try_start_389 .. :try_end_3ff} :catch_8a5
    .catch Ljava/lang/RuntimeException; {:try_start_389 .. :try_end_3ff} :catch_8af

    :try_start_3ff
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzgn;->zzadr:I

    if-ne v3, v2, :cond_42a

    const-wide/16 v6, 0x3e8

    div-long v11, v4, v6

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget-wide v13, v2, Lcom/google/android/gms/internal/ads/zzgn;->zzaev:J

    div-long/2addr v13, v6
    :try_end_40e
    .catchall {:try_start_3ff .. :try_end_40e} :catchall_44c

    cmp-long v2, v11, v13

    if-nez v2, :cond_42a

    :try_start_412
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgn;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(IJ)V

    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacs:Landroid/os/Handler;

    if-eqz v1, :cond_41f

    const/4 v1, 0x1

    goto :goto_420

    :cond_41f
    const/4 v1, 0x0

    :goto_420
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    invoke-virtual {v2, v15, v1, v9, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    :goto_426
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_429
    .catch Lcom/google/android/gms/internal/ads/zzgd; {:try_start_412 .. :try_end_429} :catch_8aa
    .catch Ljava/io/IOException; {:try_start_412 .. :try_end_429} :catch_8a5
    .catch Ljava/lang/RuntimeException; {:try_start_412 .. :try_end_429} :catch_8af

    goto :goto_44b

    :cond_42a
    :try_start_42a
    invoke-direct {v8, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzgl;->zza(IJ)J

    move-result-wide v6
    :try_end_42e
    .catchall {:try_start_42a .. :try_end_42e} :catchall_44c

    cmp-long v2, v4, v6

    if-eqz v2, :cond_434

    const/4 v2, 0x1

    goto :goto_435

    :cond_434
    const/4 v2, 0x0

    :goto_435
    or-int/2addr v1, v2

    :try_start_436
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgn;

    invoke-direct {v2, v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(IJ)V

    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacs:Landroid/os/Handler;

    if-eqz v1, :cond_443

    const/4 v1, 0x1

    goto :goto_444

    :cond_443
    const/4 v1, 0x0

    :goto_444
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    invoke-virtual {v2, v15, v1, v9, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    goto :goto_426

    :goto_44b
    return v10

    :catchall_44c
    move-exception v0

    move-object v2, v0

    new-instance v6, Lcom/google/android/gms/internal/ads/zzgn;

    invoke-direct {v6, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(IJ)V

    iput-object v6, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacs:Landroid/os/Handler;

    if-eqz v1, :cond_45b

    const/4 v1, 0x1

    goto :goto_45c

    :cond_45b
    const/4 v1, 0x0

    :goto_45c
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    invoke-virtual {v3, v15, v1, v9, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    throw v2

    :pswitch_466
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    if-nez v1, :cond_476

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaea:Lcom/google/android/gms/internal/ads/zzlu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzlu;->zzhl()V

    move-wide v14, v5

    goto/16 :goto_6d2

    :cond_476
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    if-nez v1, :cond_47f

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzgn;->zzadr:I

    goto :goto_4bd

    :cond_47f
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzgk;->zzadr:I

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzgk;->zzadt:Z

    if-nez v2, :cond_4ca

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgk;->zzea()Z

    move-result v2

    if-eqz v2, :cond_4ca

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    invoke-virtual {v2, v1, v7, v9}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;

    move-result-object v2

    iget-wide v14, v2, Lcom/google/android/gms/internal/ads/zzha;->zzagh:J

    cmp-long v2, v14, v12

    if-nez v2, :cond_4a0

    goto :goto_4ca

    :cond_4a0
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    if-eqz v2, :cond_4b1

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzgk;->index:I

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzgk;->index:I

    sub-int/2addr v2, v7

    const/16 v7, 0x64

    if-eq v2, v7, :cond_4ca

    :cond_4b1
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacv:Lcom/google/android/gms/internal/ads/zzhd;

    iget v15, v8, Lcom/google/android/gms/internal/ads/zzgl;->repeatMode:I

    invoke-virtual {v2, v1, v7, v14, v15}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Lcom/google/android/gms/internal/ads/zzhd;I)I

    move-result v1

    :goto_4bd
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgy;->zzeq()I

    move-result v2

    if-lt v1, v2, :cond_4cd

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaea:Lcom/google/android/gms/internal/ads/zzlu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzlu;->zzhl()V

    :cond_4ca
    :goto_4ca
    move-wide v14, v5

    goto/16 :goto_59f

    :cond_4cd
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    if-nez v2, :cond_4d7

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzgn;->zzaev:J

    :goto_4d5
    move-wide v14, v5

    goto :goto_52c

    :cond_4d7
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    invoke-virtual {v2, v1, v7, v9}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacv:Lcom/google/android/gms/internal/ads/zzhd;

    invoke-virtual {v2, v9, v7, v9}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzhd;Z)Lcom/google/android/gms/internal/ads/zzhd;

    if-eqz v1, :cond_4e8

    goto :goto_4d5

    :cond_4e8
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgk;->zzdz()J

    move-result-wide v1

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget v14, v14, Lcom/google/android/gms/internal/ads/zzgk;->zzadr:I

    iget-object v15, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    invoke-virtual {v7, v14, v15, v9}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;

    move-result-object v7

    iget-wide v14, v7, Lcom/google/android/gms/internal/ads/zzha;->zzagh:J

    add-long/2addr v1, v14

    iget-wide v14, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaep:J

    sub-long/2addr v1, v14

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    const/4 v14, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    move-object/from16 v1, p0

    move-object v2, v7

    move v3, v14

    move-wide v14, v5

    move-wide/from16 v4, v16

    move-wide/from16 v6, v18

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Lcom/google/android/gms/internal/ads/zzgy;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_59f

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move v1, v2

    :goto_52c
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    if-nez v2, :cond_537

    const-wide/32 v5, 0x3938700

    add-long/2addr v5, v3

    :goto_534
    move-wide/from16 v23, v5

    goto :goto_54d

    :cond_537
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgk;->zzdz()J

    move-result-wide v5

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzgk;->zzadr:I

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    invoke-virtual {v2, v7, v11, v9}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;

    move-result-object v2

    iget-wide v12, v2, Lcom/google/android/gms/internal/ads/zzha;->zzagh:J

    add-long/2addr v5, v12

    goto :goto_534

    :goto_54d
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    if-nez v2, :cond_554

    const/16 v29, 0x0

    goto :goto_55b

    :cond_554
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzgk;->index:I

    add-int/2addr v2, v10

    move/from16 v29, v2

    :goto_55b
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzgl;->zzn(I)Z

    move-result v31

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    invoke-virtual {v2, v1, v5, v10}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacp:[Lcom/google/android/gms/internal/ads/zzgx;

    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzady:[Lcom/google/android/gms/internal/ads/zzgw;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacq:Lcom/google/android/gms/internal/ads/zzmy;

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadz:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaea:Lcom/google/android/gms/internal/ads/zzlu;

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzha;->zzadn:Ljava/lang/Object;

    move-object/from16 v20, v2

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v25, v7

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move/from16 v30, v1

    move-wide/from16 v32, v3

    invoke-direct/range {v20 .. v33}, Lcom/google/android/gms/internal/ads/zzgk;-><init>([Lcom/google/android/gms/internal/ads/zzgx;[Lcom/google/android/gms/internal/ads/zzgw;JLcom/google/android/gms/internal/ads/zzmy;Lcom/google/android/gms/internal/ads/zzgs;Lcom/google/android/gms/internal/ads/zzlu;Ljava/lang/Object;IIZJ)V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    if-eqz v1, :cond_593

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    :cond_593
    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgk;->zzadm:Lcom/google/android/gms/internal/ads/zzls;

    invoke-interface {v1, v8, v3, v4}, Lcom/google/android/gms/internal/ads/zzls;->zza(Lcom/google/android/gms/internal/ads/zzlr;J)V

    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/zzgl;->zzg(Z)V

    :cond_59f
    :goto_59f
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    if-eqz v1, :cond_5b8

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgk;->zzea()Z

    move-result v1

    if-eqz v1, :cond_5ac

    goto :goto_5b8

    :cond_5ac
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    if-eqz v1, :cond_5bb

    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadc:Z

    if-nez v1, :cond_5bb

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgl;->zzei()V

    goto :goto_5bb

    :cond_5b8
    :goto_5b8
    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzgl;->zzg(Z)V

    :cond_5bb
    :goto_5bb
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    if-eqz v1, :cond_6d2

    :goto_5bf
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    if-eq v1, v2, :cond_5fc

    iget-wide v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaep:J

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadq:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_5fc

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgk;->release()V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzgl;->zzb(Lcom/google/android/gms/internal/ads/zzgk;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgn;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzgk;->zzadr:I

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzads:J

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgl;->zzef()V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacs:Landroid/os/Handler;

    const/4 v2, 0x5

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5bf

    :cond_5fc
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzgk;->zzadt:Z

    if-eqz v1, :cond_626

    const/4 v1, 0x0

    :goto_603
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacp:[Lcom/google/android/gms/internal/ads/zzgx;

    array-length v2, v2

    if-ge v1, v2, :cond_6d2

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacp:[Lcom/google/android/gms/internal/ads/zzgx;

    aget-object v2, v2, v1

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzado:[Lcom/google/android/gms/internal/ads/zzmd;

    aget-object v3, v3, v1

    if-eqz v3, :cond_623

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgx;->zzdl()Lcom/google/android/gms/internal/ads/zzmd;

    move-result-object v4

    if-ne v4, v3, :cond_623

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgx;->zzdm()Z

    move-result v3

    if-eqz v3, :cond_623

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgx;->zzdn()V

    :cond_623
    add-int/lit8 v1, v1, 0x1

    goto :goto_603

    :cond_626
    const/4 v1, 0x0

    :goto_627
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacp:[Lcom/google/android/gms/internal/ads/zzgx;

    array-length v2, v2

    if-ge v1, v2, :cond_649

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacp:[Lcom/google/android/gms/internal/ads/zzgx;

    aget-object v2, v2, v1

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzado:[Lcom/google/android/gms/internal/ads/zzmd;

    aget-object v3, v3, v1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgx;->zzdl()Lcom/google/android/gms/internal/ads/zzmd;

    move-result-object v4

    if-ne v4, v3, :cond_6d2

    if-eqz v3, :cond_646

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgx;->zzdm()Z

    move-result v2

    if-nez v2, :cond_646

    goto/16 :goto_6d2

    :cond_646
    add-int/lit8 v1, v1, 0x1

    goto :goto_627

    :cond_649
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    if-eqz v1, :cond_6d2

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzgk;->zzadu:Z

    if-eqz v1, :cond_6d2

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgk;->zzadx:Lcom/google/android/gms/internal/ads/zzna;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzgk;->zzadw:Lcom/google/android/gms/internal/ads/zzgk;

    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzgk;->zzadx:Lcom/google/android/gms/internal/ads/zzna;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadm:Lcom/google/android/gms/internal/ads/zzls;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzls;->zzhc()J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_678

    const/4 v3, 0x1

    goto :goto_679

    :cond_678
    const/4 v3, 0x0

    :goto_679
    const/4 v4, 0x0

    :goto_67a
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacp:[Lcom/google/android/gms/internal/ads/zzgx;

    array-length v5, v5

    if-ge v4, v5, :cond_6d2

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacp:[Lcom/google/android/gms/internal/ads/zzgx;

    aget-object v5, v5, v4

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzna;->zzbef:Lcom/google/android/gms/internal/ads/zzmv;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzmv;->zzax(I)Lcom/google/android/gms/internal/ads/zzmt;

    move-result-object v6

    if-eqz v6, :cond_6cf

    if-nez v3, :cond_6cc

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzgx;->zzdo()Z

    move-result v6

    if-nez v6, :cond_6cf

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzna;->zzbef:Lcom/google/android/gms/internal/ads/zzmv;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzmv;->zzax(I)Lcom/google/android/gms/internal/ads/zzmt;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzna;->zzbeh:[Lcom/google/android/gms/internal/ads/zzgz;

    aget-object v7, v7, v4

    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzna;->zzbeh:[Lcom/google/android/gms/internal/ads/zzgz;

    aget-object v11, v11, v4

    if-eqz v6, :cond_6cc

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzgz;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6cc

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzmt;->length()I

    move-result v7

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zzgo;

    const/4 v11, 0x0

    :goto_6b0
    array-length v12, v7

    if-ge v11, v12, :cond_6bc

    invoke-interface {v6, v11}, Lcom/google/android/gms/internal/ads/zzmt;->zzau(I)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v12

    aput-object v12, v7, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_6b0

    :cond_6bc
    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzgk;->zzado:[Lcom/google/android/gms/internal/ads/zzmd;

    aget-object v6, v6, v4

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaer:Lcom/google/android/gms/internal/ads/zzgk;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzgk;->zzdz()J

    move-result-wide v11

    invoke-interface {v5, v7, v6, v11, v12}, Lcom/google/android/gms/internal/ads/zzgx;->zza([Lcom/google/android/gms/internal/ads/zzgo;Lcom/google/android/gms/internal/ads/zzmd;J)V

    goto :goto_6cf

    :cond_6cc
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzgx;->zzdn()V

    :cond_6cf
    :goto_6cf
    add-int/lit8 v4, v4, 0x1

    goto :goto_67a

    :cond_6d2
    :goto_6d2
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    const-wide/16 v2, 0xa

    if-nez v1, :cond_6e0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgl;->zzeh()V

    invoke-direct {v8, v14, v15, v2, v3}, Lcom/google/android/gms/internal/ads/zzgl;->zza(JJ)V

    goto/16 :goto_842

    :cond_6e0
    const-string v1, "doSomeWork"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzog;->beginSection(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgl;->zzef()V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgk;->zzadm:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzgn;->zzaev:J

    invoke-interface {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzls;->zzdz(J)V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeh:[Lcom/google/android/gms/internal/ads/zzgx;

    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    :goto_6f9
    if-ge v5, v4, :cond_730

    aget-object v11, v1, v5

    iget-wide v12, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaep:J

    iget-wide v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaem:J

    invoke-interface {v11, v12, v13, v2, v3}, Lcom/google/android/gms/internal/ads/zzgx;->zzb(JJ)V

    if-eqz v7, :cond_70e

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzgx;->zzeo()Z

    move-result v2

    if-eqz v2, :cond_70e

    const/4 v7, 0x1

    goto :goto_70f

    :cond_70e
    const/4 v7, 0x0

    :goto_70f
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzgx;->isReady()Z

    move-result v2

    if-nez v2, :cond_71e

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzgx;->zzeo()Z

    move-result v2

    if-eqz v2, :cond_71c

    goto :goto_71e

    :cond_71c
    const/4 v2, 0x0

    goto :goto_71f

    :cond_71e
    :goto_71e
    const/4 v2, 0x1

    :goto_71f
    if-nez v2, :cond_724

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzgx;->zzdp()V

    :cond_724
    if-eqz v6, :cond_72a

    if-eqz v2, :cond_72a

    const/4 v6, 0x1

    goto :goto_72b

    :cond_72a
    const/4 v6, 0x0

    :goto_72b
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v2, 0xa

    goto :goto_6f9

    :cond_730
    if-nez v6, :cond_735

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgl;->zzeh()V

    :cond_735
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeg:Lcom/google/android/gms/internal/ads/zznv;

    if-eqz v1, :cond_75a

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeg:Lcom/google/android/gms/internal/ads/zznv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zznv;->zzfc()Lcom/google/android/gms/internal/ads/zzgu;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75a

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaec:Lcom/google/android/gms/internal/ads/zzod;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeg:Lcom/google/android/gms/internal/ads/zznv;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzod;->zza(Lcom/google/android/gms/internal/ads/zznv;)V

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacs:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_75a
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzgk;->zzadr:I

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    invoke-virtual {v1, v2, v3, v9}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzha;->zzagh:J

    if-eqz v7, :cond_78b

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_77b

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzgn;->zzaev:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_78b

    :cond_77b
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaes:Lcom/google/android/gms/internal/ads/zzgk;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadt:Z

    if-eqz v3, :cond_78b

    const/4 v3, 0x4

    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/ads/zzgl;->setState(I)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgl;->zzee()V

    const/4 v4, 0x2

    goto/16 :goto_80b

    :cond_78b
    iget v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7f0

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeh:[Lcom/google/android/gms/internal/ads/zzgx;

    array-length v3, v3

    if-lez v3, :cond_7de

    if-eqz v6, :cond_7dc

    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaej:Z

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzgk;->zzadu:Z

    if-nez v2, :cond_7a4

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzgk;->zzads:J

    goto :goto_7ac

    :cond_7a4
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzgk;->zzadm:Lcom/google/android/gms/internal/ads/zzls;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzls;->zzhd()J

    move-result-wide v2

    :goto_7ac
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v2, v5

    if-nez v7, :cond_7c8

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzgk;->zzadt:Z

    if-eqz v2, :cond_7ba

    const/4 v1, 0x1

    goto :goto_7d8

    :cond_7ba
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadd:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzgk;->zzadr:I

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacw:Lcom/google/android/gms/internal/ads/zzha;

    invoke-virtual {v2, v3, v5, v9}, Lcom/google/android/gms/internal/ads/zzgy;->zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzha;->zzagh:J

    :cond_7c8
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadz:Lcom/google/android/gms/internal/ads/zzgs;

    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeq:Lcom/google/android/gms/internal/ads/zzgk;

    iget-wide v11, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaep:J

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgk;->zzdz()J

    move-result-wide v6

    sub-long/2addr v11, v6

    sub-long/2addr v2, v11

    invoke-interface {v5, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzgs;->zzc(JZ)Z

    move-result v1

    :goto_7d8
    if-eqz v1, :cond_7dc

    const/4 v1, 0x1

    goto :goto_7e2

    :cond_7dc
    const/4 v1, 0x0

    goto :goto_7e2

    :cond_7de
    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/internal/ads/zzgl;->zzdl(J)Z

    move-result v1

    :goto_7e2
    if-eqz v1, :cond_80b

    const/4 v1, 0x3

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzgl;->setState(I)V

    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacy:Z

    if-eqz v1, :cond_80b

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgl;->zzed()V

    goto :goto_80b

    :cond_7f0
    iget v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->state:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_80b

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeh:[Lcom/google/android/gms/internal/ads/zzgx;

    array-length v3, v3

    if-lez v3, :cond_7fb

    goto :goto_7ff

    :cond_7fb
    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/internal/ads/zzgl;->zzdl(J)Z

    move-result v6

    :goto_7ff
    if-nez v6, :cond_80b

    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacy:Z

    iput-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaej:Z

    invoke-direct {v8, v4}, Lcom/google/android/gms/internal/ads/zzgl;->setState(I)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgl;->zzee()V

    :cond_80b
    :goto_80b
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->state:I

    if-ne v1, v4, :cond_81c

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeh:[Lcom/google/android/gms/internal/ads/zzgx;

    array-length v2, v1

    :goto_812
    if-ge v9, v2, :cond_81c

    aget-object v3, v1, v9

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzgx;->zzdp()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_812

    :cond_81c
    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacy:Z

    if-eqz v1, :cond_825

    iget v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_829

    :cond_825
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->state:I

    if-ne v1, v4, :cond_82f

    :cond_829
    const-wide/16 v1, 0xa

    invoke-direct {v8, v14, v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzgl;->zza(JJ)V

    goto :goto_83f

    :cond_82f
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaeh:[Lcom/google/android/gms/internal/ads/zzgx;

    array-length v1, v1

    if-eqz v1, :cond_83a

    const-wide/16 v1, 0x3e8

    invoke-direct {v8, v14, v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzgl;->zza(JJ)V

    goto :goto_83f

    :cond_83a
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :goto_83f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzog;->endSection()V

    :goto_842
    return v10

    :pswitch_843
    const/4 v4, 0x2

    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_84a

    const/4 v1, 0x1

    goto :goto_84b

    :cond_84a
    const/4 v1, 0x0

    :goto_84b
    iput-boolean v9, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaej:Z

    iput-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacy:Z

    if-nez v1, :cond_858

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgl;->zzee()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgl;->zzef()V

    goto :goto_86d

    :cond_858
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_866

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgl;->zzed()V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->handler:Landroid/os/Handler;

    :goto_862
    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_86d

    :cond_866
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->state:I

    if-ne v1, v4, :cond_86d

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->handler:Landroid/os/Handler;

    goto :goto_862

    :cond_86d
    :goto_86d
    return v10

    :pswitch_86e
    const/4 v4, 0x2

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzlu;

    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_879

    const/4 v1, 0x1

    goto :goto_87a

    :cond_879
    const/4 v1, 0x0

    :goto_87a
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacs:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/zzgl;->zzh(Z)V

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadz:Lcom/google/android/gms/internal/ads/zzgs;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzgs;->zzel()V

    if-eqz v1, :cond_895

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgn;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v9, v5, v6}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzadi:Lcom/google/android/gms/internal/ads/zzgn;

    :cond_895
    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaea:Lcom/google/android/gms/internal/ads/zzlu;

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzaee:Lcom/google/android/gms/internal/ads/zzgc;

    invoke-interface {v2, v1, v10, v8}, Lcom/google/android/gms/internal/ads/zzlu;->zza(Lcom/google/android/gms/internal/ads/zzgc;ZLcom/google/android/gms/internal/ads/zzlt;)V

    invoke-direct {v8, v4}, Lcom/google/android/gms/internal/ads/zzgl;->setState(I)V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgl;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_8a4
    .catch Lcom/google/android/gms/internal/ads/zzgd; {:try_start_436 .. :try_end_8a4} :catch_8aa
    .catch Ljava/io/IOException; {:try_start_436 .. :try_end_8a4} :catch_8a5
    .catch Ljava/lang/RuntimeException; {:try_start_436 .. :try_end_8a4} :catch_8af

    return v10

    :catch_8a5
    move-exception v0

    move-object v1, v0

    const/16 v3, 0x8

    goto :goto_8cf

    :catch_8aa
    move-exception v0

    move-object v1, v0

    const/16 v3, 0x8

    goto :goto_8e1

    :catch_8af
    move-exception v0

    move-object v1, v0

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Internal runtime error."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacs:Landroid/os/Handler;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgd;->zza(Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object v1

    const/16 v3, 0x8

    :goto_8c0
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgl;->zzeg()V

    return v10

    :catch_8cb
    move-exception v0

    const/16 v3, 0x8

    move-object v1, v0

    :goto_8cf
    const-string v2, "ExoPlayerImplInternal"

    const-string v4, "Source error."

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacs:Landroid/os/Handler;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgd;->zza(Ljava/io/IOException;)Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object v1

    goto :goto_8c0

    :catch_8dd
    move-exception v0

    const/16 v3, 0x8

    move-object v1, v0

    :goto_8e1
    const-string v2, "ExoPlayerImplInternal"

    const-string v4, "Renderer error."

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzgl;->zzacs:Landroid/os/Handler;

    goto :goto_8c0

    nop

    :pswitch_data_8ec
    .packed-switch 0x0
        :pswitch_86e
        :pswitch_843
        :pswitch_466
        :pswitch_3af
        :pswitch_38e
        :pswitch_38a
        :pswitch_373
        :pswitch_219
        :pswitch_1e3
        :pswitch_1d0
        :pswitch_dd
        :pswitch_9f
        :pswitch_19
    .end packed-switch
.end method

.method public final declared-synchronized release()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaei:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_24

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->handler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaei:Z
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_24

    if-nez v0, :cond_1d

    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15
    .catchall {:try_start_11 .. :try_end_14} :catchall_24

    goto :goto_d

    :catch_15
    :try_start_15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_d

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaed:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    goto :goto_28

    :goto_27
    throw v0

    :goto_28
    goto :goto_27
.end method

.method public final stop()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzgy;IJ)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgm;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzgm;-><init>(Lcom/google/android/gms/internal/ads/zzgy;IJ)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzls;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->handler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzlu;Z)V
    .registers 5

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgl;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzmg;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzls;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final varargs zza([Lcom/google/android/gms/internal/ads/zzgh;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaei:Z

    if-eqz v0, :cond_c

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaek:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaek:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->handler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgy;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->handler:Landroid/os/Handler;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final varargs declared-synchronized zzb([Lcom/google/android/gms/internal/ads/zzgh;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaei:Z

    if-eqz v0, :cond_e

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_31

    monitor-exit p0

    return-void

    :cond_e
    :try_start_e
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaek:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzaek:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->handler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_1f
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzael:I
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_31

    if-gt p1, v0, :cond_2f

    :try_start_23
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_27
    .catchall {:try_start_23 .. :try_end_26} :catchall_31

    goto :goto_1f

    :catch_27
    :try_start_27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_31

    goto :goto_1f

    :cond_2f
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    goto :goto_35

    :goto_34
    throw p1

    :goto_35
    goto :goto_34
.end method

.method public final zze(Z)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final zzec()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgl;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
