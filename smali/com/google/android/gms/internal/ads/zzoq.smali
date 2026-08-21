###### Class com.google.android.gms.internal.ads.zzoq (com.google.android.gms.internal.ads.zzoq)
.class public final Lcom/google/android/gms/internal/ads/zzoq;
.super Lcom/google/android/gms/internal/ads/zzkl;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final zzbhj:[I


# instance fields
.field private zzagf:I

.field private zzajm:Z

.field private final zzbhk:Lcom/google/android/gms/internal/ads/zzou;

.field private final zzbhl:Lcom/google/android/gms/internal/ads/zzov;

.field private final zzbhm:J

.field private final zzbhn:I

.field private final zzbho:Z

.field private final zzbhp:[J

.field private zzbhq:[Lcom/google/android/gms/internal/ads/zzgo;

.field private zzbhr:Lcom/google/android/gms/internal/ads/zzos;

.field private zzbhs:Landroid/view/Surface;

.field private zzbht:Landroid/view/Surface;

.field private zzbhu:I

.field private zzbhv:Z

.field private zzbhw:J

.field private zzbhx:J

.field private zzbhy:I

.field private zzbhz:I

.field private zzbia:I

.field private zzbib:F

.field private zzbic:I

.field private zzbid:I

.field private zzbie:I

.field private zzbif:F

.field private zzbig:I

.field private zzbih:I

.field private zzbii:I

.field private zzbij:F

.field zzbik:Lcom/google/android/gms/internal/ads/zzor;

.field private zzbil:J

.field private zzbim:I

.field private final zzlk:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhj:[I

    return-void

    :array_a
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzkn;JLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzow;I)V
    .registers 18

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzoq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzkn;JLcom/google/android/gms/internal/ads/zzis;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzow;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzkn;JLcom/google/android/gms/internal/ads/zzis;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzow;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzkn;",
            "J",
            "Lcom/google/android/gms/internal/ads/zzis<",
            "Ljava/lang/Object;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/internal/ads/zzow;",
            "I)V"
        }
    .end annotation

    const/4 p3, 0x0

    const/4 p4, 0x2

    const/4 p5, 0x0

    invoke-direct {p0, p4, p2, p5, p3}, Lcom/google/android/gms/internal/ads/zzkl;-><init>(ILcom/google/android/gms/internal/ads/zzkn;Lcom/google/android/gms/internal/ads/zzis;Z)V

    const-wide/16 p4, 0x0

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhm:J

    const/4 p2, -0x1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhn:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzlk:Landroid/content/Context;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzou;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzou;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhk:Lcom/google/android/gms/internal/ads/zzou;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzov;

    invoke-direct {p1, p7, p8}, Lcom/google/android/gms/internal/ads/zzov;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzow;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhl:Lcom/google/android/gms/internal/ads/zzov;

    sget p1, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/4 p4, 0x1

    const/16 p5, 0x16

    if-gt p1, p5, :cond_3d

    sget-object p1, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    const-string p5, "foster"

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    sget-object p1, Lcom/google/android/gms/internal/ads/zzof;->MANUFACTURER:Ljava/lang/String;

    const-string p5, "NVIDIA"

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    const/4 p3, 0x1

    :cond_3d
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbho:Z

    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhp:[J

    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbil:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhw:J

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbic:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbid:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbif:F

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbib:F

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhu:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoq;->zziw()V

    return-void
.end method

.method private static zza(Ljava/lang/String;II)I
    .registers 10

    const/4 v0, -0x1

    if-eq p1, v0, :cond_86

    if-ne p2, v0, :cond_7

    goto/16 :goto_86

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    sparse-switch v1, :sswitch_data_88

    goto :goto_50

    :sswitch_14
    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_50

    const/4 p0, 0x5

    goto :goto_51

    :sswitch_1e
    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_50

    const/4 p0, 0x3

    goto :goto_51

    :sswitch_28
    const-string v1, "video/avc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_50

    const/4 p0, 0x2

    goto :goto_51

    :sswitch_32
    const-string v1, "video/mp4v-es"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_50

    const/4 p0, 0x1

    goto :goto_51

    :sswitch_3c
    const-string v1, "video/hevc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_50

    const/4 p0, 0x4

    goto :goto_51

    :sswitch_46
    const-string v1, "video/3gpp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_50

    const/4 p0, 0x0

    goto :goto_51

    :cond_50
    :goto_50
    const/4 p0, -0x1

    :goto_51
    if-eqz p0, :cond_7d

    if-eq p0, v3, :cond_7d

    if-eq p0, v6, :cond_61

    if-eq p0, v4, :cond_7d

    if-eq p0, v5, :cond_5e

    if-eq p0, v2, :cond_5e

    return v0

    :cond_5e
    mul-int p1, p1, p2

    goto :goto_80

    :cond_61
    sget-object p0, Lcom/google/android/gms/internal/ads/zzof;->MODEL:Ljava/lang/String;

    const-string v1, "BRAVIA 4K 2015"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6c

    return v0

    :cond_6c
    const/16 p0, 0x10

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzof;->zze(II)I

    move-result p1

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/ads/zzof;->zze(II)I

    move-result p0

    mul-int p1, p1, p0

    shl-int/lit8 p0, p1, 0x4

    shl-int/lit8 p1, p0, 0x4

    goto :goto_7f

    :cond_7d
    mul-int p1, p1, p2

    :goto_7f
    const/4 v5, 0x2

    :goto_80
    mul-int/lit8 p1, p1, 0x3

    mul-int/lit8 v5, v5, 0x2

    div-int/2addr p1, v5

    return p1

    :cond_86
    :goto_86
    return v0

    nop

    :sswitch_data_88
    .sparse-switch
        -0x63306f58 -> :sswitch_46
        -0x63185e82 -> :sswitch_3c
        0x46cdc642 -> :sswitch_32
        0x4f62373a -> :sswitch_28
        0x5f50bed8 -> :sswitch_1e
        0x5f50bed9 -> :sswitch_14
    .end sparse-switch
.end method

.method private final zza(Landroid/media/MediaCodec;IJ)V
    .registers 5

    const-string p3, "skipVideoBuffer"

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzog;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzog;->endSection()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzil;->zzamh:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzil;->zzamh:I

    return-void
.end method

.method private final zza(Landroid/media/MediaCodec;IJJ)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoq;->zzix()V

    const-string p3, "releaseOutputBuffer"

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzog;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p5, p6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzog;->endSection()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzil;->zzamg:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzil;->zzamg:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhz:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoq;->zziv()V

    return-void
.end method

.method private static zza(ZLcom/google/android/gms/internal/ads/zzgo;Lcom/google/android/gms/internal/ads/zzgo;)Z
    .registers 5

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgo;->zzafc:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzgo;->zzafc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzoq;->zzj(Lcom/google/android/gms/internal/ads/zzgo;)I

    move-result v0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzoq;->zzj(Lcom/google/android/gms/internal/ads/zzgo;)I

    move-result v1

    if-ne v0, v1, :cond_24

    if-nez p0, :cond_22

    iget p0, p1, Lcom/google/android/gms/internal/ads/zzgo;->width:I

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzgo;->width:I

    if-ne p0, v0, :cond_24

    iget p0, p1, Lcom/google/android/gms/internal/ads/zzgo;->height:I

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzgo;->height:I

    if-ne p0, p1, :cond_24

    :cond_22
    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method private final zzb(Landroid/media/MediaCodec;IJ)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoq;->zzix()V

    const-string p3, "releaseOutputBuffer"

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzog;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzog;->endSection()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzil;->zzamg:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzil;->zzamg:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhz:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoq;->zziv()V

    return-void
.end method

.method private static zzeg(J)Z
    .registers 5

    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzgo;)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgo;->zzafd:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgo;->zzafc:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgo;->width:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzgo;->height:I

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzoq;->zza(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private final zzit()V
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhm:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhm:J

    add-long/2addr v0, v2

    goto :goto_15

    :cond_10
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_15
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhw:J

    return-void
.end method

.method private final zziu()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhv:Z

    sget v0, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzajm:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgp()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_1b

    new-instance v1, Lcom/google/android/gms/internal/ads/zzor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/ads/zzor;-><init>(Lcom/google/android/gms/internal/ads/zzoq;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzop;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbik:Lcom/google/android/gms/internal/ads/zzor;

    :cond_1b
    return-void
.end method

.method private final zziw()V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbig:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbih:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbij:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbii:I

    return-void
.end method

.method private final zzix()V
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbig:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbic:I

    if-ne v0, v1, :cond_1a

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbih:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbid:I

    if-ne v0, v1, :cond_1a

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbii:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbie:I

    if-ne v0, v1, :cond_1a

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbij:F

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbif:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_37

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhl:Lcom/google/android/gms/internal/ads/zzov;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbic:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbid:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbie:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbif:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzov;->zza(IIIF)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbic:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbig:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbid:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbih:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbie:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbii:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbif:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbij:F

    :cond_37
    return-void
.end method

.method private final zziy()V
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbig:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbih:I

    if-eq v0, v1, :cond_16

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhl:Lcom/google/android/gms/internal/ads/zzov;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbic:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbid:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbie:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbif:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzov;->zza(IIIF)V

    :cond_16
    return-void
.end method

.method private final zziz()V
    .registers 7

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhy:I

    if-lez v0, :cond_18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhx:J

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhl:Lcom/google/android/gms/internal/ads/zzov;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhy:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzov;->zze(IJ)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhy:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhx:J

    :cond_18
    return-void
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzgo;)I
    .registers 2

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzgo;->zzafh:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    const/4 p0, 0x0

    :cond_6
    return p0
.end method

.method private final zzm(Z)Z
    .registers 4

    sget v0, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_16

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzajm:Z

    if-nez v0, :cond_16

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzlk:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzom;->zzc(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_16

    :cond_14
    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final isReady()Z
    .registers 10

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzkl;->isReady()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhv:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbht:Landroid/view/Surface;

    if-eqz v0, :cond_18

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhs:Landroid/view/Surface;

    if-eq v4, v0, :cond_1e

    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgp()Landroid/media/MediaCodec;

    move-result-object v0

    if-nez v0, :cond_21

    :cond_1e
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhw:J

    return v1

    :cond_21
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhw:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_29

    return v0

    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhw:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_34

    return v1

    :cond_34
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhw:J

    return v0
.end method

.method protected final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 9

    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "crop-top"

    const-string v3, "crop-bottom"

    const-string v4, "crop-left"

    const/4 v5, 0x1

    if-eqz v1, :cond_23

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    if-eqz v1, :cond_31

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    goto :goto_37

    :cond_31
    const-string v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_37
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbic:I

    if-eqz v1, :cond_46

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v0, p2

    add-int/2addr v0, v5

    goto :goto_4c

    :cond_46
    const-string v0, "height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_4c
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbid:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbib:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbif:F

    sget p2, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_72

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbia:I

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_62

    const/16 v0, 0x10e

    if-ne p2, v0, :cond_76

    :cond_62
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbic:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbid:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbic:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbid:I

    const/high16 p2, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbif:F

    div-float/2addr p2, v0

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbif:F

    goto :goto_76

    :cond_72
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbia:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbie:I

    :cond_76
    :goto_76
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhu:I

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method protected final onStarted()V
    .registers 3

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzkl;->onStarted()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhy:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhx:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhw:J

    return-void
.end method

.method protected final onStopped()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoq;->zziz()V

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzkl;->onStopped()V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzkn;Lcom/google/android/gms/internal/ads/zzgo;)I
    .registers 9

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzgo;->zzafc:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzny;->zzbd(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzgo;->zzaff:Lcom/google/android/gms/internal/ads/zzin;

    if-eqz v1, :cond_1e

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzin;->zzaml:I

    if-ge v3, v5, :cond_1f

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzin;->zzz(I)Lcom/google/android/gms/internal/ads/zzin$zza;

    move-result-object v5

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzin$zza;->zzamm:Z

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_1e
    const/4 v4, 0x0

    :cond_1f
    invoke-interface {p1, v0, v4}, Lcom/google/android/gms/internal/ads/zzkn;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_27

    return v0

    :cond_27
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzgo;->zzaez:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzkm;->zzaz(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget v3, p2, Lcom/google/android/gms/internal/ads/zzgo;->width:I

    if-lez v3, :cond_8d

    iget v4, p2, Lcom/google/android/gms/internal/ads/zzgo;->height:I

    if-lez v4, :cond_8d

    sget v1, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v1, v5, :cond_45

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzgo;->zzafg:F

    float-to-double v0, p2

    invoke-virtual {p1, v3, v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzkm;->zza(IID)Z

    move-result v1

    goto :goto_8d

    :cond_45
    mul-int v3, v3, v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkp;->zzgw()I

    move-result v1

    if-gt v3, v1, :cond_4f

    const/4 v1, 0x1

    goto :goto_50

    :cond_4f
    const/4 v1, 0x0

    :goto_50
    if-nez v1, :cond_8d

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzgo;->width:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzgo;->height:I

    sget-object v3, Lcom/google/android/gms/internal/ads/zzof;->zzbgt:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x38

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "FalseCheck [legacyFrameSize, "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] ["

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MediaCodecVideoRenderer"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8d
    :goto_8d
    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzkm;->zzayx:Z

    if-eqz p2, :cond_94

    const/16 p2, 0x8

    goto :goto_95

    :cond_94
    const/4 p2, 0x4

    :goto_95
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzkm;->zzajm:Z

    if-eqz p1, :cond_9b

    const/16 v2, 0x10

    :cond_9b
    if-eqz v1, :cond_9f

    const/4 p1, 0x3

    goto :goto_a0

    :cond_9f
    const/4 p1, 0x2

    :goto_a0
    or-int/2addr p2, v2

    or-int/2addr p1, p2

    return p1
.end method

.method public final zza(ILjava/lang/Object;)V
    .registers 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7c

    check-cast p2, Landroid/view/Surface;

    if-nez p2, :cond_27

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbht:Landroid/view/Surface;

    if-eqz p1, :cond_d

    move-object p2, p1

    goto :goto_27

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgq()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object p1

    if-eqz p1, :cond_27

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzkm;->zzayy:Z

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzoq;->zzm(Z)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzlk:Landroid/content/Context;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzkm;->zzayy:Z

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzom;->zzc(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzom;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbht:Landroid/view/Surface;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbht:Landroid/view/Surface;

    :cond_27
    :goto_27
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhs:Landroid/view/Surface;

    if-eq p1, p2, :cond_67

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhs:Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgb;->getState()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_36

    if-ne p1, v1, :cond_4e

    :cond_36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgp()Landroid/media/MediaCodec;

    move-result-object v0

    sget v2, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_48

    if-eqz v0, :cond_48

    if-eqz p2, :cond_48

    invoke-virtual {v0, p2}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    goto :goto_4e

    :cond_48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoq;->zzgr()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgo()V

    :cond_4e
    :goto_4e
    if-eqz p2, :cond_60

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbht:Landroid/view/Surface;

    if-eq p2, v0, :cond_60

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoq;->zziy()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoq;->zziu()V

    if-ne p1, v1, :cond_66

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoq;->zzit()V

    return-void

    :cond_60
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoq;->zziw()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoq;->zziu()V

    :cond_66
    return-void

    :cond_67
    if-eqz p2, :cond_7b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbht:Landroid/view/Surface;

    if-eq p2, p1, :cond_7b

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoq;->zziy()V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhv:Z

    if-eqz p1, :cond_7b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhl:Lcom/google/android/gms/internal/ads/zzov;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhs:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzov;->zza(Landroid/view/Surface;)V

    :cond_7b
    return-void

    :cond_7c
    const/4 v0, 0x4

    if-ne p1, v0, :cond_93

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhu:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgp()Landroid/media/MediaCodec;

    move-result-object p1

    if-eqz p1, :cond_92

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhu:I

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    :cond_92
    return-void

    :cond_93
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgb;->zza(ILjava/lang/Object;)V

    return-void
.end method

.method protected final zza(JZ)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzkl;->zza(JZ)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoq;->zziu()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhz:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbim:I

    if-eqz p2, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhp:[J

    add-int/lit8 p2, p2, -0x1

    aget-wide v1, v0, p2

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbil:J

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbim:I

    :cond_17
    if-eqz p3, :cond_1d

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoq;->zzit()V

    return-void

    :cond_1d
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhw:J

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzik;)V
    .registers 3

    sget p1, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p1, v0, :cond_d

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzajm:Z

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoq;->zziv()V

    :cond_d
    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzkm;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzgo;Landroid/media/MediaCrypto;)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhq:[Lcom/google/android/gms/internal/ads/zzgo;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzgo;->width:I

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzgo;->height:I

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzoq;->zzi(Lcom/google/android/gms/internal/ads/zzgo;)I

    move-result v7

    array-length v8, v4

    const/4 v9, -0x1

    const/4 v11, 0x1

    if-ne v8, v11, :cond_1e

    new-instance v4, Lcom/google/android/gms/internal/ads/zzos;

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzos;-><init>(III)V

    goto/16 :goto_149

    :cond_1e
    array-length v8, v4

    move v13, v6

    move v14, v7

    const/4 v6, 0x0

    move v7, v5

    const/4 v5, 0x0

    :goto_24
    if-ge v5, v8, :cond_56

    aget-object v15, v4, v5

    iget-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzayx:Z

    invoke-static {v10, v3, v15}, Lcom/google/android/gms/internal/ads/zzoq;->zza(ZLcom/google/android/gms/internal/ads/zzgo;Lcom/google/android/gms/internal/ads/zzgo;)Z

    move-result v10

    if-eqz v10, :cond_53

    iget v10, v15, Lcom/google/android/gms/internal/ads/zzgo;->width:I

    if-eq v10, v9, :cond_3b

    iget v10, v15, Lcom/google/android/gms/internal/ads/zzgo;->height:I

    if-ne v10, v9, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v10, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v10, 0x1

    :goto_3c
    or-int/2addr v6, v10

    iget v10, v15, Lcom/google/android/gms/internal/ads/zzgo;->width:I

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v10, v15, Lcom/google/android/gms/internal/ads/zzgo;->height:I

    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzoq;->zzi(Lcom/google/android/gms/internal/ads/zzgo;)I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v14, v13

    move v13, v10

    :cond_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_56
    if-eqz v6, :cond_144

    const/16 v4, 0x42

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MediaCodecVideoRenderer"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzgo;->height:I

    iget v8, v3, Lcom/google/android/gms/internal/ads/zzgo;->width:I

    if-le v5, v8, :cond_80

    const/4 v5, 0x1

    goto :goto_81

    :cond_80
    const/4 v5, 0x0

    :goto_81
    if-eqz v5, :cond_86

    iget v8, v3, Lcom/google/android/gms/internal/ads/zzgo;->height:I

    goto :goto_88

    :cond_86
    iget v8, v3, Lcom/google/android/gms/internal/ads/zzgo;->width:I

    :goto_88
    if-eqz v5, :cond_8d

    iget v10, v3, Lcom/google/android/gms/internal/ads/zzgo;->width:I

    goto :goto_8f

    :cond_8d
    iget v10, v3, Lcom/google/android/gms/internal/ads/zzgo;->height:I

    :goto_8f
    int-to-float v15, v10

    int-to-float v11, v8

    div-float/2addr v15, v11

    sget-object v11, Lcom/google/android/gms/internal/ads/zzoq;->zzbhj:[I

    array-length v12, v11

    const/4 v9, 0x0

    :goto_96
    if-ge v9, v12, :cond_108

    move/from16 v16, v12

    aget v12, v11, v9

    move-object/from16 v17, v11

    int-to-float v11, v12

    mul-float v11, v11, v15

    float-to-int v11, v11

    if-le v12, v8, :cond_108

    if-gt v11, v10, :cond_a8

    goto/16 :goto_108

    :cond_a8
    move/from16 v18, v8

    sget v8, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    move/from16 v19, v10

    const/16 v10, 0x15

    if-lt v8, v10, :cond_d1

    if-eqz v5, :cond_b6

    move v8, v11

    goto :goto_b7

    :cond_b6
    move v8, v12

    :goto_b7
    if-eqz v5, :cond_ba

    move v11, v12

    :cond_ba
    invoke-virtual {v1, v8, v11}, Lcom/google/android/gms/internal/ads/zzkm;->zzc(II)Landroid/graphics/Point;

    move-result-object v10

    iget v8, v3, Lcom/google/android/gms/internal/ads/zzgo;->zzafg:F

    iget v11, v10, Landroid/graphics/Point;->x:I

    iget v12, v10, Landroid/graphics/Point;->y:I

    move/from16 v20, v14

    move/from16 v21, v15

    float-to-double v14, v8

    invoke-virtual {v1, v11, v12, v14, v15}, Lcom/google/android/gms/internal/ads/zzkm;->zza(IID)Z

    move-result v8

    if-eqz v8, :cond_f9

    move-object v9, v10

    goto :goto_10b

    :cond_d1
    move/from16 v20, v14

    move/from16 v21, v15

    const/16 v8, 0x10

    invoke-static {v12, v8}, Lcom/google/android/gms/internal/ads/zzof;->zze(II)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    invoke-static {v11, v8}, Lcom/google/android/gms/internal/ads/zzof;->zze(II)I

    move-result v8

    shl-int/lit8 v8, v8, 0x4

    mul-int v11, v10, v8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkp;->zzgw()I

    move-result v12

    if-gt v11, v12, :cond_f9

    new-instance v9, Landroid/graphics/Point;

    if-eqz v5, :cond_f1

    move v11, v8

    goto :goto_f2

    :cond_f1
    move v11, v10

    :goto_f2
    if-eqz v5, :cond_f5

    move v8, v10

    :cond_f5
    invoke-direct {v9, v11, v8}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_10b

    :cond_f9
    add-int/lit8 v9, v9, 0x1

    move/from16 v12, v16

    move-object/from16 v11, v17

    move/from16 v8, v18

    move/from16 v10, v19

    move/from16 v14, v20

    move/from16 v15, v21

    goto :goto_96

    :cond_108
    :goto_108
    move/from16 v20, v14

    const/4 v9, 0x0

    :goto_10b
    if-eqz v9, :cond_142

    iget v5, v9, Landroid/graphics/Point;->x:I

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v5, v9, Landroid/graphics/Point;->y:I

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzgo;->zzafc:Ljava/lang/String;

    invoke-static {v5, v7, v13}, Lcom/google/android/gms/internal/ads/zzoq;->zza(Ljava/lang/String;II)I

    move-result v5

    move/from16 v14, v20

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/16 v5, 0x39

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Codec max resolution adjusted to: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_144

    :cond_142
    move/from16 v14, v20

    :cond_144
    :goto_144
    new-instance v4, Lcom/google/android/gms/internal/ads/zzos;

    invoke-direct {v4, v7, v13, v14}, Lcom/google/android/gms/internal/ads/zzos;-><init>(III)V

    :goto_149
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhr:Lcom/google/android/gms/internal/ads/zzos;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhr:Lcom/google/android/gms/internal/ads/zzos;

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzoq;->zzbho:Z

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzoq;->zzagf:I

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzgo;->zzek()Landroid/media/MediaFormat;

    move-result-object v3

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzos;->width:I

    const-string v8, "max-width"

    invoke-virtual {v3, v8, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzos;->height:I

    const-string v8, "max-height"

    invoke-virtual {v3, v8, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzos;->zzbio:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_16d

    const-string v7, "max-input-size"

    invoke-virtual {v3, v7, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_16d
    if-eqz v5, :cond_175

    const-string v4, "auto-frc"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_175
    if-eqz v6, :cond_182

    const-string v4, "tunneled-playback"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v4, "audio-session-id"

    invoke-virtual {v3, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_182
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhs:Landroid/view/Surface;

    if-nez v4, :cond_1a1

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzayy:Z

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzoq;->zzm(Z)Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzoq;->zzbht:Landroid/view/Surface;

    if-nez v4, :cond_19d

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzoq;->zzlk:Landroid/content/Context;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzayy:Z

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzom;->zzc(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzom;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzoq;->zzbht:Landroid/view/Surface;

    :cond_19d
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzoq;->zzbht:Landroid/view/Surface;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhs:Landroid/view/Surface;

    :cond_1a1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhs:Landroid/view/Surface;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    sget v1, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_1b9

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzoq;->zzajm:Z

    if-eqz v1, :cond_1b9

    new-instance v1, Lcom/google/android/gms/internal/ads/zzor;

    invoke-direct {v1, v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzor;-><init>(Lcom/google/android/gms/internal/ads/zzoq;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzop;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzoq;->zzbik:Lcom/google/android/gms/internal/ads/zzor;

    :cond_1b9
    return-void
.end method

.method protected final zza([Lcom/google/android/gms/internal/ads/zzgo;J)V
    .registers 9

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhq:[Lcom/google/android/gms/internal/ads/zzgo;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbil:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbil:J

    goto :goto_40

    :cond_10
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbim:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhp:[J

    array-length v2, v1

    if-ne v0, v2, :cond_34

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v1, v0

    const/16 v2, 0x41

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Too many stream changes, so dropping offset: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecVideoRenderer"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :cond_34
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbim:I

    :goto_38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhp:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbim:I

    add-int/lit8 v1, v1, -0x1

    aput-wide p2, v0, v1

    :goto_40
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgb;->zza([Lcom/google/android/gms/internal/ads/zzgo;J)V

    return-void
.end method

.method protected final zza(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .registers 29

    move-object/from16 v7, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide/from16 v3, p9

    :goto_8
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzoq;->zzbim:I

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_24

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzoq;->zzbhp:[J

    aget-wide v9, v6, v5

    cmp-long v11, v3, v9

    if-ltz v11, :cond_24

    aget-wide v9, v6, v5

    iput-wide v9, v7, Lcom/google/android/gms/internal/ads/zzoq;->zzbil:J

    add-int/lit8 v0, v0, -0x1

    iput v0, v7, Lcom/google/android/gms/internal/ads/zzoq;->zzbim:I

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzoq;->zzbim:I

    invoke-static {v6, v8, v6, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8

    :cond_24
    iget-wide v9, v7, Lcom/google/android/gms/internal/ads/zzoq;->zzbil:J

    sub-long v9, v3, v9

    if-eqz p11, :cond_2e

    invoke-direct {v7, v1, v2, v9, v10}, Lcom/google/android/gms/internal/ads/zzoq;->zza(Landroid/media/MediaCodec;IJ)V

    return v8

    :cond_2e
    sub-long v11, v3, p1

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzoq;->zzbhs:Landroid/view/Surface;

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzoq;->zzbht:Landroid/view/Surface;

    if-ne v0, v6, :cond_41

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzoq;->zzeg(J)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-direct {v7, v1, v2, v9, v10}, Lcom/google/android/gms/internal/ads/zzoq;->zza(Landroid/media/MediaCodec;IJ)V

    return v8

    :cond_40
    return v5

    :cond_41
    iget-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzoq;->zzbhv:Z

    const/16 v6, 0x15

    if-nez v0, :cond_5e

    sget v0, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    if-lt v0, v6, :cond_5a

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide v3, v9

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzoq;->zza(Landroid/media/MediaCodec;IJJ)V

    goto :goto_5d

    :cond_5a
    invoke-direct {v7, v1, v2, v9, v10}, Lcom/google/android/gms/internal/ads/zzoq;->zzb(Landroid/media/MediaCodec;IJ)V

    :goto_5d
    return v8

    :cond_5e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgb;->getState()I

    move-result v0

    const/4 v13, 0x2

    if-eq v0, v13, :cond_66

    return v5

    :cond_66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long v13, v13, v15

    sub-long v13, v13, p3

    sub-long/2addr v11, v13

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    mul-long v11, v11, v15

    add-long/2addr v11, v13

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzoq;->zzbhk:Lcom/google/android/gms/internal/ads/zzou;

    invoke-virtual {v0, v3, v4, v11, v12}, Lcom/google/android/gms/internal/ads/zzou;->zzf(JJ)J

    move-result-wide v11

    sub-long v3, v11, v13

    div-long/2addr v3, v15

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzoq;->zzeg(J)Z

    move-result v0

    if-eqz v0, :cond_b7

    const-string v0, "dropVideoBuffer"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzog;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzog;->endSection()V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzil;->zzami:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzil;->zzami:I

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzoq;->zzbhy:I

    add-int/2addr v1, v8

    iput v1, v7, Lcom/google/android/gms/internal/ads/zzoq;->zzbhy:I

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzoq;->zzbhz:I

    add-int/2addr v1, v8

    iput v1, v7, Lcom/google/android/gms/internal/ads/zzoq;->zzbhz:I

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzoq;->zzbhz:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzil;->zzamj:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzil;->zzamj:I

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzoq;->zzbhy:I

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzoq;->zzbhn:I

    if-ne v0, v1, :cond_b6

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoq;->zziz()V

    :cond_b6
    return v8

    :cond_b7
    sget v0, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    if-lt v0, v6, :cond_ce

    const-wide/32 v13, 0xc350

    cmp-long v0, v3, v13

    if-gez v0, :cond_ed

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide v3, v9

    move-wide v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzoq;->zza(Landroid/media/MediaCodec;IJJ)V

    return v8

    :cond_ce
    const-wide/16 v11, 0x7530

    cmp-long v0, v3, v11

    if-gez v0, :cond_ed

    const-wide/16 v5, 0x2af8

    cmp-long v0, v3, v5

    if-lez v0, :cond_e9

    const-wide/16 v5, 0x2710

    sub-long/2addr v3, v5

    :try_start_dd
    div-long/2addr v3, v15

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e1
    .catch Ljava/lang/InterruptedException; {:try_start_dd .. :try_end_e1} :catch_e2

    goto :goto_e9

    :catch_e2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_e9
    :goto_e9
    invoke-direct {v7, v1, v2, v9, v10}, Lcom/google/android/gms/internal/ads/zzoq;->zzb(Landroid/media/MediaCodec;IJ)V

    return v8

    :cond_ed
    return v5
.end method

.method protected final zza(Landroid/media/MediaCodec;ZLcom/google/android/gms/internal/ads/zzgo;Lcom/google/android/gms/internal/ads/zzgo;)Z
    .registers 5

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzoq;->zza(ZLcom/google/android/gms/internal/ads/zzgo;Lcom/google/android/gms/internal/ads/zzgo;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget p1, p4, Lcom/google/android/gms/internal/ads/zzgo;->width:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhr:Lcom/google/android/gms/internal/ads/zzos;

    iget p3, p2, Lcom/google/android/gms/internal/ads/zzos;->width:I

    if-gt p1, p3, :cond_1c

    iget p1, p4, Lcom/google/android/gms/internal/ads/zzgo;->height:I

    iget p3, p2, Lcom/google/android/gms/internal/ads/zzos;->height:I

    if-gt p1, p3, :cond_1c

    iget p1, p4, Lcom/google/android/gms/internal/ads/zzgo;->zzafd:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzos;->zzbio:I

    if-gt p1, p2, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzkm;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhs:Landroid/view/Surface;

    if-nez v0, :cond_f

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzkm;->zzayy:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzoq;->zzm(Z)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x1

    return p1
.end method

.method protected final zzc(Ljava/lang/String;JJ)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhl:Lcom/google/android/gms/internal/ads/zzov;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected final zzd(Lcom/google/android/gms/internal/ads/zzgo;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzkl;->zzd(Lcom/google/android/gms/internal/ads/zzgo;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhl:Lcom/google/android/gms/internal/ads/zzov;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzov;->zzc(Lcom/google/android/gms/internal/ads/zzgo;)V

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgo;->zzafi:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_12

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_12
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbib:F

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzoq;->zzj(Lcom/google/android/gms/internal/ads/zzgo;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbia:I

    return-void
.end method

.method protected final zzd(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzkl;->zzd(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgb;->zzds()Lcom/google/android/gms/internal/ads/zzgz;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzgz;->zzagf:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzagf:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzagf:I

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzajm:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhl:Lcom/google/android/gms/internal/ads/zzov;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzov;->zzc(Lcom/google/android/gms/internal/ads/zzil;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhk:Lcom/google/android/gms/internal/ads/zzou;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzou;->enable()V

    return-void
.end method

.method protected final zzdr()V
    .registers 4

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbic:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbid:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbif:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbib:F

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbil:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbim:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoq;->zziw()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoq;->zziu()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhk:Lcom/google/android/gms/internal/ads/zzou;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzou;->disable()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbik:Lcom/google/android/gms/internal/ads/zzor;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzajm:Z

    :try_start_25
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzdr()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_35

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzil;->zzfy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhl:Lcom/google/android/gms/internal/ads/zzov;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzov;->zzd(Lcom/google/android/gms/internal/ads/zzil;)V

    return-void

    :catchall_35
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzil;->zzfy()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhl:Lcom/google/android/gms/internal/ads/zzov;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzov;->zzd(Lcom/google/android/gms/internal/ads/zzil;)V

    throw v0
.end method

.method protected final zzgr()V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgr()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_16

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbht:Landroid/view/Surface;

    if-eqz v1, :cond_15

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhs:Landroid/view/Surface;

    if-ne v2, v1, :cond_e

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhs:Landroid/view/Surface;

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbht:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbht:Landroid/view/Surface;

    :cond_15
    return-void

    :catchall_16
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbht:Landroid/view/Surface;

    if-eqz v2, :cond_28

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhs:Landroid/view/Surface;

    if-ne v3, v2, :cond_21

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhs:Landroid/view/Surface;

    :cond_21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbht:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbht:Landroid/view/Surface;

    :cond_28
    throw v1
.end method

.method final zziv()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhv:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhv:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhl:Lcom/google/android/gms/internal/ads/zzov;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbhs:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzov;->zza(Landroid/view/Surface;)V

    :cond_e
    return-void
.end method
