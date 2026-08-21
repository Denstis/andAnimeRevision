###### Class com.google.android.gms.ads.internal.zzm (com.google.android.gms.ads.internal.zzm)
.class final Lcom/google/android/gms/ads/internal/zzm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/ads/zzdf;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzblj:Lcom/google/android/gms/ads/internal/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzl;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzm;->zzblj:Lcom/google/android/gms/ads/internal/zzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzm;->zzblj:Lcom/google/android/gms/ads/internal/zzl;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzl;->zzc(Lcom/google/android/gms/ads/internal/zzl;)Lcom/google/android/gms/internal/ads/zzaxl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaxl;->zzblz:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzm;->zzblj:Lcom/google/android/gms/ads/internal/zzl;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzl;->zzd(Lcom/google/android/gms/ads/internal/zzl;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdg;->zza(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzdg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdf;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdf;-><init>(Lcom/google/android/gms/internal/ads/zzdc;)V

    return-object v1
.end method
