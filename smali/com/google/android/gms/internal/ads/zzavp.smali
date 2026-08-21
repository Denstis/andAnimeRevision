###### Class com.google.android.gms.internal.ads.zzavp (com.google.android.gms.internal.ads.zzavp)
.class public final Lcom/google/android/gms/internal/ads/zzavp;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field private final errorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzavp;->errorCode:I

    return-void
.end method


# virtual methods
.method public final getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavp;->errorCode:I

    return v0
.end method
