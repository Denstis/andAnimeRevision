###### Class com.google.android.gms.internal.ads.zztu (com.google.android.gms.internal.ads.zztu)
.class public final Lcom/google/android/gms/internal/ads/zztu;
.super Lcom/google/android/gms/internal/ads/zzvr;
.source ""


# instance fields
.field private final zzcbw:Lcom/google/android/gms/ads/reward/AdMetadataListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztu;->zzcbw:Lcom/google/android/gms/ads/reward/AdMetadataListener;

    return-void
.end method


# virtual methods
.method public final onAdMetadataChanged()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztu;->zzcbw:Lcom/google/android/gms/ads/reward/AdMetadataListener;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/ads/reward/AdMetadataListener;->onAdMetadataChanged()V

    :cond_7
    return-void
.end method
