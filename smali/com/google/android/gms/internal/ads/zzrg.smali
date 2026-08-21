###### Class com.google.android.gms.internal.ads.zzrg (com.google.android.gms.internal.ads.zzrg)
.class public final Lcom/google/android/gms/internal/ads/zzrg;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final orientation:I
    .annotation build Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdOrientation;
    .end annotation
.end field

.field private final zzaax:Lcom/google/android/gms/internal/ads/zzty;

.field private final zzaaz:Lcom/google/android/gms/internal/ads/zzwz;

.field private zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

.field private final zzbqy:Ljava/lang/String;

.field private final zzbqz:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

.field private final zzbra:Lcom/google/android/gms/internal/ads/zzaju;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzwz;ILcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V
    .registers 7
    .param p4    # I
        .annotation build Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdOrientation;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaju;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaju;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrg;->zzbra:Lcom/google/android/gms/internal/ads/zzaju;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrg;->zzlk:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrg;->zzbqy:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzrg;->zzaaz:Lcom/google/android/gms/internal/ads/zzwz;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzrg;->orientation:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzrg;->zzbqz:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzty;->zzccl:Lcom/google/android/gms/internal/ads/zzty;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrg;->zzaax:Lcom/google/android/gms/internal/ads/zzty;

    return-void
.end method


# virtual methods
.method public final zzmg()V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzua;->zzob()Lcom/google/android/gms/internal/ads/zzua;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzok()Lcom/google/android/gms/internal/ads/zzug;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrg;->zzlk:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzrg;->zzbqy:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzrg;->zzbra:Lcom/google/android/gms/internal/ads/zzaju;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzug;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzua;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajx;)Lcom/google/android/gms/internal/ads/zzvl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrg;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzuf;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzrg;->orientation:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzuf;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrg;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzuf;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrg;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzqu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrg;->zzbqz:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzqu;-><init>(Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzqx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrg;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrg;->zzlk:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrg;->zzaaz:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzty;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwz;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zztx;)Z
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_39} :catch_3a

    return-void

    :catch_3a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
