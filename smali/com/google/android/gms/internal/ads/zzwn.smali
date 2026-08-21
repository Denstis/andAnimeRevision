###### Class com.google.android.gms.internal.ads.zzwn (com.google.android.gms.internal.ads.zzwn)
.class public final Lcom/google/android/gms/internal/ads/zzwn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/MuteThisAdReason;


# instance fields
.field private final description:Ljava/lang/String;

.field private zzcdz:Lcom/google/android/gms/internal/ads/zzwi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzwi;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwn;->zzcdz:Lcom/google/android/gms/internal/ads/zzwi;

    :try_start_5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwi;->getDescription()Ljava/lang/String;

    move-result-object p1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_a

    goto :goto_11

    :catch_a
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwn;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwn;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwn;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final zzow()Lcom/google/android/gms/internal/ads/zzwi;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwn;->zzcdz:Lcom/google/android/gms/internal/ads/zzwi;

    return-object v0
.end method
