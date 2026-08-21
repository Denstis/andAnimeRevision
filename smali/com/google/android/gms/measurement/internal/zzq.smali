###### Class com.google.android.gms.measurement.internal.zzq (com.google.android.gms.measurement.internal.zzq)
.class final synthetic Lcom/google/android/gms/measurement/internal/zzq;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final synthetic zza:[I

.field static final synthetic zzb:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbj$zzd$zza;->values()[Lcom/google/android/gms/internal/measurement/zzbj$zzd$zza;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzq;->zzb:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzq;->zzb:[I

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzbj$zzd$zza;->zzb:Lcom/google/android/gms/internal/measurement/zzbj$zzd$zza;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzq;->zzb:[I

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzbj$zzd$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzbj$zzd$zza;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzq;->zzb:[I

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzbj$zzd$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzbj$zzd$zza;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    const/4 v3, 0x4

    :try_start_2b
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzq;->zzb:[I

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzbj$zzd$zza;->zze:Lcom/google/android/gms/internal/measurement/zzbj$zzd$zza;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_35

    :catch_35
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;->values()[Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/google/android/gms/measurement/internal/zzq;->zza:[I

    :try_start_3e
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzq;->zza:[I

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;->zzb:Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_48} :catch_48

    :catch_48
    :try_start_48
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzq;->zza:[I

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_52} :catch_52

    :catch_52
    :try_start_52
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzq;->zza:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;->zzd:Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5c} :catch_5c

    :catch_5c
    :try_start_5c
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzq;->zza:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;->zze:Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_66} :catch_66

    :catch_66
    :try_start_66
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzq;->zza:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_71} :catch_71

    :catch_71
    :try_start_71
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzq;->zza:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;->zzg:Lcom/google/android/gms/internal/measurement/zzbj$zzf$zzb;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_7c} :catch_7c

    :catch_7c
    return-void
.end method
