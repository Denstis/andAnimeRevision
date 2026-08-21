###### Class com.google.android.gms.internal.ads.zzwj (com.google.android.gms.internal.ads.zzwj)
.class public final Lcom/google/android/gms/internal/ads/zzwj;
.super Lcom/google/android/gms/internal/ads/zzwh;
.source ""


# instance fields
.field private final zzcdy:Lcom/google/android/gms/ads/MuteThisAdListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/MuteThisAdListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzcdy:Lcom/google/android/gms/ads/MuteThisAdListener;

    return-void
.end method


# virtual methods
.method public final onAdMuted()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzcdy:Lcom/google/android/gms/ads/MuteThisAdListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/MuteThisAdListener;->onAdMuted()V

    return-void
.end method
