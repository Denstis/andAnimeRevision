###### Class com.google.android.gms.internal.ads.zzcbc (com.google.android.gms.internal.ads.zzcbc)
.class public final Lcom/google/android/gms/internal/ads/zzcbc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbnb;
.implements Lcom/google/android/gms/internal/ads/zzbog;
.implements Lcom/google/android/gms/internal/ads/zzbpc;


# instance fields
.field private final zzfru:Lcom/google/android/gms/internal/ads/zzcbl;

.field private final zzfrv:Lcom/google/android/gms/internal/ads/zzcbo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcbl;Lcom/google/android/gms/internal/ads/zzcbo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzfru:Lcom/google/android/gms/internal/ads/zzcbl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzfrv:Lcom/google/android/gms/internal/ads/zzcbo;

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(I)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzfrv:Lcom/google/android/gms/internal/ads/zzcbo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzfru:Lcom/google/android/gms/internal/ads/zzcbl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbl;->zzqd()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcbo;->zzm(Ljava/util/Map;)V

    return-void
.end method

.method public final onAdLoaded()V
    .registers 3

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzcvz;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzfru:Lcom/google/android/gms/internal/ads/zzcbl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbl;->zzb(Lcom/google/android/gms/internal/ads/zzcvz;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzape;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzfru:Lcom/google/android/gms/internal/ads/zzcbl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzape;->zzdma:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbl;->zzi(Landroid/os/Bundle;)V

    return-void
.end method
