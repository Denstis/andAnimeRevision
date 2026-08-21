###### Class com.google.android.gms.internal.ads.zzauz (com.google.android.gms.internal.ads.zzauz)
.class public Lcom/google/android/gms/internal/ads/zzauz;
.super Lcom/google/android/gms/internal/ads/zzava;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzava;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lcom/google/android/gms/internal/ads/zzsv;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaul;->zzq(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p1

    if-eqz p1, :cond_14

    sget-object p1, Lcom/google/android/gms/internal/ads/zzsv;->zzbvt:Lcom/google/android/gms/internal/ads/zzsv;

    return-object p1

    :cond_14
    sget-object p1, Lcom/google/android/gms/internal/ads/zzsv;->zzbvs:Lcom/google/android/gms/internal/ads/zzsv;

    return-object p1

    :cond_17
    sget-object p1, Lcom/google/android/gms/internal/ads/zzsv;->zzbvs:Lcom/google/android/gms/internal/ads/zzsv;

    return-object p1
.end method
