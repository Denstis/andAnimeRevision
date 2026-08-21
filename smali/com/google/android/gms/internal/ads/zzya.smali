###### Class com.google.android.gms.internal.ads.zzya (com.google.android.gms.internal.ads.zzya)
.class public final Lcom/google/android/gms/internal/ads/zzya;
.super Lcom/google/android/gms/internal/ads/zzwp;
.source ""


# instance fields
.field private final zzcfm:Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzya;->zzcfm:Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;

    return-void
.end method


# virtual methods
.method public final onAdMetadataChanged()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzcfm:Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;->onAdMetadataChanged()V

    :cond_7
    return-void
.end method
