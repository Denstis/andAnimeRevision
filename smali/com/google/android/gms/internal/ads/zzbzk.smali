###### Class com.google.android.gms.internal.ads.zzbzk (com.google.android.gms.internal.ads.zzbzk)
.class final Lcom/google/android/gms/internal/ads/zzbzk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzi;


# instance fields
.field private final synthetic zzfqm:Lcom/google/android/gms/internal/ads/zzbzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbzl;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzk;->zzfqm:Lcom/google/android/gms/internal/ads/zzbzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzjp()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzk;->zzfqm:Lcom/google/android/gms/internal/ads/zzbzl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbzl;->zza(Lcom/google/android/gms/internal/ads/zzbzl;)Lcom/google/android/gms/internal/ads/zzbou;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbou;->onPause()V

    return-void
.end method

.method public final zzjq()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzk;->zzfqm:Lcom/google/android/gms/internal/ads/zzbzl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbzl;->zza(Lcom/google/android/gms/internal/ads/zzbzl;)Lcom/google/android/gms/internal/ads/zzbou;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbou;->onResume()V

    return-void
.end method
