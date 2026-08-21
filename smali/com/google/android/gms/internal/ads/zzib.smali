###### Class com.google.android.gms.internal.ads.zzib (com.google.android.gms.internal.ads.zzib)
.class public final Lcom/google/android/gms/internal/ads/zzib;
.super Lcom/google/android/gms/internal/ads/zzkl;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznv;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private zzafm:I

.field private zzafo:I

.field private final zzako:Lcom/google/android/gms/internal/ads/zzhj;

.field private final zzakp:Lcom/google/android/gms/internal/ads/zzho;

.field private zzakq:Z

.field private zzakr:Z

.field private zzaks:Landroid/media/MediaFormat;

.field private zzakt:J

.field private zzaku:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzkn;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzib;-><init>(Lcom/google/android/gms/internal/ads/zzkn;Lcom/google/android/gms/internal/ads/zzis;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzkn;Lcom/google/android/gms/internal/ads/zzis;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzkn;",
            "Lcom/google/android/gms/internal/ads/zzis<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzib;-><init>(Lcom/google/android/gms/internal/ads/zzkn;Lcom/google/android/gms/internal/ads/zzis;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzhg;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzkn;Lcom/google/android/gms/internal/ads/zzis;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzhg;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzkn;",
            "Lcom/google/android/gms/internal/ads/zzis<",
            "Ljava/lang/Object;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/internal/ads/zzhg;",
            ")V"
        }
    .end annotation

    const/4 p2, 0x0

    new-array v7, p2, [Lcom/google/android/gms/internal/ads/zzhe;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzib;-><init>(Lcom/google/android/gms/internal/ads/zzkn;Lcom/google/android/gms/internal/ads/zzis;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzhg;Lcom/google/android/gms/internal/ads/zzhf;[Lcom/google/android/gms/internal/ads/zzhe;)V

    return-void
.end method

.method private varargs constructor <init>(Lcom/google/android/gms/internal/ads/zzkn;Lcom/google/android/gms/internal/ads/zzis;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzhg;Lcom/google/android/gms/internal/ads/zzhf;[Lcom/google/android/gms/internal/ads/zzhe;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzkn;",
            "Lcom/google/android/gms/internal/ads/zzis<",
            "Ljava/lang/Object;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/internal/ads/zzhg;",
            "Lcom/google/android/gms/internal/ads/zzhf;",
            "[",
            "Lcom/google/android/gms/internal/ads/zzhe;",
            ")V"
        }
    .end annotation

    const/4 p4, 0x1

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzkl;-><init>(ILcom/google/android/gms/internal/ads/zzkn;Lcom/google/android/gms/internal/ads/zzis;Z)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzho;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzid;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/zzid;-><init>(Lcom/google/android/gms/internal/ads/zzib;Lcom/google/android/gms/internal/ads/zzia;)V

    invoke-direct {p1, p3, p7, p2}, Lcom/google/android/gms/internal/ads/zzho;-><init>(Lcom/google/android/gms/internal/ads/zzhf;[Lcom/google/android/gms/internal/ads/zzhe;Lcom/google/android/gms/internal/ads/zzhu;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakp:Lcom/google/android/gms/internal/ads/zzho;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhj;

    invoke-direct {p1, p3, p3}, Lcom/google/android/gms/internal/ads/zzhj;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzhg;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzako:Lcom/google/android/gms/internal/ads/zzhj;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzib;)Lcom/google/android/gms/internal/ads/zzhj;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzako:Lcom/google/android/gms/internal/ads/zzhj;

    return-object p0
.end method

.method protected static zza(IJJ)V
    .registers 5

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzib;Z)Z
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzaku:Z

    return p1
.end method

.method private final zzax(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakp:Lcom/google/android/gms/internal/ads/zzho;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzho;->zzav(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected static zzfn()V
    .registers 0

    return-void
.end method

.method protected static zzq(I)V
    .registers 1

    return-void
.end method


# virtual methods
.method public final isReady()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakp:Lcom/google/android/gms/internal/ads/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzho;->zzfb()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzkl;->isReady()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    return v0

    :cond_11
    :goto_11
    const/4 v0, 0x1

    return v0
.end method

.method protected final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 12

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzaks:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    if-eqz p1, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzaks:Landroid/media/MediaFormat;

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_13
    const-string v1, "audio/raw"

    :goto_15
    move-object v3, v1

    if-eqz p1, :cond_1a

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzib;->zzaks:Landroid/media/MediaFormat;

    :cond_1a
    const-string p1, "channel-count"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    const-string p1, "sample-rate"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakr:Z

    if-eqz p1, :cond_3c

    const/4 p1, 0x6

    if-ne v4, p1, :cond_3c

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzib;->zzafm:I

    if-ge p2, p1, :cond_3c

    new-array p1, p2, [I

    :goto_33
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzib;->zzafm:I

    if-ge v0, p2, :cond_3d

    aput v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_3c
    const/4 p1, 0x0

    :cond_3d
    move-object v8, p1

    :try_start_3e
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakp:Lcom/google/android/gms/internal/ads/zzho;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzib;->zzafo:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzho;->zza(Ljava/lang/String;IIII[I)V
    :try_end_46
    .catch Lcom/google/android/gms/internal/ads/zzhs; {:try_start_3e .. :try_end_46} :catch_47

    return-void

    :catch_47
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgb;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzgd;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object p1

    goto :goto_52

    :goto_51
    throw p1

    :goto_52
    goto :goto_51
.end method

.method protected final onStarted()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzkl;->onStarted()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakp:Lcom/google/android/gms/internal/ads/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzho;->play()V

    return-void
.end method

.method protected final onStopped()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakp:Lcom/google/android/gms/internal/ads/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzho;->pause()V

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzkl;->onStopped()V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzkn;Lcom/google/android/gms/internal/ads/zzgo;)I
    .registers 9

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzgo;->zzafc:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzny;->zzbc(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    sget v1, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_13

    const/16 v1, 0x10

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzib;->zzax(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_25

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzkn;->zzgv()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v4

    if-eqz v4, :cond_25

    or-int/lit8 p1, v1, 0x4

    or-int/2addr p1, v5

    return p1

    :cond_25
    invoke-interface {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzkn;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_2d

    return v0

    :cond_2d
    sget v4, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    if-lt v4, v3, :cond_48

    iget v3, p2, Lcom/google/android/gms/internal/ads/zzgo;->zzafn:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3c

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzkm;->zzap(I)Z

    move-result v3

    if-eqz v3, :cond_47

    :cond_3c
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzgo;->zzafm:I

    if-eq p2, v4, :cond_48

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzkm;->zzaq(I)Z

    move-result p1

    if-eqz p1, :cond_47

    goto :goto_48

    :cond_47
    const/4 v0, 0x0

    :cond_48
    :goto_48
    if-eqz v0, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v5, 0x2

    :goto_4c
    or-int/lit8 p1, v1, 0x4

    or-int/2addr p1, v5

    return p1
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzkn;Lcom/google/android/gms/internal/ads/zzgo;Z)Lcom/google/android/gms/internal/ads/zzkm;
    .registers 5

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzgo;->zzafc:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzib;->zzax(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzkn;->zzgv()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakq:Z

    return-object v0

    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakq:Z

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzkl;->zza(Lcom/google/android/gms/internal/ads/zzkn;Lcom/google/android/gms/internal/ads/zzgo;Z)Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object p1

    return-object p1
.end method

.method public final zza(ILjava/lang/Object;)V
    .registers 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x3

    if-eq p1, v0, :cond_a

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgb;->zza(ILjava/lang/Object;)V

    return-void

    :cond_a
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakp:Lcom/google/android/gms/internal/ads/zzho;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzho;->setStreamType(I)V

    return-void

    :cond_16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakp:Lcom/google/android/gms/internal/ads/zzho;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzho;->setVolume(F)V

    return-void
.end method

.method protected final zza(JZ)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzkl;->zza(JZ)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakp:Lcom/google/android/gms/internal/ads/zzho;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzho;->reset()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakt:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzaku:Z

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzkm;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzgo;Landroid/media/MediaCrypto;)V
    .registers 8

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzkm;->name:Ljava/lang/String;

    sget p4, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-ge p4, v1, :cond_3b

    const-string p4, "OMX.SEC.aac.dec"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    sget-object p1, Lcom/google/android/gms/internal/ads/zzof;->MANUFACTURER:Ljava/lang/String;

    const-string p4, "samsung"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    sget-object p1, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    const-string p4, "zeroflte"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_39

    sget-object p1, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    const-string p4, "herolte"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_39

    sget-object p1, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    const-string p4, "heroqlte"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3b

    :cond_39
    const/4 p1, 0x1

    goto :goto_3c

    :cond_3b
    const/4 p1, 0x0

    :goto_3c
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakr:Z

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakq:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_5f

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzgo;->zzek()Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzaks:Landroid/media/MediaFormat;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzaks:Landroid/media/MediaFormat;

    const-string v1, "mime"

    const-string v2, "audio/raw"

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzaks:Landroid/media/MediaFormat;

    invoke-virtual {p2, p1, p4, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzaks:Landroid/media/MediaFormat;

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzgo;->zzafc:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5f
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzgo;->zzek()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-virtual {p2, p1, p4, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzib;->zzaks:Landroid/media/MediaFormat;

    return-void
.end method

.method protected final zza(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .registers 12

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakq:Z

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_e

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_e

    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return p3

    :cond_e
    if-eqz p11, :cond_20

    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzil;->zzamh:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzil;->zzamh:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakp:Lcom/google/android/gms/internal/ads/zzho;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzho;->zzey()V

    return p3

    :cond_20
    :try_start_20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakp:Lcom/google/android/gms/internal/ads/zzho;

    invoke-virtual {p1, p6, p9, p10}, Lcom/google/android/gms/internal/ads/zzho;->zza(Ljava/nio/ByteBuffer;J)Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzil;->zzamg:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzil;->zzamg:I
    :try_end_32
    .catch Lcom/google/android/gms/internal/ads/zzhv; {:try_start_20 .. :try_end_32} :catch_36
    .catch Lcom/google/android/gms/internal/ads/zzhw; {:try_start_20 .. :try_end_32} :catch_34

    return p3

    :cond_33
    return p2

    :catch_34
    move-exception p1

    goto :goto_37

    :catch_36
    move-exception p1

    :goto_37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgb;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzgd;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object p1

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgu;)Lcom/google/android/gms/internal/ads/zzgu;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakp:Lcom/google/android/gms/internal/ads/zzho;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzho;->zzb(Lcom/google/android/gms/internal/ads/zzgu;)Lcom/google/android/gms/internal/ads/zzgu;

    move-result-object p1

    return-object p1
.end method

.method protected final zzc(Ljava/lang/String;JJ)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzako:Lcom/google/android/gms/internal/ads/zzhj;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhj;->zzb(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected final zzd(Lcom/google/android/gms/internal/ads/zzgo;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzkl;->zzd(Lcom/google/android/gms/internal/ads/zzgo;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzako:Lcom/google/android/gms/internal/ads/zzhj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhj;->zzc(Lcom/google/android/gms/internal/ads/zzgo;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgo;->zzafc:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgo;->zzafo:I

    goto :goto_16

    :cond_15
    const/4 v0, 0x2

    :goto_16
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzafo:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzgo;->zzafm:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzafm:I

    return-void
.end method

.method protected final zzd(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzkl;->zzd(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzako:Lcom/google/android/gms/internal/ads/zzhj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzhj;->zzc(Lcom/google/android/gms/internal/ads/zzil;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgb;->zzds()Lcom/google/android/gms/internal/ads/zzgz;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzgz;->zzagf:I

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakp:Lcom/google/android/gms/internal/ads/zzho;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzho;->zzs(I)V

    return-void

    :cond_18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakp:Lcom/google/android/gms/internal/ads/zzho;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzho;->zzfd()V

    return-void
.end method

.method public final zzdk()Lcom/google/android/gms/internal/ads/zznv;
    .registers 1

    return-object p0
.end method

.method protected final zzdr()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakp:Lcom/google/android/gms/internal/ads/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzho;->release()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_23

    :try_start_5
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzdr()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzil;->zzfy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzako:Lcom/google/android/gms/internal/ads/zzhj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhj;->zzd(Lcom/google/android/gms/internal/ads/zzil;)V

    return-void

    :catchall_15
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzil;->zzfy()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzako:Lcom/google/android/gms/internal/ads/zzhj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhj;->zzd(Lcom/google/android/gms/internal/ads/zzil;)V

    throw v0

    :catchall_23
    move-exception v0

    :try_start_24
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzdr()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_34

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzil;->zzfy()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzako:Lcom/google/android/gms/internal/ads/zzhj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhj;->zzd(Lcom/google/android/gms/internal/ads/zzil;)V

    throw v0

    :catchall_34
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzil;->zzfy()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzako:Lcom/google/android/gms/internal/ads/zzhj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhj;->zzd(Lcom/google/android/gms/internal/ads/zzil;)V

    throw v0
.end method

.method public final zzeo()Z
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzeo()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakp:Lcom/google/android/gms/internal/ads/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzho;->zzeo()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public final zzfc()Lcom/google/android/gms/internal/ads/zzgu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakp:Lcom/google/android/gms/internal/ads/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzho;->zzfc()Lcom/google/android/gms/internal/ads/zzgu;

    move-result-object v0

    return-object v0
.end method

.method public final zzfj()J
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakp:Lcom/google/android/gms/internal/ads/zzho;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzib;->zzeo()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzho;->zzi(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_20

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzib;->zzaku:Z

    if-eqz v2, :cond_15

    goto :goto_1b

    :cond_15
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakt:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_1b
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakt:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzaku:Z

    :cond_20
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakt:J

    return-wide v0
.end method

.method protected final zzfo()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzakp:Lcom/google/android/gms/internal/ads/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzho;->zzez()V
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzhw; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgb;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgd;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object v0

    throw v0
.end method
