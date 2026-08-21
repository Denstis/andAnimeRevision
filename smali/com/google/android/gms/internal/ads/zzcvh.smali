###### Class com.google.android.gms.internal.ads.zzcvh (com.google.android.gms.internal.ads.zzcvh)
.class final Lcom/google/android/gms/internal/ads/zzcvh;
.super Lcom/google/android/gms/ads/reward/AdMetadataListener;
.source ""


# instance fields
.field private final synthetic zzgiq:Lcom/google/android/gms/internal/ads/zzwm;

.field private final synthetic zzgir:Lcom/google/android/gms/internal/ads/zzcvf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcvf;Lcom/google/android/gms/internal/ads/zzwm;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zzgir:Lcom/google/android/gms/internal/ads/zzcvf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zzgiq:Lcom/google/android/gms/internal/ads/zzwm;

    invoke-direct {p0}, Lcom/google/android/gms/ads/reward/AdMetadataListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdMetadataChanged()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zzgir:Lcom/google/android/gms/internal/ads/zzcvf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcvf;->zza(Lcom/google/android/gms/internal/ads/zzcvf;)Lcom/google/android/gms/internal/ads/zzbyz;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zzgiq:Lcom/google/android/gms/internal/ads/zzwm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwm;->onAdMetadataChanged()V
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
