###### Class com.google.android.gms.internal.ads.zzuq (com.google.android.gms.internal.ads.zzuq)
.class final Lcom/google/android/gms/internal/ads/zzuq;
.super Lcom/google/android/gms/internal/ads/zzus;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzus<",
        "Lcom/google/android/gms/internal/ads/zzabt;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzcdf:Lcom/google/android/gms/internal/ads/zzug;

.field private final synthetic zzcdh:Landroid/view/View;

.field private final synthetic zzcdi:Ljava/util/HashMap;

.field private final synthetic zzcdj:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzug;Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuq;->zzcdf:Lcom/google/android/gms/internal/ads/zzug;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzuq;->zzcdh:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzuq;->zzcdi:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzuq;->zzcdj:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzus;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzvu;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuq;->zzcdh:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuq;->zzcdi:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzuq;->zzcdj:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzvu;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzabt;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zzoe()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuq;->zzcdh:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "native_ad_view_holder_delegate"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzug;->zzb(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxx;-><init>()V

    return-object v0
.end method

.method public final synthetic zzof()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuq;->zzcdf:Lcom/google/android/gms/internal/ads/zzug;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzug;->zze(Lcom/google/android/gms/internal/ads/zzug;)Lcom/google/android/gms/internal/ads/zzadm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuq;->zzcdh:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzuq;->zzcdi:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzuq;->zzcdj:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/google/android/gms/internal/ads/zzabt;

    move-result-object v0

    return-object v0
.end method
