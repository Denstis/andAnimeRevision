###### Class com.google.android.gms.internal.ads.zzdus (com.google.android.gms.internal.ads.zzdus)
.class public Lcom/google/android/gms/internal/ads/zzdus;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected volatile zzhrh:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzhrh:I

    return-void
.end method

.method public static final zzb(Lcom/google/android/gms/internal/ads/zzdus;)[B
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdus;->zzazu()I

    move-result v0

    new-array v0, v0, [B

    array-length v1, v0

    const/4 v2, 0x0

    :try_start_8
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzduj;->zzp([BII)Lcom/google/android/gms/internal/ads/zzduj;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzdus;->zza(Lcom/google/android/gms/internal/ads/zzduj;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzduj;->zzayv()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdus;->zzbci()Lcom/google/android/gms/internal/ads/zzdus;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdur;->zza(Lcom/google/android/gms/internal/ads/zzdus;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/ads/zzduj;)V
    .registers 2

    return-void
.end method

.method public final zzazu()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdus;->zznx()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzhrh:I

    return v0
.end method

.method public zzbci()Lcom/google/android/gms/internal/ads/zzdus;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdus;

    return-object v0
.end method

.method protected zznx()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
