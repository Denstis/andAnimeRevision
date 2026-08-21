###### Class com.google.android.gms.internal.ads.zzanb (com.google.android.gms.internal.ads.zzanb)
.class public final Lcom/google/android/gms/internal/ads/zzanb;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

.field private final zzdgc:Z

.field private final zzdgd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbbw;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbbw;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    const-string p1, "forceOrientation"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzdgd:Ljava/lang/String;

    const-string p1, "allowOrientationChange"

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    :goto_21
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzdgc:Z

    return-void

    :cond_24
    const/4 p1, 0x1

    goto :goto_21
.end method


# virtual methods
.method public final execute()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-nez v0, :cond_a

    const-string v0, "AdWebView is null"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzdgd:Ljava/lang/String;

    const-string v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    const/4 v0, 0x7

    goto :goto_36

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzdgd:Ljava/lang/String;

    const-string v1, "landscape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    const/4 v0, 0x6

    goto :goto_36

    :cond_28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzdgc:Z

    if-eqz v0, :cond_2e

    const/4 v0, -0x1

    goto :goto_36

    :cond_2e
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaur;->zzvq()I

    move-result v0

    :goto_36
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbw;->setRequestedOrientation(I)V

    return-void
.end method
