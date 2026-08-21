###### Class com.google.android.gms.internal.ads.zzig (com.google.android.gms.internal.ads.zzig)
.class public final Lcom/google/android/gms/internal/ads/zzig;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public iv:[B

.field private key:[B

.field private mode:I

.field public numBytesOfClearData:[I

.field public numBytesOfEncryptedData:[I

.field private numSubSamples:I

.field private zzalv:I

.field private zzalw:I

.field private final zzalx:Landroid/media/MediaCodec$CryptoInfo;

.field private final zzaly:Lcom/google/android/gms/internal/ads/zzii;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_10

    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    goto :goto_11

    :cond_10
    move-object v0, v1

    :goto_11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzalx:Landroid/media/MediaCodec$CryptoInfo;

    sget v0, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_21

    new-instance v0, Lcom/google/android/gms/internal/ads/zzii;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzig;->zzalx:Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzii;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/google/android/gms/internal/ads/zzij;)V

    goto :goto_22

    :cond_21
    move-object v0, v1

    :goto_22
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzaly:Lcom/google/android/gms/internal/ads/zzii;

    return-void
.end method


# virtual methods
.method public final set(I[I[I[B[BI)V
    .registers 7

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzig;->numSubSamples:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzig;->numBytesOfClearData:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzig;->numBytesOfEncryptedData:[I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzig;->key:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzig;->iv:[B

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzig;->mode:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzalv:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzalw:I

    sget p2, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 p3, 0x10

    if-lt p2, p3, :cond_3a

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzig;->zzalx:Landroid/media/MediaCodec$CryptoInfo;

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzig;->numSubSamples:I

    iput p4, p3, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzig;->numBytesOfClearData:[I

    iput-object p4, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzig;->numBytesOfEncryptedData:[I

    iput-object p4, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzig;->key:[B

    iput-object p4, p3, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzig;->iv:[B

    iput-object p4, p3, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzig;->mode:I

    iput p4, p3, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    const/16 p3, 0x18

    if-lt p2, p3, :cond_3a

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzig;->zzaly:Lcom/google/android/gms/internal/ads/zzii;

    invoke-static {p2, p1, p1}, Lcom/google/android/gms/internal/ads/zzii;->zza(Lcom/google/android/gms/internal/ads/zzii;II)V

    :cond_3a
    return-void
.end method

.method public final zzft()Landroid/media/MediaCodec$CryptoInfo;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzalx:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method
