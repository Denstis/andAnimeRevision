###### Class com.google.android.gms.internal.ads.zzamp (com.google.android.gms.internal.ads.zzamp)
.class final Lcom/google/android/gms/internal/ads/zzamp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;


# instance fields
.field private final synthetic zzdfc:Lcom/google/android/gms/internal/ads/zzame;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzami;Lcom/google/android/gms/internal/ads/zzame;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdfc:Lcom/google/android/gms/internal/ads/zzame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdfc:Lcom/google/android/gms/internal/ads/zzame;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzame;->onFailure(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdfc:Lcom/google/android/gms/internal/ads/zzame;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzame;->zzdi(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
