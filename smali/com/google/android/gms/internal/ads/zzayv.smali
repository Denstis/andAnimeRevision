###### Class com.google.android.gms.internal.ads.zzayv (com.google.android.gms.internal.ads.zzayv)
.class final synthetic Lcom/google/android/gms/internal/ads/zzayv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdxz:Lcom/google/android/gms/internal/ads/zzayu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzayu;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayv;->zzdxz:Lcom/google/android/gms/internal/ads/zzayu;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzayu;)Ljava/lang/Runnable;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzayv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzayv;-><init>(Lcom/google/android/gms/internal/ads/zzayu;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayv;->zzdxz:Lcom/google/android/gms/internal/ads/zzayu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayu;->stop()V

    return-void
.end method
