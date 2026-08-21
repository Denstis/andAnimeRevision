###### Class com.google.android.gms.internal.ads.zzckx (com.google.android.gms.internal.ads.zzckx)
.class final Lcom/google/android/gms/internal/ads/zzckx;
.super Lcom/google/android/gms/internal/ads/zzbiv;
.source ""


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcks;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbbw;Lcom/google/android/gms/internal/ads/zzbkl;Lcom/google/android/gms/internal/ads/zzcvu;)V
    .registers 6

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzbiv;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbbw;Lcom/google/android/gms/internal/ads/zzbkl;Lcom/google/android/gms/internal/ads/zzcvu;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzbob;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbqs<",
            "Lcom/google/android/gms/internal/ads/zzbog;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/zzbob;"
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbob;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzbob;-><init>(Ljava/util/Set;)V

    return-object p1
.end method
