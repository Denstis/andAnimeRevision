###### Class com.google.android.gms.internal.ads.zzhy (com.google.android.gms.internal.ads.zzhy)
.class public final Lcom/google/android/gms/internal/ads/zzhy;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zzakf:[I

.field private static final zzakg:[I

.field private static final zzakh:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_1a

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhy;->zzakf:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhy;->zzakg:[I

    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_62

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhy;->zzakh:[I

    return-void

    :array_1a
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    :array_3e
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    :array_62
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data
.end method

.method public static zzj(Ljava/nio/ByteBuffer;)I
    .registers 3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xfc

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x1

    shl-int/lit8 p0, p0, 0x5

    return p0
.end method
