###### Class com.google.android.gms.internal.ads.zzbyz (com.google.android.gms.internal.ads.zzbyz)
.class public final Lcom/google/android/gms/internal/ads/zzbyz;
.super Lcom/google/android/gms/internal/ads/zzbkk;
.source ""


# instance fields
.field private final zzdoe:Lcom/google/android/gms/internal/ads/zzaqv;

.field private final zzfif:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/zzbbw;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfig:Lcom/google/android/gms/internal/ads/zzbqi;

.field private final zzfii:Lcom/google/android/gms/internal/ads/zzble;

.field private final zzfij:Lcom/google/android/gms/internal/ads/zzczf;

.field private final zzfim:Lcom/google/android/gms/internal/ads/zzbsu;

.field private zzfpi:Z

.field private final zzfpy:Lcom/google/android/gms/internal/ads/zzbof;

.field private final zzfqi:Lcom/google/android/gms/internal/ads/zzbne;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbkn;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbw;Lcom/google/android/gms/internal/ads/zzbsu;Lcom/google/android/gms/internal/ads/zzbqi;Lcom/google/android/gms/internal/ads/zzbne;Lcom/google/android/gms/internal/ads/zzbof;Lcom/google/android/gms/internal/ads/zzble;Lcom/google/android/gms/internal/ads/zzcvr;Lcom/google/android/gms/internal/ads/zzczf;)V
    .registers 11

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbkk;-><init>(Lcom/google/android/gms/internal/ads/zzbkn;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfpi:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzlk:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfim:Lcom/google/android/gms/internal/ads/zzbsu;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfif:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfig:Lcom/google/android/gms/internal/ads/zzbqi;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfqi:Lcom/google/android/gms/internal/ads/zzbne;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfpy:Lcom/google/android/gms/internal/ads/zzbof;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfii:Lcom/google/android/gms/internal/ads/zzble;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfij:Lcom/google/android/gms/internal/ads/zzczf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzarw;

    iget-object p2, p9, Lcom/google/android/gms/internal/ads/zzcvr;->zzdle:Lcom/google/android/gms/internal/ads/zzaqt;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzarw;-><init>(Lcom/google/android/gms/internal/ads/zzaqt;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzdoe:Lcom/google/android/gms/internal/ads/zzaqv;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfif:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbw;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzza;->zzctv:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfpi:Z

    if-nez v1, :cond_32

    if-eqz v0, :cond_32

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwm:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbyy;->zzh(Lcom/google/android/gms/internal/ads/zzbbw;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_32

    :cond_2d
    if-eqz v0, :cond_32

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->destroy()V
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_36

    :cond_32
    :goto_32
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_36
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfpy:Lcom/google/android/gms/internal/ads/zzbof;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbof;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final isClosed()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfii:Lcom/google/android/gms/internal/ads/zzble;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzble;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final zzajh()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfpi:Z

    return v0
.end method

.method public final zzb(ZLandroid/app/Activity;)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcjt:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzlk:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaul;->zzau(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string p1, "Rewarded ad can not be shown when app is not in foreground."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfqi:Lcom/google/android/gms/internal/ads/zzbne;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbne;->zzcl(I)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzcju:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfij:Lcom/google/android/gms/internal/ads/zzczf;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbkk;->zzfbd:Lcom/google/android/gms/internal/ads/zzcvz;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzcvz;->zzgkb:Lcom/google/android/gms/internal/ads/zzcvx;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzcvx;->zzgjy:Lcom/google/android/gms/internal/ads/zzcvt;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzcvt;->zzbzn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzczf;->zzgl(Ljava/lang/String;)V

    :cond_47
    return-void

    :cond_48
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfpi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_58

    const-string p1, "The rewarded ad have been showed."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfqi:Lcom/google/android/gms/internal/ads/zzbne;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbne;->zzcl(I)V

    return-void

    :cond_58
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfpi:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfig:Lcom/google/android/gms/internal/ads/zzbqi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqi;->zzagn()V

    if-nez p2, :cond_63

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzlk:Landroid/content/Context;

    :cond_63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfim:Lcom/google/android/gms/internal/ads/zzbsu;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbsu;->zza(ZLandroid/content/Context;)V

    return-void
.end method

.method public final zzpk()Lcom/google/android/gms/internal/ads/zzaqv;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzdoe:Lcom/google/android/gms/internal/ads/zzaqv;

    return-object v0
.end method

.method public final zzpl()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzfif:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzaae()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method
