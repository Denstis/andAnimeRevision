###### Class com.google.android.gms.internal.ads.zzdmm (com.google.android.gms.internal.ads.zzdmm)
.class public final Lcom/google/android/gms/internal/ads/zzdmm;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdmm;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdmm;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length v0, p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdmo;

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdmo;-><init>(I[B)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzdmo;->zzb([BIIZ)Z

    move-result p0

    if-eqz p0, :cond_29

    iget p0, v1, Lcom/google/android/gms/internal/ads/zzdml;->zzhbk:I

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzdml;->zzhbj:[B

    array-length v1, v0

    if-ne p0, v1, :cond_23

    return-object v0

    :cond_23
    new-array v1, p0, [B

    invoke-static {v0, v2, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad base-64"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
