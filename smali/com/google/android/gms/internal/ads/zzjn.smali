###### Class com.google.android.gms.internal.ads.zzjn (com.google.android.gms.internal.ads.zzjn)
.class final Lcom/google/android/gms/internal/ads/zzjn;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public height:I

.field public number:I

.field public type:I

.field public width:I

.field public zzaff:Lcom/google/android/gms/internal/ads/zzin;

.field public zzafj:I

.field public zzafk:[B

.field public zzafm:I

.field public zzafn:I

.field private zzaft:Ljava/lang/String;

.field public zzapl:Ljava/lang/String;

.field public zzapm:I

.field public zzapn:Z

.field public zzapo:[B

.field public zzapp:Lcom/google/android/gms/internal/ads/zzjg;

.field public zzapq:[B

.field public zzapr:I

.field public zzaps:I

.field public zzapt:I

.field public zzapu:Z

.field public zzapv:I

.field public zzapw:I

.field public zzapx:I

.field public zzapy:I

.field public zzapz:I

.field public zzaqa:F

.field public zzaqb:F

.field public zzaqc:F

.field public zzaqd:F

.field public zzaqe:F

.field public zzaqf:F

.field public zzaqg:F

.field public zzaqh:F

.field public zzaqi:F

.field public zzaqj:F

.field public zzaqk:I

.field public zzaql:J

.field public zzaqm:J

.field public zzaqn:Z

.field public zzaqo:Z

.field public zzaqp:Lcom/google/android/gms/internal/ads/zzjd;

.field public zzaqq:I


# direct methods
.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjn;->width:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjn;->height:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzapr:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzaps:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzapt:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzafk:[B

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzafj:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzapu:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzapv:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzapw:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzapx:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzapy:I

    const/16 v1, 0xc8

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzapz:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqa:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqb:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqc:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqd:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqe:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqf:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqg:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqh:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqi:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqj:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzafm:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqk:I

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzafn:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzaql:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqm:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqo:Z

    const-string v0, "eng"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzaft:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzjl;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjn;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzaft:Ljava/lang/String;

    return-object p1
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzoc;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzoc;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const/16 v0, 0x10

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->zzip()J

    move-result-wide v0

    const-wide/32 v2, 0x31435657

    cmp-long v4, v0, v2

    if-eqz v4, :cond_12

    const/4 p0, 0x0

    return-object p0

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    :goto_1a
    array-length v1, p0

    add-int/lit8 v1, v1, -0x4

    if-ge v0, v1, :cond_45

    aget-byte v1, p0, v0

    if-nez v1, :cond_42

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_42

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_42

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p0, v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_42

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_45
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgv;

    const-string v0, "Failed to find FourCC VC1 initialization data"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_4d} :catch_4d

    :catch_4d
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgv;

    const-string v0, "Error parsing FourCC VC1 codec private"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    goto :goto_56

    :goto_55
    throw p0

    :goto_56
    goto :goto_55
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzoc;)Z
    .registers 9

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->zzin()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    return v1

    :cond_8
    const v2, 0xfffe

    const/4 v3, 0x0

    if-ne v0, v2, :cond_34

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->readLong()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzjm;->zzgh()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_34

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->readLong()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzjm;->zzgh()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6
    :try_end_2f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_2f} :catch_35

    cmp-long p0, v4, v6

    if-nez p0, :cond_34

    return v1

    :cond_34
    return v3

    :catch_35
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgv;

    const-string v0, "Error parsing MS/ACM codec private"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzd([B)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const-string v0, "Error parsing vorbis codec private"

    const/4 v1, 0x0

    :try_start_3
    aget-byte v2, p0, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_65

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_b
    aget-byte v6, p0, v4

    const/4 v7, -0x1

    if-ne v6, v7, :cond_15

    add-int/lit16 v5, v5, 0xff

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_15
    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p0, v4

    add-int/2addr v5, v4

    const/4 v4, 0x0

    :goto_1b
    aget-byte v8, p0, v6

    if-ne v8, v7, :cond_24

    add-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_24
    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    add-int/2addr v4, v6

    aget-byte v6, p0, v7

    if-ne v6, v2, :cond_5f

    new-array v2, v5, [B

    invoke-static {p0, v7, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v5

    aget-byte v5, p0, v7

    const/4 v6, 0x3

    if-ne v5, v6, :cond_59

    add-int/2addr v7, v4

    aget-byte v4, p0, v7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_53

    array-length v4, p0

    sub-int/2addr v4, v7

    new-array v4, v4, [B

    array-length v5, p0

    sub-int/2addr v5, v7

    invoke-static {p0, v7, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_53
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgv;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_59
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgv;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5f
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgv;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_65
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgv;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_6b} :catch_6b

    :catch_6b
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgv;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    goto :goto_72

    :goto_71
    throw p0

    :goto_72
    goto :goto_71
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zziy;I)V
    .registers 32

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzapl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, -0x1

    sparse-switch v2, :sswitch_data_4b2

    goto/16 :goto_153

    :sswitch_14
    const-string v2, "A_OPUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0xb

    goto/16 :goto_154

    :sswitch_20
    const-string v2, "A_FLAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x15

    goto/16 :goto_154

    :sswitch_2c
    const-string v2, "A_EAC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x10

    goto/16 :goto_154

    :sswitch_38
    const-string v2, "V_MPEG2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/4 v1, 0x2

    goto/16 :goto_154

    :sswitch_43
    const-string v2, "S_TEXT/UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x18

    goto/16 :goto_154

    :sswitch_4f
    const-string v2, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/4 v1, 0x7

    goto/16 :goto_154

    :sswitch_5a
    const-string v2, "A_PCM/INT/LIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x17

    goto/16 :goto_154

    :sswitch_66
    const-string v2, "A_DTS/EXPRESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x13

    goto/16 :goto_154

    :sswitch_72
    const-string v2, "V_THEORA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x9

    goto/16 :goto_154

    :sswitch_7e
    const-string v2, "S_HDMV/PGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x1a

    goto/16 :goto_154

    :sswitch_8a
    const-string v2, "V_VP9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/4 v1, 0x1

    goto/16 :goto_154

    :sswitch_95
    const-string v2, "V_VP8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/4 v1, 0x0

    goto/16 :goto_154

    :sswitch_a0
    const-string v2, "A_DTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x12

    goto/16 :goto_154

    :sswitch_ac
    const-string v2, "A_AC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0xf

    goto/16 :goto_154

    :sswitch_b8
    const-string v2, "A_AAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0xc

    goto/16 :goto_154

    :sswitch_c4
    const-string v2, "A_DTS/LOSSLESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x14

    goto/16 :goto_154

    :sswitch_d0
    const-string v2, "S_VOBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x19

    goto/16 :goto_154

    :sswitch_dc
    const-string v2, "V_MPEG4/ISO/AVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/4 v1, 0x6

    goto/16 :goto_154

    :sswitch_e7
    const-string v2, "V_MPEG4/ISO/ASP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/4 v1, 0x4

    goto/16 :goto_154

    :sswitch_f2
    const-string v2, "S_DVBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x1b

    goto :goto_154

    :sswitch_fd
    const-string v2, "V_MS/VFW/FOURCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x8

    goto :goto_154

    :sswitch_108
    const-string v2, "A_MPEG/L3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0xe

    goto :goto_154

    :sswitch_113
    const-string v2, "A_MPEG/L2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0xd

    goto :goto_154

    :sswitch_11e
    const-string v2, "A_VORBIS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0xa

    goto :goto_154

    :sswitch_129
    const-string v2, "A_TRUEHD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x11

    goto :goto_154

    :sswitch_134
    const-string v2, "A_MS/ACM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x16

    goto :goto_154

    :sswitch_13f
    const-string v2, "V_MPEG4/ISO/SP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/4 v1, 0x3

    goto :goto_154

    :sswitch_149
    const-string v2, "V_MPEG4/ISO/AP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/4 v1, 0x5

    goto :goto_154

    :cond_153
    :goto_153
    const/4 v1, -0x1

    :goto_154
    const-string v2, "audio/raw"

    const/16 v9, 0x1000

    const-string v10, "video/x-unknown"

    const-string v11, "audio/x-unknown"

    const-string v12, "MatroskaExtractor"

    const/4 v13, 0x0

    packed-switch v1, :pswitch_data_524

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgv;

    const-string v2, "Unrecognized codec identifier."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_16a
    const/4 v1, 0x4

    new-array v1, v1, [B

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzapq:[B

    aget-byte v3, v2, v6

    aput-byte v3, v1, v6

    aget-byte v3, v2, v4

    aput-byte v3, v1, v4

    aget-byte v3, v2, v5

    aput-byte v3, v1, v5

    aget-byte v2, v2, v7

    aput-byte v2, v1, v7

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "application/dvbsubs"

    goto/16 :goto_237

    :pswitch_187
    const-string v2, "application/pgs"

    goto/16 :goto_2e9

    :pswitch_18b
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzapq:[B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "application/vobsub"

    goto/16 :goto_237

    :pswitch_195
    const-string v2, "application/x-subrip"

    goto/16 :goto_2e9

    :pswitch_199
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqk:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzof;->zzbj(I)I

    move-result v1

    if-nez v1, :cond_1c8

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqk:I

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1ae
    const-string v2, "Unsupported PCM bit depth: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Setting mimeType to "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1c2
    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v11

    goto/16 :goto_2ea

    :cond_1c8
    move/from16 v21, v1

    move-object v15, v2

    move-object v1, v13

    const/16 v18, -0x1

    goto/16 :goto_2ef

    :pswitch_1d0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzapq:[B

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/zzoc;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzjn;->zzb(Lcom/google/android/gms/internal/ads/zzoc;)Z

    move-result v1

    if-eqz v1, :cond_1f3

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqk:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzof;->zzbj(I)I

    move-result v1

    if-nez v1, :cond_1c8

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqk:I

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_1ae

    :cond_1f3
    const-string v1, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_200

    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c2

    :cond_200
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_1c2

    :pswitch_207
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzapq:[B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "audio/x-flac"

    goto :goto_237

    :pswitch_210
    const-string v2, "audio/vnd.dts.hd"

    goto/16 :goto_2e9

    :pswitch_214
    const-string v2, "audio/vnd.dts"

    goto/16 :goto_2e9

    :pswitch_218
    const-string v2, "audio/true-hd"

    goto/16 :goto_2e9

    :pswitch_21c
    const-string v2, "audio/eac3"

    goto/16 :goto_2e9

    :pswitch_220
    const-string v2, "audio/ac3"

    goto/16 :goto_2e9

    :pswitch_224
    const-string v2, "audio/mpeg"

    goto :goto_229

    :pswitch_227
    const-string v2, "audio/mpeg-L2"

    :goto_229
    move-object v15, v2

    move-object v1, v13

    const/16 v18, 0x1000

    goto/16 :goto_2ed

    :pswitch_22f
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzapq:[B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "audio/mp4a-latm"

    :goto_237
    move-object v15, v2

    goto/16 :goto_2eb

    :pswitch_23a
    const/16 v1, 0x1680

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzapq:[B

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaql:J

    invoke-virtual {v9, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqm:J

    invoke-virtual {v3, v9, v10}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "audio/opus"

    move-object v1, v2

    move-object v15, v3

    const/16 v18, 0x1680

    goto/16 :goto_2ed

    :pswitch_280
    const/16 v1, 0x2000

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzapq:[B

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzjn;->zzd([B)Ljava/util/List;

    move-result-object v2

    const-string v3, "audio/vorbis"

    move-object v1, v2

    move-object v15, v3

    const/16 v18, 0x2000

    goto/16 :goto_2ed

    :pswitch_290
    move-object v15, v10

    goto :goto_2ea

    :pswitch_292
    new-instance v1, Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzapq:[B

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzoc;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzjn;->zza(Lcom/google/android/gms/internal/ads/zzoc;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2a2

    const-string v2, "video/wvc1"

    goto :goto_237

    :cond_2a2
    const-string v2, "Unsupported FourCC. Setting mimeType to video/x-unknown"

    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v10

    goto :goto_2eb

    :pswitch_2a9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzapq:[B

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzoc;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzon;->zzh(Lcom/google/android/gms/internal/ads/zzoc;)Lcom/google/android/gms/internal/ads/zzon;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzon;->zzafe:Ljava/util/List;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzon;->zzaqq:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqq:I

    const-string v1, "video/hevc"

    goto :goto_2d0

    :pswitch_2bd
    new-instance v1, Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzapq:[B

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzoc;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzoh;->zzf(Lcom/google/android/gms/internal/ads/zzoc;)Lcom/google/android/gms/internal/ads/zzoh;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzoh;->zzafe:Ljava/util/List;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzoh;->zzaqq:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqq:I

    const-string v1, "video/avc"

    :goto_2d0
    move-object v15, v1

    move-object v1, v2

    goto :goto_2eb

    :pswitch_2d3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzapq:[B

    if-nez v1, :cond_2d9

    move-object v1, v13

    goto :goto_2dd

    :cond_2d9
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_2dd
    const-string v2, "video/mp4v-es"

    goto/16 :goto_237

    :pswitch_2e1
    const-string v2, "video/mpeg2"

    goto :goto_2e9

    :pswitch_2e4
    const-string v2, "video/x-vnd.on2.vp9"

    goto :goto_2e9

    :pswitch_2e7
    const-string v2, "video/x-vnd.on2.vp8"

    :goto_2e9
    move-object v15, v2

    :goto_2ea
    move-object v1, v13

    :goto_2eb
    const/16 v18, -0x1

    :goto_2ed
    const/16 v21, -0x1

    :goto_2ef
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqo:Z

    or-int/2addr v2, v6

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqn:Z

    if-eqz v3, :cond_2f8

    const/4 v3, 0x2

    goto :goto_2f9

    :cond_2f8
    const/4 v3, 0x0

    :goto_2f9
    or-int/2addr v2, v3

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzny;->zzbc(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_323

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, -0x1

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzafm:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzafn:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaff:Lcom/google/android/gms/internal/ads/zzin;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaft:Ljava/lang/String;

    move/from16 v19, v3

    move/from16 v20, v5

    move-object/from16 v22, v1

    move-object/from16 v23, v6

    move/from16 v24, v2

    move-object/from16 v25, v7

    invoke-static/range {v14 .. v25}, Lcom/google/android/gms/internal/ads/zzgo;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzin;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v1

    const/4 v7, 0x1

    goto/16 :goto_4a2

    :cond_323
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzny;->zzbd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44c

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzapt:I

    if-nez v2, :cond_33d

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzapr:I

    if-ne v2, v8, :cond_333

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->width:I

    :cond_333
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzapr:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaps:I

    if-ne v2, v8, :cond_33b

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->height:I

    :cond_33b
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaps:I

    :cond_33d
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzapr:I

    const/high16 v3, -0x40800000    # -1.0f

    if-eq v2, v8, :cond_355

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaps:I

    if-eq v4, v8, :cond_355

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzjn;->height:I

    mul-int v7, v7, v2

    int-to-float v2, v7

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzjn;->width:I

    mul-int v7, v7, v4

    int-to-float v4, v7

    div-float/2addr v2, v4

    move/from16 v24, v2

    goto :goto_357

    :cond_355
    const/high16 v24, -0x40800000    # -1.0f

    :goto_357
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzapu:Z

    if-eqz v2, :cond_422

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqa:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_414

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqb:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_414

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqc:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_414

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqd:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_414

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqe:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_414

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqf:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_414

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqg:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_414

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqh:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_414

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqi:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_414

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqj:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_398

    goto :goto_414

    :cond_398
    const/16 v2, 0x19

    new-array v13, v2, [B

    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqa:F

    const v4, 0x47435000    # 50000.0f

    mul-float v3, v3, v4

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v3, v6

    float-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqb:F

    mul-float v3, v3, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqc:F

    mul-float v3, v3, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqd:F

    mul-float v3, v3, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqe:F

    mul-float v3, v3, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqf:F

    mul-float v3, v3, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqg:F

    mul-float v3, v3, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqh:F

    mul-float v3, v3, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqi:F

    add-float/2addr v3, v6

    float-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqj:F

    add-float/2addr v3, v6

    float-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzapy:I

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzapz:I

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_414
    :goto_414
    new-instance v2, Lcom/google/android/gms/internal/ads/zzok;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzapv:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzapx:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzapw:I

    invoke-direct {v2, v3, v4, v6, v13}, Lcom/google/android/gms/internal/ads/zzok;-><init>(III[B)V

    move-object/from16 v27, v2

    goto :goto_424

    :cond_422
    move-object/from16 v27, v13

    :goto_424
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, -0x1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->width:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzjn;->height:I

    const/high16 v21, -0x40800000    # -1.0f

    const/16 v23, -0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzafk:[B

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzafj:I

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaff:Lcom/google/android/gms/internal/ads/zzin;

    move/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v22, v1

    move-object/from16 v25, v4

    move/from16 v26, v6

    move-object/from16 v28, v7

    invoke-static/range {v14 .. v28}, Lcom/google/android/gms/internal/ads/zzgo;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/gms/internal/ads/zzok;Lcom/google/android/gms/internal/ads/zzin;)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v1

    const/4 v7, 0x2

    goto :goto_4a2

    :cond_44c
    const-string v3, "application/x-subrip"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46b

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, -0x1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaft:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaff:Lcom/google/android/gms/internal/ads/zzin;

    move/from16 v18, v2

    move-object/from16 v19, v1

    move-object/from16 v20, v3

    invoke-static/range {v14 .. v20}, Lcom/google/android/gms/internal/ads/zzgo;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/gms/internal/ads/zzin;)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v1

    goto :goto_4a2

    :cond_46b
    const-string v2, "application/vobsub"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48c

    const-string v2, "application/pgs"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48c

    const-string v2, "application/dvbsubs"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_484

    goto :goto_48c

    :cond_484
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgv;

    const-string v2, "Unexpected MIME type."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_48c
    :goto_48c
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, -0x1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaft:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaff:Lcom/google/android/gms/internal/ads/zzin;

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-static/range {v14 .. v20}, Lcom/google/android/gms/internal/ads/zzgo;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzin;)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v1

    :goto_4a2
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->number:I

    move-object/from16 v3, p1

    invoke-interface {v3, v2, v7}, Lcom/google/android/gms/internal/ads/zziy;->zzb(II)Lcom/google/android/gms/internal/ads/zzjd;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqp:Lcom/google/android/gms/internal/ads/zzjd;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzaqp:Lcom/google/android/gms/internal/ads/zzjd;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzjd;->zze(Lcom/google/android/gms/internal/ads/zzgo;)V

    return-void

    :sswitch_data_4b2
    .sparse-switch
        -0x7ce7f5de -> :sswitch_149
        -0x7ce7f3b0 -> :sswitch_13f
        -0x76567dc0 -> :sswitch_134
        -0x6a615338 -> :sswitch_129
        -0x672350af -> :sswitch_11e
        -0x585f4fce -> :sswitch_113
        -0x585f4fcd -> :sswitch_108
        -0x51dc40b2 -> :sswitch_fd
        -0x37a9c464 -> :sswitch_f2
        -0x2016c535 -> :sswitch_e7
        -0x2016c4e5 -> :sswitch_dc
        -0x19552dbd -> :sswitch_d0
        -0x1538b2ba -> :sswitch_c4
        0x3c02325 -> :sswitch_b8
        0x3c02353 -> :sswitch_ac
        0x3c030c5 -> :sswitch_a0
        0x4e86155 -> :sswitch_95
        0x4e86156 -> :sswitch_8a
        0x5e8da3e -> :sswitch_7e
        0x1a8350d6 -> :sswitch_72
        0x2056f406 -> :sswitch_66
        0x2b453ce4 -> :sswitch_5a
        0x32fdf009 -> :sswitch_4f
        0x54c61e47 -> :sswitch_43
        0x6bd6c624 -> :sswitch_38
        0x7446132a -> :sswitch_2c
        0x7446b0a6 -> :sswitch_20
        0x744ad97d -> :sswitch_14
    .end sparse-switch

    :pswitch_data_524
    .packed-switch 0x0
        :pswitch_2e7
        :pswitch_2e4
        :pswitch_2e1
        :pswitch_2d3
        :pswitch_2d3
        :pswitch_2d3
        :pswitch_2bd
        :pswitch_2a9
        :pswitch_292
        :pswitch_290
        :pswitch_280
        :pswitch_23a
        :pswitch_22f
        :pswitch_227
        :pswitch_224
        :pswitch_220
        :pswitch_21c
        :pswitch_218
        :pswitch_214
        :pswitch_214
        :pswitch_210
        :pswitch_207
        :pswitch_1d0
        :pswitch_199
        :pswitch_195
        :pswitch_18b
        :pswitch_187
        :pswitch_16a
    .end packed-switch
.end method
