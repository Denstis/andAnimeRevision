###### Class com.google.android.gms.internal.ads.zzli (com.google.android.gms.internal.ads.zzli)
.class final Lcom/google/android/gms/internal/ads/zzli;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zziy;
.implements Lcom/google/android/gms/internal/ads/zzls;
.implements Lcom/google/android/gms/internal/ads/zzme;
.implements Lcom/google/android/gms/internal/ads/zzno;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zziy;",
        "Lcom/google/android/gms/internal/ads/zzls;",
        "Lcom/google/android/gms/internal/ads/zzme;",
        "Lcom/google/android/gms/internal/ads/zzno<",
        "Lcom/google/android/gms/internal/ads/zzll;",
        ">;"
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final uri:Landroid/net/Uri;

.field private final zzacs:Landroid/os/Handler;

.field private zzadu:Z

.field private zzaei:Z

.field private zzagh:J

.field private final zzamo:Lcom/google/android/gms/internal/ads/zzne;

.field private final zzazt:I

.field private final zzazu:Lcom/google/android/gms/internal/ads/zzlp;

.field private final zzazv:Lcom/google/android/gms/internal/ads/zzlt;

.field private final zzazw:Lcom/google/android/gms/internal/ads/zznc;

.field private final zzazx:Ljava/lang/String;

.field private final zzazy:J

.field private final zzazz:Lcom/google/android/gms/internal/ads/zznl;

.field private final zzbaa:Lcom/google/android/gms/internal/ads/zzlo;

.field private final zzbab:Lcom/google/android/gms/internal/ads/zznt;

.field private final zzbac:Ljava/lang/Runnable;

.field private final zzbad:Ljava/lang/Runnable;

.field private final zzbae:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/zzmc;",
            ">;"
        }
    .end annotation
.end field

.field private zzbaf:Lcom/google/android/gms/internal/ads/zzlr;

.field private zzbag:Lcom/google/android/gms/internal/ads/zzjb;

.field private zzbah:Z

.field private zzbai:Z

.field private zzbaj:Z

.field private zzbak:I

.field private zzbal:Lcom/google/android/gms/internal/ads/zzmk;

.field private zzbam:[Z

.field private zzban:[Z

.field private zzbao:Z

.field private zzbap:J

.field private zzbaq:J

.field private zzbar:I

.field private zzbas:Z

.field private zzcb:J


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzne;[Lcom/google/android/gms/internal/ads/zziw;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzlp;Lcom/google/android/gms/internal/ads/zzlt;Lcom/google/android/gms/internal/ads/zznc;Ljava/lang/String;I)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzli;->uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzli;->zzamo:Lcom/google/android/gms/internal/ads/zzne;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazt:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzli;->zzacs:Landroid/os/Handler;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazu:Lcom/google/android/gms/internal/ads/zzlp;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazv:Lcom/google/android/gms/internal/ads/zzlt;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazw:Lcom/google/android/gms/internal/ads/zznc;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazx:Ljava/lang/String;

    int-to-long p1, p10

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazy:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zznl;

    const-string p2, "Loader:ExtractorMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zznl;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazz:Lcom/google/android/gms/internal/ads/zznl;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzlo;

    invoke-direct {p1, p3, p0}, Lcom/google/android/gms/internal/ads/zzlo;-><init>([Lcom/google/android/gms/internal/ads/zziw;Lcom/google/android/gms/internal/ads/zziy;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbaa:Lcom/google/android/gms/internal/ads/zzlo;

    new-instance p1, Lcom/google/android/gms/internal/ads/zznt;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zznt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbab:Lcom/google/android/gms/internal/ads/zznt;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzlh;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzlh;-><init>(Lcom/google/android/gms/internal/ads/zzli;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbac:Ljava/lang/Runnable;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzlk;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzlk;-><init>(Lcom/google/android/gms/internal/ads/zzli;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbad:Ljava/lang/Runnable;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzli;->handler:Landroid/os/Handler;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbaq:J

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzcb:J

    return-void
.end method

.method private final startLoading()V
    .registers 10

    new-instance v6, Lcom/google/android/gms/internal/ads/zzll;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzli;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzamo:Lcom/google/android/gms/internal/ads/zzne;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbaa:Lcom/google/android/gms/internal/ads/zzlo;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbab:Lcom/google/android/gms/internal/ads/zznt;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzll;-><init>(Lcom/google/android/gms/internal/ads/zzli;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzne;Lcom/google/android/gms/internal/ads/zzlo;Lcom/google/android/gms/internal/ads/zznt;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzadu:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_40

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzli;->zzhi()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzagh:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_31

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbaq:J

    cmp-long v0, v7, v3

    if-ltz v0, :cond_31

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbas:Z

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbaq:J

    return-void

    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbag:Lcom/google/android/gms/internal/ads/zzjb;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbaq:J

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzjb;->zzdt(J)J

    move-result-wide v3

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbaq:J

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/google/android/gms/internal/ads/zzll;->zze(JJ)V

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbaq:J

    :cond_40
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzli;->zzhg()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbar:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazt:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_67

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzadu:Z

    if-eqz v0, :cond_66

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzcb:J

    const-wide/16 v7, -0x1

    cmp-long v0, v3, v7

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbag:Lcom/google/android/gms/internal/ads/zzjb;

    if-eqz v0, :cond_64

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzjb;->getDurationUs()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_64

    goto :goto_66

    :cond_64
    const/4 v0, 0x6

    goto :goto_67

    :cond_66
    :goto_66
    const/4 v0, 0x3

    :cond_67
    :goto_67
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazz:Lcom/google/android/gms/internal/ads/zznl;

    invoke-virtual {v1, v6, p0, v0}, Lcom/google/android/gms/internal/ads/zznl;->zza(Lcom/google/android/gms/internal/ads/zznq;Lcom/google/android/gms/internal/ads/zzno;I)J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzli;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzli;->zzhf()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzll;)V
    .registers 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzcb:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzll;->zzb(Lcom/google/android/gms/internal/ads/zzll;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzcb:J

    :cond_e
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzli;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzaei:Z

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzli;)Lcom/google/android/gms/internal/ads/zzlr;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbaf:Lcom/google/android/gms/internal/ads/zzlr;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzli;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzli;)Lcom/google/android/gms/internal/ads/zzlp;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazu:Lcom/google/android/gms/internal/ads/zzlp;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzli;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazx:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzli;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazy:J

    return-wide v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzli;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbad:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final zzhf()V
    .registers 9

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzaei:Z

    if-nez v0, :cond_9d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzadu:Z

    if-nez v0, :cond_9d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbag:Lcom/google/android/gms/internal/ads/zzjb;

    if-eqz v0, :cond_9d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbah:Z

    if-nez v0, :cond_12

    goto/16 :goto_9d

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_2e

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzmc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzmc;->zzhr()Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v3

    if-nez v3, :cond_2b

    return-void

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_2e
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbab:Lcom/google/android/gms/internal/ads/zznt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zznt;->zzig()Z

    new-array v2, v0, [Lcom/google/android/gms/internal/ads/zzmh;

    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzban:[Z

    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbam:[Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbag:Lcom/google/android/gms/internal/ads/zzjb;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzjb;->getDurationUs()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzagh:J

    const/4 v3, 0x0

    :goto_46
    const/4 v4, 0x1

    if-ge v3, v0, :cond_7c

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzmc;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzmc;->zzhr()Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzmh;

    new-array v7, v4, [Lcom/google/android/gms/internal/ads/zzgo;

    aput-object v5, v7, v1

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/zzmh;-><init>([Lcom/google/android/gms/internal/ads/zzgo;)V

    aput-object v6, v2, v3

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzgo;->zzafc:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzny;->zzbd(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_70

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzny;->zzbc(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v4, 0x0

    :cond_70
    :goto_70
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzli;->zzban:[Z

    aput-boolean v4, v5, v3

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbao:Z

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbao:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :cond_7c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzmk;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzmk;-><init>([Lcom/google/android/gms/internal/ads/zzmh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbal:Lcom/google/android/gms/internal/ads/zzmk;

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzli;->zzadu:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazv:Lcom/google/android/gms/internal/ads/zzlt;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzmi;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzli;->zzagh:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbag:Lcom/google/android/gms/internal/ads/zzjb;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzjb;->zzgc()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzmi;-><init>(JZ)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzlt;->zzb(Lcom/google/android/gms/internal/ads/zzgy;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbaf:Lcom/google/android/gms/internal/ads/zzlr;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzlr;->zza(Lcom/google/android/gms/internal/ads/zzls;)V

    :cond_9d
    :goto_9d
    return-void
.end method

.method private final zzhg()I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v1, v0, :cond_1a

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzmc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzmc;->zzhp()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1a
    return v2
.end method

.method private final zzhh()J
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_1e

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzmc;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzmc;->zzhh()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1e
    return-wide v1
.end method

.method private final zzhi()Z
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbaq:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzli;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzli;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final release()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbaa:Lcom/google/android/gms/internal/ads/zzlo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazz:Lcom/google/android/gms/internal/ads/zznl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzlj;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzlj;-><init>(Lcom/google/android/gms/internal/ads/zzli;Lcom/google/android/gms/internal/ads/zzlo;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zznl;->zza(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzaei:Z

    return-void
.end method

.method final zza(ILcom/google/android/gms/internal/ads/zzgq;Lcom/google/android/gms/internal/ads/zzik;Z)I
    .registers 12

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbaj:Z

    if-nez v0, :cond_20

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzli;->zzhi()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_20

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzmc;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbas:Z

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbap:J

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzmc;->zza(Lcom/google/android/gms/internal/ads/zzgq;Lcom/google/android/gms/internal/ads/zzik;ZZJ)I

    move-result p1

    return p1

    :cond_20
    :goto_20
    const/4 p1, -0x3

    return p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zznq;JJLjava/io/IOException;)I
    .registers 11

    check-cast p1, Lcom/google/android/gms/internal/ads/zzll;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzli;->zza(Lcom/google/android/gms/internal/ads/zzll;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzli;->zzacs:Landroid/os/Handler;

    if-eqz p2, :cond_15

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazu:Lcom/google/android/gms/internal/ads/zzlp;

    if-eqz p3, :cond_15

    new-instance p3, Lcom/google/android/gms/internal/ads/zzlm;

    invoke-direct {p3, p0, p6}, Lcom/google/android/gms/internal/ads/zzlm;-><init>(Lcom/google/android/gms/internal/ads/zzli;Ljava/io/IOException;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    instance-of p2, p6, Lcom/google/android/gms/internal/ads/zzmj;

    if-eqz p2, :cond_1b

    const/4 p1, 0x3

    return p1

    :cond_1b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzli;->zzhg()I

    move-result p2

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbar:I

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-le p2, p3, :cond_27

    const/4 p2, 0x1

    goto :goto_28

    :cond_27
    const/4 p2, 0x0

    :goto_28
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzcb:J

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_71

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbag:Lcom/google/android/gms/internal/ads/zzjb;

    if-eqz p3, :cond_41

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzjb;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-nez p3, :cond_71

    :cond_41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbap:J

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzadu:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbaj:Z

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    const/4 p6, 0x0

    :goto_50
    if-ge p6, p3, :cond_6e

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {v2, p6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzmc;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzadu:Z

    if-eqz v3, :cond_67

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbam:[Z

    aget-boolean v3, v3, p6

    if-eqz v3, :cond_65

    goto :goto_67

    :cond_65
    const/4 v3, 0x0

    goto :goto_68

    :cond_67
    :goto_67
    const/4 v3, 0x1

    :goto_68
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzmc;->zzj(Z)V

    add-int/lit8 p6, p6, 0x1

    goto :goto_50

    :cond_6e
    invoke-virtual {p1, v0, v1, v0, v1}, Lcom/google/android/gms/internal/ads/zzll;->zze(JJ)V

    :cond_71
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzli;->zzhg()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbar:I

    if-eqz p2, :cond_7a

    return p4

    :cond_7a
    return p5
.end method

.method public final zza([Lcom/google/android/gms/internal/ads/zzmt;[Z[Lcom/google/android/gms/internal/ads/zzmd;[ZJ)J
    .registers 12

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzadu:Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_40

    aget-object v2, p3, v1

    if-eqz v2, :cond_3d

    aget-object v2, p1, v1

    if-eqz v2, :cond_17

    aget-boolean v2, p2, v1

    if-nez v2, :cond_3d

    :cond_17
    aget-object v2, p3, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzln;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzln;->zza(Lcom/google/android/gms/internal/ads/zzln;)I

    move-result v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbam:[Z

    aget-boolean v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbak:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbak:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbam:[Z

    aput-boolean v0, v3, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzmc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzmc;->disable()V

    const/4 v2, 0x0

    aput-object v2, p3, v1

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_40
    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_42
    array-length v2, p1

    if-ge p2, v2, :cond_8f

    aget-object v2, p3, p2

    if-nez v2, :cond_8c

    aget-object v2, p1, p2

    if-eqz v2, :cond_8c

    aget-object v1, p1, p2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzmt;->length()I

    move-result v2

    if-ne v2, v3, :cond_57

    const/4 v2, 0x1

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    :goto_58
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzmt;->zzaw(I)I

    move-result v2

    if-nez v2, :cond_63

    const/4 v2, 0x1

    goto :goto_64

    :cond_63
    const/4 v2, 0x0

    :goto_64
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbal:Lcom/google/android/gms/internal/ads/zzmk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzmt;->zzhx()Lcom/google/android/gms/internal/ads/zzmh;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzmk;->zza(Lcom/google/android/gms/internal/ads/zzmh;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbam:[Z

    aget-boolean v2, v2, v1

    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbak:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbak:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbam:[Z

    aput-boolean v3, v2, v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzln;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzln;-><init>(Lcom/google/android/gms/internal/ads/zzli;I)V

    aput-object v2, p3, p2

    aput-boolean v3, p4, p2

    const/4 v1, 0x1

    :cond_8c
    add-int/lit8 p2, p2, 0x1

    goto :goto_42

    :cond_8f
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbai:Z

    if-nez p1, :cond_b0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_9a
    if-ge p2, p1, :cond_b0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbam:[Z

    aget-boolean v2, v2, p2

    if-nez v2, :cond_ad

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzmc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzmc;->disable()V

    :cond_ad
    add-int/lit8 p2, p2, 0x1

    goto :goto_9a

    :cond_b0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbak:I

    if-nez p1, :cond_c4

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbaj:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazz:Lcom/google/android/gms/internal/ads/zznl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zznl;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_e1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazz:Lcom/google/android/gms/internal/ads/zznl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zznl;->zzie()V

    goto :goto_e1

    :cond_c4
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbai:Z

    if-eqz p1, :cond_cb

    if-eqz v1, :cond_e1

    goto :goto_d1

    :cond_cb
    const-wide/16 p1, 0x0

    cmp-long v1, p5, p1

    if-eqz v1, :cond_e1

    :goto_d1
    invoke-virtual {p0, p5, p6}, Lcom/google/android/gms/internal/ads/zzli;->zzea(J)J

    move-result-wide p5

    :goto_d5
    array-length p1, p3

    if-ge v0, p1, :cond_e1

    aget-object p1, p3, v0

    if-eqz p1, :cond_de

    aput-boolean v3, p4, v0

    :cond_de
    add-int/lit8 v0, v0, 0x1

    goto :goto_d5

    :cond_e1
    :goto_e1
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbai:Z

    return-wide p5
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjb;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbag:Lcom/google/android/gms/internal/ads/zzjb;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzli;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbac:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzlr;J)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbaf:Lcom/google/android/gms/internal/ads/zzlr;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbab:Lcom/google/android/gms/internal/ads/zznt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zznt;->open()Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzli;->startLoading()V

    return-void
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zznq;JJ)V
    .registers 6

    check-cast p1, Lcom/google/android/gms/internal/ads/zzll;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzli;->zza(Lcom/google/android/gms/internal/ads/zzll;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbas:Z

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzagh:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p5, p1, p3

    if-nez p5, :cond_38

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzli;->zzhh()J

    move-result-wide p1

    const-wide/high16 p3, -0x8000000000000000L

    cmp-long p5, p1, p3

    if-nez p5, :cond_20

    const-wide/16 p1, 0x0

    goto :goto_23

    :cond_20
    const-wide/16 p3, 0x2710

    add-long/2addr p1, p3

    :goto_23
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzagh:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazv:Lcom/google/android/gms/internal/ads/zzlt;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzmi;

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzagh:J

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbag:Lcom/google/android/gms/internal/ads/zzjb;

    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/zzjb;->zzgc()Z

    move-result p5

    invoke-direct {p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzmi;-><init>(JZ)V

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzlt;->zzb(Lcom/google/android/gms/internal/ads/zzgy;Ljava/lang/Object;)V

    :cond_38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbaf:Lcom/google/android/gms/internal/ads/zzlr;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzmf;->zza(Lcom/google/android/gms/internal/ads/zzmg;)V

    return-void
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zznq;JJZ)V
    .registers 7

    check-cast p1, Lcom/google/android/gms/internal/ads/zzll;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzli;->zza(Lcom/google/android/gms/internal/ads/zzll;)V

    if-nez p6, :cond_2b

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbak:I

    if-lez p1, :cond_2b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_12
    if-ge p2, p1, :cond_26

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzmc;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbam:[Z

    aget-boolean p4, p4, p2

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzmc;->zzj(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_12

    :cond_26
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbaf:Lcom/google/android/gms/internal/ads/zzlr;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzmf;->zza(Lcom/google/android/gms/internal/ads/zzmg;)V

    :cond_2b
    return-void
.end method

.method final zzas(I)Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbas:Z

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzli;->zzhi()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzmc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzmc;->zzhq()Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    return p1

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    return p1
.end method

.method public final zzb(II)Lcom/google/android/gms/internal/ads/zzjd;
    .registers 4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzmc;

    if-nez p2, :cond_19

    new-instance p2, Lcom/google/android/gms/internal/ads/zzmc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazw:Lcom/google/android/gms/internal/ads/zznc;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzmc;-><init>(Lcom/google/android/gms/internal/ads/zznc;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzmc;->zza(Lcom/google/android/gms/internal/ads/zzme;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_19
    return-object p2
.end method

.method final zzd(IJ)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzmc;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbas:Z

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzmc;->zzhh()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_18

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzmc;->zzhu()V

    return-void

    :cond_18
    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzmc;->zze(JZ)Z

    return-void
.end method

.method public final zzdy(J)Z
    .registers 3

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbas:Z

    if-nez p1, :cond_20

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzadu:Z

    if-eqz p1, :cond_d

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbak:I

    if-nez p1, :cond_d

    goto :goto_20

    :cond_d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbab:Lcom/google/android/gms/internal/ads/zznt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zznt;->open()Z

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazz:Lcom/google/android/gms/internal/ads/zznl;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zznl;->isLoading()Z

    move-result p2

    if-nez p2, :cond_1f

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzli;->startLoading()V

    const/4 p1, 0x1

    :cond_1f
    return p1

    :cond_20
    :goto_20
    const/4 p1, 0x0

    return p1
.end method

.method public final zzdz(J)V
    .registers 3

    return-void
.end method

.method public final zzea(J)J
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbag:Lcom/google/android/gms/internal/ads/zzjb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzjb;->zzgc()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const-wide/16 p1, 0x0

    :goto_b
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbap:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzli;->zzhi()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1b
    if-eqz v1, :cond_34

    if-ge v3, v0, :cond_34

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbam:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_31

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzmc;

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzmc;->zze(JZ)Z

    move-result v1

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_34
    if-nez v1, :cond_5d

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbaq:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbas:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazz:Lcom/google/android/gms/internal/ads/zznl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zznl;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazz:Lcom/google/android/gms/internal/ads/zznl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznl;->zzie()V

    goto :goto_5d

    :cond_48
    const/4 v1, 0x0

    :goto_49
    if-ge v1, v0, :cond_5d

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzmc;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbam:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzmc;->zzj(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_5d
    :goto_5d
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbaj:Z

    return-wide p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzgo;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzli;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbac:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzge()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbah:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbac:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzgz()J
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbak:I

    if-nez v0, :cond_7

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzli;->zzhd()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzha()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazz:Lcom/google/android/gms/internal/ads/zznl;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zznl;->zzbb(I)V

    return-void
.end method

.method public final zzhb()Lcom/google/android/gms/internal/ads/zzmk;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbal:Lcom/google/android/gms/internal/ads/zzmk;

    return-object v0
.end method

.method public final zzhc()J
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbaj:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbaj:Z

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbap:J

    return-wide v0

    :cond_a
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final zzhd()J
    .registers 9

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbas:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_7

    return-wide v1

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzli;->zzhi()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbaq:J

    return-wide v0

    :cond_10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbao:Z

    if-eqz v0, :cond_3b

    const-wide v3, 0x7fffffffffffffffL

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v0, :cond_3f

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzli;->zzban:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_38

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbae:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzmc;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzmc;->zzhh()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_3b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzli;->zzhh()J

    move-result-wide v3

    :cond_3f
    cmp-long v0, v3, v1

    if-nez v0, :cond_46

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzbap:J

    return-wide v0

    :cond_46
    return-wide v3
.end method

.method final zzhe()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzli;->zzazz:Lcom/google/android/gms/internal/ads/zznl;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zznl;->zzbb(I)V

    return-void
.end method
