###### Class com.google.android.gms.internal.ads.zzdot (com.google.android.gms.internal.ads.zzdot)
.class final synthetic Lcom/google/android/gms/internal/ads/zzdot;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final synthetic zzhez:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdob;->values()[Lcom/google/android/gms/internal/ads/zzdob;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdot;->zzhez:[I

    :try_start_9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdot;->zzhez:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdob;->zzhek:Lcom/google/android/gms/internal/ads/zzdob;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdot;->zzhez:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdob;->zzhel:Lcom/google/android/gms/internal/ads/zzdob;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdot;->zzhez:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdob;->zzhem:Lcom/google/android/gms/internal/ads/zzdob;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method
