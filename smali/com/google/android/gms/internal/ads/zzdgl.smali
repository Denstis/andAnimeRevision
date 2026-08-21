###### Class com.google.android.gms.internal.ads.zzdgl (com.google.android.gms.internal.ads.zzdgl)
.class public final Lcom/google/android/gms/internal/ads/zzdgl;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final zzgtc:Lcom/google/android/gms/internal/ads/zzdkl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzgtd:Lcom/google/android/gms/internal/ads/zzdkl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zzgte:Lcom/google/android/gms/internal/ads/zzdkl;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdkl;->zzavk()Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    const-string v1, "TINK_MAC_1_0_0"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkl$zza;->zzhe(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    const-string v1, "TinkMac"

    const-string v2, "Mac"

    const-string v3, "HmacKey"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdee;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdju;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkl$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdju;)Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdkl;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdgl;->zzgtc:Lcom/google/android/gms/internal/ads/zzdkl;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdkl;->zzavk()Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdgl;->zzgtc:Lcom/google/android/gms/internal/ads/zzdkl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zza(Lcom/google/android/gms/internal/ads/zzdqw;)Lcom/google/android/gms/internal/ads/zzdqw$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdkl$zza;

    const-string v1, "TINK_MAC_1_1_0"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkl$zza;->zzhe(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdkl;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdgl;->zzgtd:Lcom/google/android/gms/internal/ads/zzdkl;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdkl;->zzavk()Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdgl;->zzgtc:Lcom/google/android/gms/internal/ads/zzdkl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zza(Lcom/google/android/gms/internal/ads/zzdqw;)Lcom/google/android/gms/internal/ads/zzdqw$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdkl$zza;

    const-string v1, "TINK_MAC"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkl$zza;->zzhe(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdkl;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdgl;->zzgte:Lcom/google/android/gms/internal/ads/zzdkl;

    :try_start_56
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdgl;->zzapz()V
    :try_end_59
    .catch Ljava/security/GeneralSecurityException; {:try_start_56 .. :try_end_59} :catch_5a

    return-void

    :catch_5a
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zzapz()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdgi;-><init>()V

    const-string v1, "TinkMac"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdey;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdef;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdgl;->zzgte:Lcom/google/android/gms/internal/ads/zzdkl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdee;->zza(Lcom/google/android/gms/internal/ads/zzdkl;)V

    return-void
.end method
