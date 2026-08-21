###### Class com.google.android.exoplayer2.upstream.DefaultBandwidthMeter (com.google.android.exoplayer2.upstream.DefaultBandwidthMeter)
.class public final Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
.implements Lcom/google/android/exoplayer2/upstream/TransferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    }
.end annotation


# static fields
.field private static final BYTES_TRANSFERRED_FOR_ESTIMATE:I = 0x80000

.field public static final DEFAULT_INITIAL_BITRATE_COUNTRY_GROUPS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATE:J = 0xf4240L

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_2G:[J

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_3G:[J

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_4G:[J

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:[J

.field public static final DEFAULT_SLIDING_WINDOW_MAX_WEIGHT:I = 0x7d0

.field private static final ELAPSED_MILLIS_FOR_ESTIMATE:I = 0x7d0


# instance fields
.field private bitrateEstimate:J

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final eventDispatcher:Lcom/google/android/exoplayer2/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/EventDispatcher<",
            "Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private sampleBytesTransferred:J

.field private sampleStartTimeMs:J

.field private final slidingPercentile:Lcom/google/android/exoplayer2/util/SlidingPercentile;

.field private streamCount:I

.field private totalBytesTransferred:J

.field private totalElapsedTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->createInitialBitrateCountryGroupAssignment()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_COUNTRY_GROUPS:Ljava/util/Map;

    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_24

    sput-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_3c

    sput-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_2G:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_54

    sput-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_3G:[J

    new-array v0, v0, [J

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_4G:[J

    return-void

    :array_24
    .array-data 8
        0x56f9a0
        0x33e140
        0x1cfde0
        0xf4240
        0x61a80
    .end array-data

    :array_3c
    .array-data 8
        0x29428
        0x1f7e8
        0x1bd50
        0x18e70
        0x153d8
    .end array-data

    :array_54
    .array-data 8
        0x200b20
        0x13d620
        0xe7ef0
        0xaae60
        0x61a80
    .end array-data

    :array_6c
    .array-data 8
        0x694920
        0x419ce0
        0x2932e0
        0x186a00
        0x6ddd0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 5

    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    const-wide/32 v1, 0xf4240

    const/16 v3, 0x7d0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>(JILcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method private constructor <init>(JILcom/google/android/exoplayer2/util/Clock;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/util/EventDispatcher;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->eventDispatcher:Lcom/google/android/exoplayer2/util/EventDispatcher;

    new-instance v0, Lcom/google/android/exoplayer2/util/SlidingPercentile;

    invoke-direct {v0, p3}, Lcom/google/android/exoplayer2/util/SlidingPercentile;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->slidingPercentile:Lcom/google/android/exoplayer2/util/SlidingPercentile;

    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->clock:Lcom/google/android/exoplayer2/util/Clock;

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    return-void
.end method

.method synthetic constructor <init>(JILcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>(JILcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    const-wide/32 v1, 0xf4240

    const/16 v3, 0x7d0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>(JILcom/google/android/exoplayer2/util/Clock;)V

    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    :cond_11
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;I)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    const-wide/32 v1, 0xf4240

    invoke-direct {p0, v1, v2, p3, v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>(JILcom/google/android/exoplayer2/util/Clock;)V

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    :cond_f
    return-void
.end method

.method static synthetic a(IJJLcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .registers 12

    move-object v0, p5

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;->onBandwidthSample(IJJ)V

    return-void
.end method

.method private static createInitialBitrateCountryGroupAssignment()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_96c

    const-string v3, "AD"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_978

    const-string v3, "AE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_984

    const-string v3, "AF"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_990

    const-string v3, "AG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_99c

    const-string v3, "AI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_9a8

    const-string v3, "AL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_9b4

    const-string v3, "AM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_9c0

    const-string v3, "AO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_9cc

    const-string v3, "AR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_9d8

    const-string v3, "AS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_9e4

    const-string v3, "AT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_9f0

    const-string v3, "AU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_9fc

    const-string v3, "AW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_a08

    const-string v3, "AX"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_a14

    const-string v3, "AZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_a20

    const-string v3, "BA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_a2c

    const-string v3, "BB"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_a38

    const-string v3, "BD"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_a44

    const-string v3, "BE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_a50

    const-string v3, "BF"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_a5c

    const-string v3, "BG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_a68

    const-string v3, "BH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_a74

    const-string v3, "BI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_a80

    const-string v3, "BJ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_a8c

    const-string v3, "BL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_a98

    const-string v3, "BM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_aa4

    const-string v3, "BN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_ab0

    const-string v3, "BO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_abc

    const-string v3, "BQ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_ac8

    const-string v3, "BR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_ad4

    const-string v3, "BS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_ae0

    const-string v3, "BT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_aec

    const-string v3, "BW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_af8

    const-string v3, "BY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_b04

    const-string v3, "BZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_b10

    const-string v3, "CA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_b1c

    const-string v3, "CD"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_b28

    const-string v3, "CF"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_b34

    const-string v3, "CG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_b40

    const-string v3, "CH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_b4c

    const-string v3, "CI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_b58

    const-string v3, "CK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_b64

    const-string v3, "CL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_b70

    const-string v3, "CM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_b7c

    const-string v3, "CN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_b88

    const-string v3, "CO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_b94

    const-string v3, "CR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_ba0

    const-string v3, "CU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_bac

    const-string v3, "CV"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_bb8

    const-string v3, "CW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_bc4

    const-string v3, "CX"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_bd0

    const-string v3, "CY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_bdc

    const-string v3, "CZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_be8

    const-string v3, "DE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_bf4

    const-string v3, "DJ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_c00

    const-string v3, "DK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_c0c

    const-string v3, "DM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_c18

    const-string v3, "DO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_c24

    const-string v3, "DZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_c30

    const-string v3, "EC"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_c3c

    const-string v3, "EE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_c48

    const-string v3, "EG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_c54

    const-string v3, "EH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_c60

    const-string v3, "ER"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_c6c

    const-string v3, "ES"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_c78

    const-string v3, "ET"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_c84

    const-string v3, "FI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_c90

    const-string v3, "FJ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_c9c

    const-string v3, "FK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_ca8

    const-string v3, "FM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_cb4

    const-string v3, "FO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_cc0

    const-string v3, "FR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_ccc

    const-string v3, "GA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_cd8

    const-string v3, "GB"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_ce4

    const-string v3, "GD"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_cf0

    const-string v3, "GE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_cfc

    const-string v3, "GF"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_d08

    const-string v3, "GG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_d14

    const-string v3, "GH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_d20

    const-string v3, "GI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_d2c

    const-string v3, "GL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_d38

    const-string v3, "GM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_d44

    const-string v3, "GN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_d50

    const-string v3, "GP"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_d5c

    const-string v3, "GQ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_d68

    const-string v3, "GR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_d74

    const-string v3, "GT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_d80

    const-string v3, "GU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_d8c

    const-string v3, "GW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_d98

    const-string v3, "GY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_da4

    const-string v3, "HK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_db0

    const-string v3, "HN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_dbc

    const-string v3, "HR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_dc8

    const-string v3, "HT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_dd4

    const-string v3, "HU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_de0

    const-string v3, "ID"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_dec

    const-string v3, "IE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_df8

    const-string v3, "IL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_e04

    const-string v3, "IM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_e10

    const-string v3, "IN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_e1c

    const-string v3, "IO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_e28

    const-string v3, "IQ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_e34

    const-string v3, "IR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_e40

    const-string v3, "IS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_e4c

    const-string v3, "IT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_e58

    const-string v3, "JE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_e64

    const-string v3, "JM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_e70

    const-string v3, "JO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_e7c

    const-string v3, "JP"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_e88

    const-string v3, "KE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_e94

    const-string v3, "KG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_ea0

    const-string v3, "KH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_eac

    const-string v3, "KI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_eb8

    const-string v3, "KM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_ec4

    const-string v3, "KN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_ed0

    const-string v3, "KP"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_edc

    const-string v3, "KR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_ee8

    const-string v3, "KW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_ef4

    const-string v3, "KY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_f00

    const-string v3, "KZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_f0c

    const-string v3, "LA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_f18

    const-string v3, "LB"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_f24

    const-string v3, "LC"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_f30

    const-string v3, "LI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_f3c

    const-string v3, "LK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_f48

    const-string v3, "LR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_f54

    const-string v3, "LS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_f60

    const-string v3, "LT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_f6c

    const-string v3, "LU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_f78

    const-string v3, "LV"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_f84

    const-string v3, "LY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_f90

    const-string v3, "MA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_f9c

    const-string v3, "MC"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_fa8

    const-string v3, "MD"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_fb4

    const-string v3, "ME"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_fc0

    const-string v3, "MF"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_fcc

    const-string v3, "MG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_fd8

    const-string v3, "MH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_fe4

    const-string v3, "MK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_ff0

    const-string v3, "ML"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_ffc

    const-string v3, "MM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1008

    const-string v3, "MN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1014

    const-string v3, "MO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1020

    const-string v3, "MP"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_102c

    const-string v3, "MQ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1038

    const-string v3, "MR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1044

    const-string v3, "MS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1050

    const-string v3, "MT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_105c

    const-string v3, "MU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1068

    const-string v3, "MV"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1074

    const-string v3, "MW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1080

    const-string v3, "MX"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_108c

    const-string v3, "MY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1098

    const-string v3, "MZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_10a4

    const-string v3, "NA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_10b0

    const-string v3, "NC"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_10bc

    const-string v3, "NE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_10c8

    const-string v3, "NF"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_10d4

    const-string v3, "NG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_10e0

    const-string v3, "NI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_10ec

    const-string v3, "NL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_10f8

    const-string v3, "NO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1104

    const-string v3, "NP"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1110

    const-string v3, "NR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_111c

    const-string v3, "NU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1128

    const-string v3, "NZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1134

    const-string v3, "OM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1140

    const-string v3, "PA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_114c

    const-string v3, "PE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1158

    const-string v3, "PF"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1164

    const-string v3, "PG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1170

    const-string v3, "PH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_117c

    const-string v3, "PK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1188

    const-string v3, "PL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1194

    const-string v3, "PM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_11a0

    const-string v3, "PR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_11ac

    const-string v3, "PS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_11b8

    const-string v3, "PT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_11c4

    const-string v3, "PW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_11d0

    const-string v3, "PY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_11dc

    const-string v3, "QA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_11e8

    const-string v3, "RE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_11f4

    const-string v3, "RO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1200

    const-string v3, "RS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_120c

    const-string v3, "RU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1218

    const-string v3, "RW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1224

    const-string v3, "SA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1230

    const-string v3, "SB"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_123c

    const-string v3, "SC"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1248

    const-string v3, "SD"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1254

    const-string v3, "SE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1260

    const-string v3, "SG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_126c

    const-string v3, "SH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1278

    const-string v3, "SI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1284

    const-string v3, "SJ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1290

    const-string v3, "SK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_129c

    const-string v3, "SL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_12a8

    const-string v3, "SM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_12b4

    const-string v3, "SN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_12c0

    const-string v3, "SO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_12cc

    const-string v3, "SR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_12d8

    const-string v3, "SS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_12e4

    const-string v3, "ST"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_12f0

    const-string v3, "SV"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_12fc

    const-string v3, "SX"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1308

    const-string v3, "SY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1314

    const-string v3, "SZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1320

    const-string v3, "TC"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_132c

    const-string v3, "TD"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1338

    const-string v3, "TG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1344

    const-string v3, "TH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1350

    const-string v3, "TJ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_135c

    const-string v3, "TL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1368

    const-string v3, "TM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1374

    const-string v3, "TN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1380

    const-string v3, "TO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_138c

    const-string v3, "TR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1398

    const-string v3, "TT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_13a4

    const-string v3, "TV"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_13b0

    const-string v3, "TW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_13bc

    const-string v3, "TZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_13c8

    const-string v3, "UA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_13d4

    const-string v3, "UG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_13e0

    const-string v3, "US"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_13ec

    const-string v3, "UY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_13f8

    const-string v3, "UZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1404

    const-string v3, "VA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1410

    const-string v3, "VC"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_141c

    const-string v3, "VE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1428

    const-string v3, "VG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1434

    const-string v3, "VI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1440

    const-string v3, "VN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_144c

    const-string v3, "VU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1458

    const-string v3, "WS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1464

    const-string v3, "XK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1470

    const-string v3, "YE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_147c

    const-string v3, "YT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1488

    const-string v3, "ZA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    fill-array-data v2, :array_1494

    const-string v3, "ZM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v1, [I

    fill-array-data v1, :array_14a0

    const-string v2, "ZW"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    :array_96c
    .array-data 4
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_978
    .array-data 4
        0x1
        0x3
        0x4
        0x4
    .end array-data

    :array_984
    .array-data 4
        0x4
        0x4
        0x3
        0x2
    .end array-data

    :array_990
    .array-data 4
        0x3
        0x2
        0x1
        0x2
    .end array-data

    :array_99c
    .array-data 4
        0x1
        0x0
        0x0
        0x2
    .end array-data

    :array_9a8
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_9b4
    .array-data 4
        0x2
        0x2
        0x4
        0x3
    .end array-data

    :array_9c0
    .array-data 4
        0x2
        0x4
        0x2
        0x0
    .end array-data

    :array_9cc
    .array-data 4
        0x2
        0x3
        0x2
        0x3
    .end array-data

    :array_9d8
    .array-data 4
        0x3
        0x4
        0x4
        0x1
    .end array-data

    :array_9e4
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_9f0
    .array-data 4
        0x0
        0x3
        0x0
        0x0
    .end array-data

    :array_9fc
    .array-data 4
        0x1
        0x1
        0x0
        0x4
    .end array-data

    :array_a08
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_a14
    .array-data 4
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_a20
    .array-data 4
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_a2c
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_a38
    .array-data 4
        0x2
        0x1
        0x3
        0x2
    .end array-data

    :array_a44
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_a50
    .array-data 4
        0x4
        0x4
        0x4
        0x1
    .end array-data

    :array_a5c
    .array-data 4
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_a68
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data

    :array_a74
    .array-data 4
        0x4
        0x3
        0x4
        0x4
    .end array-data

    :array_a80
    .array-data 4
        0x4
        0x3
        0x4
        0x3
    .end array-data

    :array_a8c
    .array-data 4
        0x1
        0x0
        0x1
        0x2
    .end array-data

    :array_a98
    .array-data 4
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_aa4
    .array-data 4
        0x4
        0x3
        0x3
        0x3
    .end array-data

    :array_ab0
    .array-data 4
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_abc
    .array-data 4
        0x1
        0x1
        0x2
        0x4
    .end array-data

    :array_ac8
    .array-data 4
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_ad4
    .array-data 4
        0x1
        0x1
        0x0
        0x2
    .end array-data

    :array_ae0
    .array-data 4
        0x3
        0x0
        0x2
        0x1
    .end array-data

    :array_aec
    .array-data 4
        0x4
        0x4
        0x2
        0x3
    .end array-data

    :array_af8
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_b04
    .array-data 4
        0x2
        0x3
        0x3
        0x1
    .end array-data

    :array_b10
    .array-data 4
        0x0
        0x2
        0x2
        0x3
    .end array-data

    :array_b1c
    .array-data 4
        0x4
        0x4
        0x2
        0x1
    .end array-data

    :array_b28
    .array-data 4
        0x4
        0x4
        0x3
        0x3
    .end array-data

    :array_b34
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_b40
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_b4c
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_b58
    .array-data 4
        0x2
        0x4
        0x2
        0x0
    .end array-data

    :array_b64
    .array-data 4
        0x2
        0x2
        0x2
        0x3
    .end array-data

    :array_b70
    .array-data 4
        0x3
        0x4
        0x3
        0x1
    .end array-data

    :array_b7c
    .array-data 4
        0x2
        0x0
        0x1
        0x2
    .end array-data

    :array_b88
    .array-data 4
        0x2
        0x3
        0x2
        0x1
    .end array-data

    :array_b94
    .array-data 4
        0x2
        0x2
        0x4
        0x4
    .end array-data

    :array_ba0
    .array-data 4
        0x4
        0x4
        0x4
        0x1
    .end array-data

    :array_bac
    .array-data 4
        0x2
        0x2
        0x2
        0x4
    .end array-data

    :array_bb8
    .array-data 4
        0x1
        0x1
        0x0
        0x0
    .end array-data

    :array_bc4
    .array-data 4
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_bd0
    .array-data 4
        0x1
        0x1
        0x0
        0x0
    .end array-data

    :array_bdc
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_be8
    .array-data 4
        0x0
        0x2
        0x2
        0x2
    .end array-data

    :array_bf4
    .array-data 4
        0x3
        0x4
        0x4
        0x0
    .end array-data

    :array_c00
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_c0c
    .array-data 4
        0x2
        0x0
        0x3
        0x4
    .end array-data

    :array_c18
    .array-data 4
        0x3
        0x3
        0x4
        0x4
    .end array-data

    :array_c24
    .array-data 4
        0x3
        0x3
        0x4
        0x4
    .end array-data

    :array_c30
    .array-data 4
        0x2
        0x3
        0x3
        0x1
    .end array-data

    :array_c3c
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_c48
    .array-data 4
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_c54
    .array-data 4
        0x2
        0x0
        0x2
        0x3
    .end array-data

    :array_c60
    .array-data 4
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_c6c
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_c78
    .array-data 4
        0x4
        0x4
        0x4
        0x0
    .end array-data

    :array_c84
    .array-data 4
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_c90
    .array-data 4
        0x3
        0x2
        0x3
        0x3
    .end array-data

    :array_c9c
    .array-data 4
        0x3
        0x4
        0x2
        0x1
    .end array-data

    :array_ca8
    .array-data 4
        0x4
        0x2
        0x4
        0x0
    .end array-data

    :array_cb4
    .array-data 4
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_cc0
    .array-data 4
        0x1
        0x0
        0x2
        0x1
    .end array-data

    :array_ccc
    .array-data 4
        0x3
        0x3
        0x2
        0x1
    .end array-data

    :array_cd8
    .array-data 4
        0x0
        0x1
        0x3
        0x2
    .end array-data

    :array_ce4
    .array-data 4
        0x2
        0x0
        0x3
        0x0
    .end array-data

    :array_cf0
    .array-data 4
        0x1
        0x1
        0x0
        0x3
    .end array-data

    :array_cfc
    .array-data 4
        0x1
        0x2
        0x4
        0x4
    .end array-data

    :array_d08
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_d14
    .array-data 4
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_d20
    .array-data 4
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_d2c
    .array-data 4
        0x2
        0x4
        0x1
        0x4
    .end array-data

    :array_d38
    .array-data 4
        0x4
        0x3
        0x3
        0x0
    .end array-data

    :array_d44
    .array-data 4
        0x4
        0x4
        0x3
        0x4
    .end array-data

    :array_d50
    .array-data 4
        0x2
        0x2
        0x1
        0x3
    .end array-data

    :array_d5c
    .array-data 4
        0x4
        0x4
        0x3
        0x1
    .end array-data

    :array_d68
    .array-data 4
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_d74
    .array-data 4
        0x3
        0x2
        0x3
        0x4
    .end array-data

    :array_d80
    .array-data 4
        0x1
        0x0
        0x4
        0x4
    .end array-data

    :array_d8c
    .array-data 4
        0x4
        0x4
        0x4
        0x0
    .end array-data

    :array_d98
    .array-data 4
        0x3
        0x4
        0x1
        0x0
    .end array-data

    :array_da4
    .array-data 4
        0x0
        0x2
        0x3
        0x4
    .end array-data

    :array_db0
    .array-data 4
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_dbc
    .array-data 4
        0x1
        0x0
        0x0
        0x2
    .end array-data

    :array_dc8
    .array-data 4
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_dd4
    .array-data 4
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_de0
    .array-data 4
        0x2
        0x3
        0x3
        0x4
    .end array-data

    :array_dec
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_df8
    .array-data 4
        0x0
        0x1
        0x1
        0x3
    .end array-data

    :array_e04
    .array-data 4
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_e10
    .array-data 4
        0x2
        0x3
        0x3
        0x4
    .end array-data

    :array_e1c
    .array-data 4
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_e28
    .array-data 4
        0x3
        0x3
        0x4
        0x3
    .end array-data

    :array_e34
    .array-data 4
        0x3
        0x2
        0x4
        0x4
    .end array-data

    :array_e40
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_e4c
    .array-data 4
        0x1
        0x0
        0x1
        0x3
    .end array-data

    :array_e58
    .array-data 4
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_e64
    .array-data 4
        0x3
        0x3
        0x3
        0x2
    .end array-data

    :array_e70
    .array-data 4
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_e7c
    .array-data 4
        0x0
        0x1
        0x1
        0x2
    .end array-data

    :array_e88
    .array-data 4
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_e94
    .array-data 4
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_ea0
    .array-data 4
        0x1
        0x0
        0x4
        0x4
    .end array-data

    :array_eac
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_eb8
    .array-data 4
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_ec4
    .array-data 4
        0x1
        0x0
        0x1
        0x3
    .end array-data

    :array_ed0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_edc
    .array-data 4
        0x0
        0x4
        0x0
        0x2
    .end array-data

    :array_ee8
    .array-data 4
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_ef4
    .array-data 4
        0x1
        0x1
        0x0
        0x2
    .end array-data

    :array_f00
    .array-data 4
        0x1
        0x2
        0x2
        0x3
    .end array-data

    :array_f0c
    .array-data 4
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_f18
    .array-data 4
        0x3
        0x2
        0x0
        0x0
    .end array-data

    :array_f24
    .array-data 4
        0x2
        0x2
        0x1
        0x0
    .end array-data

    :array_f30
    .array-data 4
        0x0
        0x0
        0x1
        0x2
    .end array-data

    :array_f3c
    .array-data 4
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_f48
    .array-data 4
        0x3
        0x4
        0x3
        0x1
    .end array-data

    :array_f54
    .array-data 4
        0x3
        0x3
        0x2
        0x0
    .end array-data

    :array_f60
    .array-data 4
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_f6c
    .array-data 4
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_f78
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_f84
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_f90
    .array-data 4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_f9c
    .array-data 4
        0x1
        0x0
        0x1
        0x0
    .end array-data

    :array_fa8
    .array-data 4
        0x1
        0x1
        0x0
        0x0
    .end array-data

    :array_fb4
    .array-data 4
        0x1
        0x2
        0x2
        0x3
    .end array-data

    :array_fc0
    .array-data 4
        0x1
        0x4
        0x3
        0x3
    .end array-data

    :array_fcc
    .array-data 4
        0x3
        0x4
        0x1
        0x2
    .end array-data

    :array_fd8
    .array-data 4
        0x4
        0x0
        0x2
        0x3
    .end array-data

    :array_fe4
    .array-data 4
        0x1
        0x0
        0x0
        0x1
    .end array-data

    :array_ff0
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_ffc
    .array-data 4
        0x2
        0x3
        0x1
        0x2
    .end array-data

    :array_1008
    .array-data 4
        0x2
        0x2
        0x2
        0x4
    .end array-data

    :array_1014
    .array-data 4
        0x0
        0x1
        0x4
        0x4
    .end array-data

    :array_1020
    .array-data 4
        0x0
        0x0
        0x4
        0x4
    .end array-data

    :array_102c
    .array-data 4
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_1038
    .array-data 4
        0x4
        0x2
        0x4
        0x2
    .end array-data

    :array_1044
    .array-data 4
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_1050
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_105c
    .array-data 4
        0x2
        0x2
        0x4
        0x4
    .end array-data

    :array_1068
    .array-data 4
        0x4
        0x2
        0x0
        0x1
    .end array-data

    :array_1074
    .array-data 4
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_1080
    .array-data 4
        0x2
        0x4
        0x3
        0x1
    .end array-data

    :array_108c
    .array-data 4
        0x2
        0x3
        0x3
        0x3
    .end array-data

    :array_1098
    .array-data 4
        0x3
        0x3
        0x2
        0x4
    .end array-data

    :array_10a4
    .array-data 4
        0x4
        0x2
        0x1
        0x1
    .end array-data

    :array_10b0
    .array-data 4
        0x2
        0x1
        0x3
        0x3
    .end array-data

    :array_10bc
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_10c8
    .array-data 4
        0x0
        0x2
        0x2
        0x2
    .end array-data

    :array_10d4
    .array-data 4
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_10e0
    .array-data 4
        0x3
        0x4
        0x3
        0x3
    .end array-data

    :array_10ec
    .array-data 4
        0x0
        0x1
        0x3
        0x2
    .end array-data

    :array_10f8
    .array-data 4
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_1104
    .array-data 4
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_1110
    .array-data 4
        0x4
        0x3
        0x4
        0x1
    .end array-data

    :array_111c
    .array-data 4
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_1128
    .array-data 4
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_1134
    .array-data 4
        0x2
        0x2
        0x1
        0x3
    .end array-data

    :array_1140
    .array-data 4
        0x1
        0x3
        0x2
        0x3
    .end array-data

    :array_114c
    .array-data 4
        0x2
        0x2
        0x4
        0x4
    .end array-data

    :array_1158
    .array-data 4
        0x2
        0x2
        0x0
        0x1
    .end array-data

    :array_1164
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_1170
    .array-data 4
        0x3
        0x0
        0x4
        0x4
    .end array-data

    :array_117c
    .array-data 4
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_1188
    .array-data 4
        0x1
        0x0
        0x1
        0x3
    .end array-data

    :array_1194
    .array-data 4
        0x0
        0x2
        0x2
        0x3
    .end array-data

    :array_11a0
    .array-data 4
        0x2
        0x3
        0x4
        0x3
    .end array-data

    :array_11ac
    .array-data 4
        0x2
        0x3
        0x0
        0x4
    .end array-data

    :array_11b8
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_11c4
    .array-data 4
        0x3
        0x2
        0x3
        0x0
    .end array-data

    :array_11d0
    .array-data 4
        0x2
        0x1
        0x3
        0x3
    .end array-data

    :array_11dc
    .array-data 4
        0x2
        0x3
        0x1
        0x2
    .end array-data

    :array_11e8
    .array-data 4
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_11f4
    .array-data 4
        0x0
        0x1
        0x1
        0x3
    .end array-data

    :array_1200
    .array-data 4
        0x1
        0x1
        0x0
        0x0
    .end array-data

    :array_120c
    .array-data 4
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_1218
    .array-data 4
        0x3
        0x4
        0x3
        0x1
    .end array-data

    :array_1224
    .array-data 4
        0x3
        0x2
        0x2
        0x3
    .end array-data

    :array_1230
    .array-data 4
        0x4
        0x4
        0x3
        0x0
    .end array-data

    :array_123c
    .array-data 4
        0x4
        0x2
        0x0
        0x1
    .end array-data

    :array_1248
    .array-data 4
        0x3
        0x4
        0x4
        0x4
    .end array-data

    :array_1254
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1260
    .array-data 4
        0x1
        0x2
        0x3
        0x3
    .end array-data

    :array_126c
    .array-data 4
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_1278
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_1284
    .array-data 4
        0x3
        0x2
        0x0
        0x2
    .end array-data

    :array_1290
    .array-data 4
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_129c
    .array-data 4
        0x4
        0x3
        0x2
        0x4
    .end array-data

    :array_12a8
    .array-data 4
        0x1
        0x0
        0x1
        0x1
    .end array-data

    :array_12b4
    .array-data 4
        0x4
        0x4
        0x4
        0x2
    .end array-data

    :array_12c0
    .array-data 4
        0x4
        0x4
        0x4
        0x3
    .end array-data

    :array_12cc
    .array-data 4
        0x3
        0x2
        0x2
        0x3
    .end array-data

    :array_12d8
    .array-data 4
        0x4
        0x3
        0x4
        0x2
    .end array-data

    :array_12e4
    .array-data 4
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_12f0
    .array-data 4
        0x2
        0x3
        0x2
        0x3
    .end array-data

    :array_12fc
    .array-data 4
        0x2
        0x4
        0x2
        0x0
    .end array-data

    :array_1308
    .array-data 4
        0x4
        0x4
        0x2
        0x0
    .end array-data

    :array_1314
    .array-data 4
        0x3
        0x4
        0x1
        0x1
    .end array-data

    :array_1320
    .array-data 4
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_132c
    .array-data 4
        0x4
        0x4
        0x4
        0x3
    .end array-data

    :array_1338
    .array-data 4
        0x3
        0x2
        0x2
        0x0
    .end array-data

    :array_1344
    .array-data 4
        0x1
        0x3
        0x4
        0x4
    .end array-data

    :array_1350
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_135c
    .array-data 4
        0x4
        0x2
        0x4
        0x4
    .end array-data

    :array_1368
    .array-data 4
        0x4
        0x1
        0x3
        0x3
    .end array-data

    :array_1374
    .array-data 4
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_1380
    .array-data 4
        0x2
        0x3
        0x3
        0x1
    .end array-data

    :array_138c
    .array-data 4
        0x1
        0x2
        0x0
        0x2
    .end array-data

    :array_1398
    .array-data 4
        0x2
        0x1
        0x1
        0x0
    .end array-data

    :array_13a4
    .array-data 4
        0x4
        0x2
        0x2
        0x4
    .end array-data

    :array_13b0
    .array-data 4
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_13bc
    .array-data 4
        0x3
        0x3
        0x3
        0x2
    .end array-data

    :array_13c8
    .array-data 4
        0x0
        0x2
        0x1
        0x3
    .end array-data

    :array_13d4
    .array-data 4
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_13e0
    .array-data 4
        0x0
        0x1
        0x3
        0x3
    .end array-data

    :array_13ec
    .array-data 4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_13f8
    .array-data 4
        0x4
        0x3
        0x2
        0x4
    .end array-data

    :array_1404
    .array-data 4
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_1410
    .array-data 4
        0x2
        0x0
        0x3
        0x2
    .end array-data

    :array_141c
    .array-data 4
        0x3
        0x4
        0x4
        0x3
    .end array-data

    :array_1428
    .array-data 4
        0x3
        0x1
        0x3
        0x4
    .end array-data

    :array_1434
    .array-data 4
        0x1
        0x0
        0x2
        0x4
    .end array-data

    :array_1440
    .array-data 4
        0x0
        0x2
        0x4
        0x4
    .end array-data

    :array_144c
    .array-data 4
        0x4
        0x1
        0x3
        0x2
    .end array-data

    :array_1458
    .array-data 4
        0x3
        0x2
        0x3
        0x0
    .end array-data

    :array_1464
    .array-data 4
        0x1
        0x2
        0x1
        0x0
    .end array-data

    :array_1470
    .array-data 4
        0x4
        0x4
        0x4
        0x2
    .end array-data

    :array_147c
    .array-data 4
        0x3
        0x1
        0x1
        0x2
    .end array-data

    :array_1488
    .array-data 4
        0x2
        0x3
        0x1
        0x2
    .end array-data

    :array_1494
    .array-data 4
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_14a0
    .array-data 4
        0x3
        0x3
        0x2
        0x1
    .end array-data
.end method

.method private notifyBandwidthSample(IJJ)V
    .registers 14

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->eventDispatcher:Lcom/google/android/exoplayer2/util/EventDispatcher;

    new-instance v7, Lcom/google/android/exoplayer2/upstream/a;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/upstream/a;-><init>(IJJ)V

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/EventDispatcher;->dispatch(Lcom/google/android/exoplayer2/util/EventDispatcher$Event;)V

    return-void
.end method


# virtual methods
.method public addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->eventDispatcher:Lcom/google/android/exoplayer2/util/EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/EventDispatcher;->addListener(Landroid/os/Handler;Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized getBitrateEstimate()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTransferListener()Lcom/google/android/exoplayer2/upstream/TransferListener;
    .registers 1

    return-object p0
.end method

.method public declared-synchronized onBytesTransferred(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ZI)V
    .registers 5

    monitor-enter p0

    if-nez p3, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    int-to-long p3, p4

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onTransferEnd(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V
    .registers 14

    monitor-enter p0

    if-nez p3, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    const/4 p2, 0x1

    if-lez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    sub-long v2, v0, v2

    long-to-int v5, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    int-to-long v6, v5

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    if-lez v5, :cond_5b

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    const-wide/16 v8, 0x1f40

    mul-long v2, v2, v8

    div-long/2addr v2, v6

    long-to-float p1, v2

    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->slidingPercentile:Lcom/google/android/exoplayer2/util/SlidingPercentile;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p3, v2, p1}, Lcom/google/android/exoplayer2/util/SlidingPercentile;->addSample(IF)V

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    const-wide/16 v6, 0x7d0

    cmp-long p1, v2, v6

    if-gez p1, :cond_50

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    const-wide/32 v6, 0x80000

    cmp-long p1, v2, v6

    if-ltz p1, :cond_5b

    :cond_50
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->slidingPercentile:Lcom/google/android/exoplayer2/util/SlidingPercentile;

    const/high16 p3, 0x3f000000    # 0.5f

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/util/SlidingPercentile;->getPercentile(F)F

    move-result p1

    float-to-long v2, p1

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    :cond_5b
    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->notifyBandwidthSample(IJJ)V

    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    if-lez p1, :cond_6c

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    :cond_6c
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J
    :try_end_70
    .catchall {:try_start_5 .. :try_end_70} :catchall_72

    monitor-exit p0

    return-void

    :catchall_72
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onTransferInitializing(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V
    .registers 4

    return-void
.end method

.method public declared-synchronized onTransferStart(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V
    .registers 4

    monitor-enter p0

    if-nez p3, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    :cond_11
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeEventListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->eventDispatcher:Lcom/google/android/exoplayer2/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.exoplayer2.upstream.DefaultBandwidthMeter.AnonymousClass1 (com.google.android.exoplayer2.upstream.DefaultBandwidthMeter$1)
.class synthetic Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.exoplayer2.upstream.DefaultBandwidthMeter.Builder (com.google.android.exoplayer2.upstream.DefaultBandwidthMeter$Builder)
.class public final Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final context:Landroid/content/Context;

.field private eventHandler:Landroid/os/Handler;

.field private eventListener:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;

.field private initialBitrateEstimates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private slidingWindowMaxWeight:I


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->getInitialBitrateEstimatesForCountry(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Landroid/util/SparseArray;

    const/16 p1, 0x7d0

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->slidingWindowMaxWeight:I

    sget-object p1, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    return-void
.end method

.method private static getCountryGroupIndices(Ljava/lang/String;)[I
    .registers 2

    sget-object v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_COUNTRY_GROUPS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_10

    const/4 p0, 0x4

    new-array p0, p0, [I

    fill-array-data p0, :array_12

    :cond_10
    return-object p0

    nop

    :array_12
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method private static getInitialBitrateEstimatesForCountry(Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->getCountryGroupIndices(Ljava/lang/String;)[I

    move-result-object p0

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const-wide/32 v1, 0xf4240

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:[J

    aget v3, p0, v2

    aget-wide v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_2G:[J

    const/4 v4, 0x1

    aget v4, p0, v4

    aget-wide v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_3G:[J

    aget v3, p0, v3

    aget-wide v5, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_4G:[J

    aget v3, p0, v4

    aget-wide v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:[J

    aget p0, p0, v2

    aget-wide v2, v1, p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
    .registers 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :cond_19
    new-instance v7, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->slidingWindowMaxWeight:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>(JILcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$1;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_33

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->eventListener:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    if-eqz v1, :cond_33

    invoke-virtual {v7, v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    :cond_33
    return-object v7
.end method

.method public setClock(Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    return-object p0
.end method

.method public setEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    .registers 4

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->eventHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->eventListener:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    return-object p0
.end method

.method public setInitialBitrateEstimate(IJ)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Landroid/util/SparseArray;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setInitialBitrateEstimate(J)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-object p0
.end method

.method public setInitialBitrateEstimate(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    .registers 2

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->toUpperInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->getInitialBitrateEstimatesForCountry(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Landroid/util/SparseArray;

    return-object p0
.end method

.method public setSlidingWindowMaxWeight(I)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->slidingWindowMaxWeight:I

    return-object p0
.end method

###### Class com.google.android.exoplayer2.upstream.a (com.google.android.exoplayer2.upstream.a)
.class public final synthetic Lcom/google/android/exoplayer2/upstream/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/EventDispatcher$Event;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:J

.field private final synthetic c:J


# direct methods
.method public synthetic constructor <init>(IJJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/a;->a:I

    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/a;->b:J

    iput-wide p4, p0, Lcom/google/android/exoplayer2/upstream/a;->c:J

    return-void
.end method


# virtual methods
.method public final sendTo(Ljava/lang/Object;)V
    .registers 8

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/a;->a:I

    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/a;->b:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/a;->c:J

    move-object v5, p1

    check-cast v5, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->a(IJJLcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    return-void
.end method
