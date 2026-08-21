###### Class com.google.android.gms.internal.ads.zzayo (com.google.android.gms.internal.ads.zzayo)
.class final Lcom/google/android/gms/internal/ads/zzayo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzdxr:Lcom/google/android/gms/internal/ads/zzayh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayh;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayo;->zzdxr:Lcom/google/android/gms/internal/ads/zzayh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayo;->zzdxr:Lcom/google/android/gms/internal/ads/zzayh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayh;->zza(Lcom/google/android/gms/internal/ads/zzayh;)Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayo;->zzdxr:Lcom/google/android/gms/internal/ads/zzayh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayh;->zza(Lcom/google/android/gms/internal/ads/zzayh;)Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzwv()V

    :cond_11
    return-void
.end method
