###### Class com.google.android.gms.internal.ads.zzep (com.google.android.gms.internal.ads.zzep)
.class final synthetic Lcom/google/android/gms/internal/ads/zzep;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final synthetic zzzx:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbm;->values()[Lcom/google/android/gms/internal/ads/zzbm;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzep;->zzzx:[I

    :try_start_9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzep;->zzzx:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbm;->zzef:Lcom/google/android/gms/internal/ads/zzbm;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzep;->zzzx:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbm;->zzee:Lcom/google/android/gms/internal/ads/zzbm;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
