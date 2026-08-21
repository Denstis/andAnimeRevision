###### Class com.google.android.gms.internal.ads.zzto (com.google.android.gms.internal.ads.zzto)
.class public final Lcom/google/android/gms/internal/ads/zzto;
.super Lcom/google/android/gms/internal/ads/zzuw;
.source ""


# instance fields
.field private final zzcbs:Lcom/google/android/gms/internal/ads/zztp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zztp;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzcbs:Lcom/google/android/gms/internal/ads/zztp;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zzcbs:Lcom/google/android/gms/internal/ads/zztp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zztp;->onAdClicked()V

    return-void
.end method
