###### Class com.google.android.gms.internal.ads.zzcna (com.google.android.gms.internal.ads.zzcna)
.class final Lcom/google/android/gms/internal/ads/zzcna;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdcz<",
        "Lcom/google/android/gms/internal/ads/zzcnl;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgdk:Lcom/google/android/gms/internal/ads/zzatd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcnb;Lcom/google/android/gms/internal/ads/zzatd;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcna;->zzgdk:Lcom/google/android/gms/internal/ads/zzatd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcnl;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcna;->zzgdk:Lcom/google/android/gms/internal/ads/zzatd;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzcnl;->zzgdr:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcnl;->zzgds:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzatd;->zzm(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 3

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcna;->zzgdk:Lcom/google/android/gms/internal/ads/zzatd;

    const-string v0, "Internal error."

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzatd;->onError(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
