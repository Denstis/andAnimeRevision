###### Class com.google.android.gms.internal.ads.zzbxs (com.google.android.gms.internal.ads.zzbxs)
.class public final Lcom/google/android/gms/internal/ads/zzbxs;
.super Lcom/google/android/gms/internal/ads/zzage;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Lcom/google/android/gms/internal/ads/zzaav;


# instance fields
.field private zzegn:Z

.field private zzflj:Lcom/google/android/gms/internal/ads/zzwr;

.field private zzflo:Landroid/view/View;

.field private zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

.field private zzfpi:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbuj;Lcom/google/android/gms/internal/ads/zzbur;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzage;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbur;->zzaht()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzflo:Landroid/view/View;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbur;->getVideoController()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzflj:Lcom/google/android/gms/internal/ads/zzwr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzegn:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzfpi:Z

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbur;->zzahu()Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbur;->zzahu()Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzbbw;->zza(Lcom/google/android/gms/internal/ads/zzaav;)V

    :cond_23
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzagh;I)V
    .registers 2

    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzagh;->zzcj(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzajc()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzflo:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzflo:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_14
    return-void
.end method

.method private final zzajd()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzflo:Landroid/view/View;

    if-eqz v1, :cond_19

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzflo:Landroid/view/View;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbuj;->zzx(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbuj;->zzb(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    :cond_19
    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbxs;->zzajc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbuj;->destroy()V

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzflo:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzflj:Lcom/google/android/gms/internal/ads/zzwr;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzegn:Z

    return-void
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzwr;
    .registers 2

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzegn:Z

    if-eqz v0, :cond_10

    const-string v0, "getVideoController: Instream ad should not be used after destroyed"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzflj:Lcom/google/android/gms/internal/ads/zzwr;

    return-object v0
.end method

.method public final onGlobalLayout()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbxs;->zzajd()V

    return-void
.end method

.method public final onScrollChanged()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbxs;->zzajd()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzagh;)V
    .registers 6

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzegn:Z

    if-eqz v0, :cond_13

    const-string p1, "Instream ad is destroyed already."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbxs;->zza(Lcom/google/android/gms/internal/ads/zzagh;I)V

    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzflo:Landroid/view/View;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzflj:Lcom/google/android/gms/internal/ads/zzwr;

    if-nez v0, :cond_1c

    goto :goto_5e

    :cond_1c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzfpi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    const-string p1, "Instream ad should not be used again."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/zzbxs;->zza(Lcom/google/android/gms/internal/ads/zzagh;I)V

    return-void

    :cond_2a
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzfpi:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbxs;->zzajc()V

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzflo:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlg()Lcom/google/android/gms/internal/ads/zzayd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzflo:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzayd;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlg()Lcom/google/android/gms/internal/ads/zzayd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzflo:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzayd;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbxs;->zzajd()V

    :try_start_53
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzagh;->zzrc()V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_56} :catch_57

    return-void

    :catch_57
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_5e
    :goto_5e
    const-string p1, "Instream internal error: "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zzflo:Landroid/view/View;

    if-nez v0, :cond_67

    const-string v0, "can not get video view."

    goto :goto_69

    :cond_67
    const-string v0, "can not get video controller."

    :goto_69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_74

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7a

    :cond_74
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_7a
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbxs;->zza(Lcom/google/android/gms/internal/ads/zzagh;I)V

    return-void
.end method

.method final synthetic zzaje()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbxs;->destroy()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzqj()V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbxv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbxv;-><init>(Lcom/google/android/gms/internal/ads/zzbxs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzbxv (com.google.android.gms.internal.ads.zzbxv)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbxv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfpk:Lcom/google/android/gms/internal/ads/zzbxs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbxs;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzfpk:Lcom/google/android/gms/internal/ads/zzbxs;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzfpk:Lcom/google/android/gms/internal/ads/zzbxs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbxs;->zzaje()V

    return-void
.end method
