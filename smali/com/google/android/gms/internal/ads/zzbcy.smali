###### Class com.google.android.gms.internal.ads.zzbcy (com.google.android.gms.internal.ads.zzbcy)
.class public Lcom/google/android/gms/internal/ads/zzbcy;
.super Lcom/google/android/gms/internal/ads/zzbbv;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbbw;Lcom/google/android/gms/internal/ads/zzsd;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbbv;-><init>(Lcom/google/android/gms/internal/ads/zzbbw;Lcom/google/android/gms/internal/ads/zzsd;Z)V

    return-void
.end method


# virtual methods
.method protected final zza(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbbw;

    if-nez v0, :cond_b

    const-string p1, "Tried to intercept request from a WebView that wasn\'t an AdWebView."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbv;->zzeew:Lcom/google/android/gms/internal/ads/zzasi;

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    invoke-interface {v0, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzasi;->zza(Ljava/lang/String;Ljava/util/Map;I)V

    :cond_15
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mraid.js"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    if-nez p3, :cond_2c

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p3

    :cond_2c
    invoke-super {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbbv;->zzd(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_31
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzp()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object p2

    if-eqz p2, :cond_3e

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzp()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbdg;->zzsq()V

    :cond_3e
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzn()Lcom/google/android/gms/internal/ads/zzbdj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbdj;->zzaau()Z

    move-result p2

    if-eqz p2, :cond_55

    sget-object p2, Lcom/google/android/gms/internal/ads/zzza;->zzcig:Lcom/google/android/gms/internal/ads/zzyp;

    :goto_4a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_61

    :cond_55
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzu()Z

    move-result p2

    if-eqz p2, :cond_5e

    sget-object p2, Lcom/google/android/gms/internal/ads/zzza;->zzcif:Lcom/google/android/gms/internal/ads/zzyp;

    goto :goto_4a

    :cond_5e
    sget-object p2, Lcom/google/android/gms/internal/ads/zzza;->zzcie:Lcom/google/android/gms/internal/ads/zzyp;

    goto :goto_4a

    :goto_61
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->zzxr()Lcom/google/android/gms/internal/ads/zzaxl;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaxl;->zzblz:Ljava/lang/String;

    invoke-static {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzaul;->zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
