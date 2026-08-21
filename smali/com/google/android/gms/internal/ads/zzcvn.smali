###### Class com.google.android.gms.internal.ads.zzcvn (com.google.android.gms.internal.ads.zzcvn)
.class final Lcom/google/android/gms/internal/ads/zzcvn;
.super Lcom/google/android/gms/ads/reward/AdMetadataListener;
.source ""


# instance fields
.field private final synthetic zzgiv:Lcom/google/android/gms/internal/ads/zzvo;

.field private final synthetic zzgiw:Lcom/google/android/gms/internal/ads/zzcvl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcvl;Lcom/google/android/gms/internal/ads/zzvo;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvn;->zzgiw:Lcom/google/android/gms/internal/ads/zzcvl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvn;->zzgiv:Lcom/google/android/gms/internal/ads/zzvo;

    invoke-direct {p0}, Lcom/google/android/gms/ads/reward/AdMetadataListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdMetadataChanged()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvn;->zzgiw:Lcom/google/android/gms/internal/ads/zzcvl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcvl;->zza(Lcom/google/android/gms/internal/ads/zzcvl;)Lcom/google/android/gms/internal/ads/zzbyz;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvn;->zzgiv:Lcom/google/android/gms/internal/ads/zzvo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvo;->onAdMetadataChanged()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14
    return-void
.end method
