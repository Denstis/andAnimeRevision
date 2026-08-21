###### Class com.google.android.gms.internal.ads.zzccu (com.google.android.gms.internal.ads.zzccu)
.class public Lcom/google/android/gms/internal/ads/zzccu;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field private final errorCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzccu;->errorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzccu;->errorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzccu;->errorCode:I

    return-void
.end method

.method public static zzd(Ljava/lang/Throwable;)I
    .registers 2

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzccu;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/google/android/gms/internal/ads/zzccu;

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzccu;->errorCode:I

    return p0

    :cond_9
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzavp;

    if-eqz v0, :cond_14

    check-cast p0, Lcom/google/android/gms/internal/ads/zzavp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzavp;->getErrorCode()I

    move-result p0

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzccu;->errorCode:I

    return v0
.end method
