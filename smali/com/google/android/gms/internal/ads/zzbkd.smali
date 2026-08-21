###### Class com.google.android.gms.internal.ads.zzbkd (com.google.android.gms.internal.ads.zzbkd)
.class public final Lcom/google/android/gms/internal/ads/zzbkd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbnj;
.implements Lcom/google/android/gms/internal/ads/zzbog;


# instance fields
.field private final zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

.field private final zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

.field private final zzfet:Lcom/google/android/gms/internal/ads/zzcvr;

.field private zzfeu:Lcom/google/android/gms/dynamic/IObjectWrapper;

.field private zzfev:Z

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbw;Lcom/google/android/gms/internal/ads/zzcvr;Lcom/google/android/gms/internal/ads/zzaxl;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzlk:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzfet:Lcom/google/android/gms/internal/ads/zzcvr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

    return-void
.end method

.method private final declared-synchronized zzafj()V
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzfet:Lcom/google/android/gms/internal/ads/zzcvr;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcvr;->zzdlo:Z
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8b

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_8b

    if-nez v0, :cond_f

    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzky()Lcom/google/android/gms/internal/ads/zzanl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzlk:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzanl;->zzp(Landroid/content/Context;)Z

    move-result v0
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_8b

    if-nez v0, :cond_1d

    monitor-exit p0

    return-void

    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaxl;->zzdwe:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaxl;->zzdwf:I

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzfet:Lcom/google/android/gms/internal/ads/zzcvr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcvr;->zzgjo:Lorg/json/JSONObject;

    const-string v1, "media_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4a

    const/4 v0, 0x0

    goto :goto_4c

    :cond_4a
    const-string v0, "javascript"

    :goto_4c
    move-object v9, v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzky()Lcom/google/android/gms/internal/ads/zzanl;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    const-string v7, ""

    const-string v8, "javascript"

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzanl;->zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzfeu:Lcom/google/android/gms/dynamic/IObjectWrapper;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzfeu:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v1, :cond_89

    if-eqz v0, :cond_89

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzky()Lcom/google/android/gms/internal/ads/zzanl;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzfeu:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzanl;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzfeu:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbw;->zzaq(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzky()Lcom/google/android/gms/internal/ads/zzanl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzfeu:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzanl;->zzae(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzfev:Z
    :try_end_89
    .catchall {:try_start_1d .. :try_end_89} :catchall_8b

    :cond_89
    monitor-exit p0

    return-void

    :catchall_8b
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized onAdImpression()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzfev:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbkd;->zzafj()V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzfet:Lcom/google/android/gms/internal/ads/zzcvr;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcvr;->zzdlo:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzfeu:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    const-string v1, "onSdkImpression"

    new-instance v2, Lb/e/a;

    invoke-direct {v2}, Lb/e/a;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzagn;->zza(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onAdLoaded()V
    .registers 2

    nop

    :try_start_1
    nop

    nop
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    nop

    nop

    nop

    nop

    :try_start_7
    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    nop

    nop

    :catchall_c
    nop

    nop

    return-void
.end method
