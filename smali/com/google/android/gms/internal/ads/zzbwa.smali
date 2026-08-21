###### Class com.google.android.gms.internal.ads.zzbwa (com.google.android.gms.internal.ads.zzbwa)
.class public final Lcom/google/android/gms/internal/ads/zzbwa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbuz;


# instance fields
.field private final zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

.field private final zzfet:Lcom/google/android/gms/internal/ads/zzcvr;

.field private final zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

.field private final zzfjm:Lcom/google/android/gms/internal/ads/zzbni;

.field private final zzfjn:Lcom/google/android/gms/internal/ads/zzbmv;

.field private zzfjr:Z

.field private zzfju:Z

.field private final zzfnq:Lcom/google/android/gms/internal/ads/zzakg;

.field private final zzfnr:Lcom/google/android/gms/internal/ads/zzakl;

.field private final zzfns:Lcom/google/android/gms/internal/ads/zzakm;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakg;Lcom/google/android/gms/internal/ads/zzakl;Lcom/google/android/gms/internal/ads/zzakm;Lcom/google/android/gms/internal/ads/zzbni;Lcom/google/android/gms/internal/ads/zzbmv;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcvr;Lcom/google/android/gms/internal/ads/zzaxl;Lcom/google/android/gms/internal/ads/zzcwe;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfjr:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfju:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnq:Lcom/google/android/gms/internal/ads/zzakg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnr:Lcom/google/android/gms/internal/ads/zzakl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfns:Lcom/google/android/gms/internal/ads/zzakm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfjm:Lcom/google/android/gms/internal/ads/zzbni;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfjn:Lcom/google/android/gms/internal/ads/zzbmv;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzlk:Landroid/content/Context;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfet:Lcom/google/android/gms/internal/ads/zzcvr;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    return-void
.end method

.method private final zzab(Landroid/view/View;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfns:Lcom/google/android/gms/internal/ads/zzakm;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfns:Lcom/google/android/gms/internal/ads/zzakm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzakm;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfns:Lcom/google/android/gms/internal/ads/zzakm;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzakm;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfjn:Lcom/google/android/gms/internal/ads/zzbmv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbmv;->onAdClicked()V

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnq:Lcom/google/android/gms/internal/ads/zzakg;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnq:Lcom/google/android/gms/internal/ads/zzakg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzakg;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnq:Lcom/google/android/gms/internal/ads/zzakg;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzakg;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfjn:Lcom/google/android/gms/internal/ads/zzbmv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbmv;->onAdClicked()V

    return-void

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnr:Lcom/google/android/gms/internal/ads/zzakl;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnr:Lcom/google/android/gms/internal/ads/zzakl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzakl;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnr:Lcom/google/android/gms/internal/ads/zzakl;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzakl;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfjn:Lcom/google/android/gms/internal/ads/zzbmv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbmv;->onAdClicked()V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_50} :catch_51

    :cond_50
    return-void

    :catch_51
    move-exception p1

    const-string v0, "Failed to call handleClick"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static zzb(Ljava/util/Map;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    monitor-enter p0

    :try_start_9
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_35
    monitor-exit p0

    return-object v0

    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    goto :goto_3b

    :goto_3a
    throw v0

    :goto_3b
    goto :goto_3a
.end method


# virtual methods
.method public final cancelUnconfirmedClick()V
    .registers 1

    return-void
.end method

.method public final destroy()V
    .registers 1

    return-void
.end method

.method public final isCustomClickGestureEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfet:Lcom/google/android/gms/internal/ads/zzcvr;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcvr;->zzdcn:Z

    return v0
.end method

.method public final setClickConfirmingView(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final zza(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .registers 4

    return-void
.end method

.method public final zza(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfju:Z

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfet:Lcom/google/android/gms/internal/ads/zzcvr;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzcvr;->zzdcn:Z

    if-eqz p2, :cond_b

    return-void

    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbwa;->zzab(Landroid/view/View;)V

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfns:Lcom/google/android/gms/internal/ads/zzakm;

    if-eqz p2, :cond_e

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfns:Lcom/google/android/gms/internal/ads/zzakm;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzakm;->zzaa(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    :cond_e
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnq:Lcom/google/android/gms/internal/ads/zzakg;

    if-eqz p2, :cond_18

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnq:Lcom/google/android/gms/internal/ads/zzakg;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzakg;->zzaa(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    :cond_18
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnr:Lcom/google/android/gms/internal/ads/zzakl;

    if-eqz p2, :cond_21

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnr:Lcom/google/android/gms/internal/ads/zzakl;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzakl;->zzaa(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    :cond_21
    return-void

    :catch_22
    move-exception p1

    const-string p2, "Failed to call untrackView"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfjr:Z

    if-nez p1, :cond_29

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfet:Lcom/google/android/gms/internal/ads/zzcvr;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcvr;->zzgjj:Lorg/json/JSONObject;

    if-eqz p1, :cond_29

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfjr:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkt()Lcom/google/android/gms/internal/ads/zzavm;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzlk:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaxl;->zzblz:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfet:Lcom/google/android/gms/internal/ads/zzcvr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcvr;->zzgjj:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkh:Ljava/lang/String;

    invoke-virtual {p2, p3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzavm;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfjr:Z

    :cond_29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfns:Lcom/google/android/gms/internal/ads/zzakm;

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfns:Lcom/google/android/gms/internal/ads/zzakm;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzakm;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfns:Lcom/google/android/gms/internal/ads/zzakm;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzakm;->recordImpression()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfjm:Lcom/google/android/gms/internal/ads/zzbni;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbni;->onAdImpression()V

    return-void

    :cond_40
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnq:Lcom/google/android/gms/internal/ads/zzakg;

    if-eqz p1, :cond_57

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnq:Lcom/google/android/gms/internal/ads/zzakg;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzakg;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_57

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnq:Lcom/google/android/gms/internal/ads/zzakg;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzakg;->recordImpression()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfjm:Lcom/google/android/gms/internal/ads/zzbni;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbni;->onAdImpression()V

    return-void

    :cond_57
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnr:Lcom/google/android/gms/internal/ads/zzakl;

    if-eqz p1, :cond_6d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnr:Lcom/google/android/gms/internal/ads/zzakl;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzakl;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_6d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnr:Lcom/google/android/gms/internal/ads/zzakl;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzakl;->recordImpression()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfjm:Lcom/google/android/gms/internal/ads/zzbni;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbni;->onAdImpression()V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6d} :catch_6e

    :cond_6d
    return-void

    :catch_6e
    move-exception p1

    const-string p2, "Failed to call recordImpression"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbwa;->zzb(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzbwa;->zzb(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p3

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfns:Lcom/google/android/gms/internal/ads/zzakm;

    if-eqz p4, :cond_1e

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfns:Lcom/google/android/gms/internal/ads/zzakm;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzakm;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    :cond_1e
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnq:Lcom/google/android/gms/internal/ads/zzakg;

    if-eqz p4, :cond_35

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnq:Lcom/google/android/gms/internal/ads/zzakg;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzakg;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnq:Lcom/google/android/gms/internal/ads/zzakg;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzakg;->zzz(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    :cond_35
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnr:Lcom/google/android/gms/internal/ads/zzakl;

    if-eqz p4, :cond_4b

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnr:Lcom/google/android/gms/internal/ads/zzakl;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzakl;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfnr:Lcom/google/android/gms/internal/ads/zzakl;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzakl;->zzz(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4b} :catch_4c

    :cond_4b
    return-void

    :catch_4c
    move-exception p1

    const-string p2, "Failed to call trackView"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfju:Z

    if-nez p2, :cond_a

    const-string p1, "Custom click reporting for 3p ads failed. enableCustomClickGesture is not set."

    :goto_6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfet:Lcom/google/android/gms/internal/ads/zzcvr;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzcvr;->zzdcn:Z

    if-nez p2, :cond_13

    const-string p1, "Custom click reporting for 3p ads failed. Ad unit id not whitelisted."

    goto :goto_6

    :cond_13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbwa;->zzab(Landroid/view/View;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzadf;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwe;)V
    .registers 2

    const-string p1, "Mute This Ad is not supported for 3rd party ads"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwi;)V
    .registers 2

    const-string p1, "Mute This Ad is not supported for 3rd party ads"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-void
.end method

.method public final zzahd()V
    .registers 1

    return-void
.end method

.method public final zzahe()V
    .registers 2

    const-string v0, "Mute This Ad is not supported for 3rd party ads"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-void
.end method

.method public final zzahf()V
    .registers 1

    return-void
.end method

.method public final zzf(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final zzfp(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final zzg(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final zzh(Landroid/os/Bundle;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public final zzqw()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbwa;->zzfju:Z

    return-void
.end method
