###### Class com.google.android.gms.internal.ads.zzdfd (com.google.android.gms.internal.ads.zzdfd)
.class public final Lcom/google/android/gms/internal/ads/zzdfd;
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
    .registers 12

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdkl;->zzavk()Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdgl;->zzgtc:Lcom/google/android/gms/internal/ads/zzdkl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zza(Lcom/google/android/gms/internal/ads/zzdqw;)Lcom/google/android/gms/internal/ads/zzdqw$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdkl$zza;

    const-string v1, "AesCtrHmacAeadKey"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "Aead"

    const-string v5, "TinkAead"

    invoke-static {v5, v4, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdee;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdju;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzdkl$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdju;)Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    const-string v6, "AesEaxKey"

    invoke-static {v5, v4, v6, v3, v2}, Lcom/google/android/gms/internal/ads/zzdee;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdju;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzdkl$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdju;)Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    const-string v7, "AesGcmKey"

    invoke-static {v5, v4, v7, v3, v2}, Lcom/google/android/gms/internal/ads/zzdee;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdju;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzdkl$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdju;)Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    const-string v8, "ChaCha20Poly1305Key"

    invoke-static {v5, v4, v8, v3, v2}, Lcom/google/android/gms/internal/ads/zzdee;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdju;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzdkl$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdju;)Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    const-string v9, "KmsAeadKey"

    invoke-static {v5, v4, v9, v3, v2}, Lcom/google/android/gms/internal/ads/zzdee;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdju;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzdkl$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdju;)Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    const-string v10, "KmsEnvelopeAeadKey"

    invoke-static {v5, v4, v10, v3, v2}, Lcom/google/android/gms/internal/ads/zzdee;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdju;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzdkl$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdju;)Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    const-string v11, "TINK_AEAD_1_0_0"

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzdkl$zza;->zzhe(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdkl;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdfd;->zzgtc:Lcom/google/android/gms/internal/ads/zzdkl;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdkl;->zzavk()Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    sget-object v11, Lcom/google/android/gms/internal/ads/zzdfd;->zzgtc:Lcom/google/android/gms/internal/ads/zzdkl;

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zza(Lcom/google/android/gms/internal/ads/zzdqw;)Lcom/google/android/gms/internal/ads/zzdqw$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdkl$zza;

    const-string v11, "TINK_AEAD_1_1_0"

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzdkl$zza;->zzhe(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdkl;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdfd;->zzgtd:Lcom/google/android/gms/internal/ads/zzdkl;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdkl;->zzavk()Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    sget-object v11, Lcom/google/android/gms/internal/ads/zzdgl;->zzgte:Lcom/google/android/gms/internal/ads/zzdkl;

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zza(Lcom/google/android/gms/internal/ads/zzdqw;)Lcom/google/android/gms/internal/ads/zzdqw$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdkl$zza;

    invoke-static {v5, v4, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdee;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdju;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkl$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdju;)Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    invoke-static {v5, v4, v6, v3, v2}, Lcom/google/android/gms/internal/ads/zzdee;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdju;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkl$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdju;)Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    invoke-static {v5, v4, v7, v3, v2}, Lcom/google/android/gms/internal/ads/zzdee;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdju;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkl$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdju;)Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    invoke-static {v5, v4, v8, v3, v2}, Lcom/google/android/gms/internal/ads/zzdee;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdju;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkl$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdju;)Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    invoke-static {v5, v4, v9, v3, v2}, Lcom/google/android/gms/internal/ads/zzdee;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdju;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkl$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdju;)Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    invoke-static {v5, v4, v10, v3, v2}, Lcom/google/android/gms/internal/ads/zzdee;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdju;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkl$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdju;)Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    const-string v1, "XChaCha20Poly1305Key"

    invoke-static {v5, v4, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdee;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdju;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkl$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdju;)Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    const-string v1, "TINK_AEAD"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkl$zza;->zzhe(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdkl$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdkl;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdfd;->zzgte:Lcom/google/android/gms/internal/ads/zzdkl;

    :try_start_ca
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdfd;->zzapz()V
    :try_end_cd
    .catch Ljava/security/GeneralSecurityException; {:try_start_ca .. :try_end_cd} :catch_ce

    return-void

    :catch_ce
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zzapz()V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdgl;->zzapz()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdfe;-><init>()V

    const-string v1, "TinkAead"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdey;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdef;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdfd;->zzgte:Lcom/google/android/gms/internal/ads/zzdkl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdee;->zza(Lcom/google/android/gms/internal/ads/zzdkl;)V

    return-void
.end method
