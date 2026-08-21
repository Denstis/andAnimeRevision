###### Class com.google.android.gms.internal.ads.zzpz (com.google.android.gms.internal.ads.zzpz)
.class public final Lcom/google/android/gms/internal/ads/zzpz;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private started:Z

.field private final zzboi:I

.field private final zzbok:I

.field private final zzbol:Z

.field private zzbpi:Z

.field private zzbpj:Z

.field private final zzbpk:Lcom/google/android/gms/internal/ads/zzpw;

.field private final zzbpl:I

.field private final zzbpm:I

.field private final zzbpn:I

.field private final zzbpo:I

.field private final zzbpp:I

.field private final zzbpq:I

.field private final zzbpr:Ljava/lang/String;

.field private final zzbps:Z

.field private final zzbpt:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzpw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzpw;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzpz;-><init>(Lcom/google/android/gms/internal/ads/zzpw;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzpw;)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpz;->started:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpi:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpj:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpk:Lcom/google/android/gms/internal/ads/zzpw;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpz;->lock:Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzcio:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzboi:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzcip:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpm:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzciq:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbok:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzcir:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpn:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzcit:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpo:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzciu:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpp:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzciv:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpq:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzcis:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpl:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzcix:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpr:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzciy:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbps:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzcjc:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbol:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzcjd:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpt:Z

    const-string p1, "ContentFetchTask"

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzpt;)Lcom/google/android/gms/internal/ads/zzqd;
    .registers 13
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_9

    new-instance p1, Lcom/google/android/gms/internal/ads/zzqd;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzqd;-><init>(Lcom/google/android/gms/internal/ads/zzpz;II)V

    return-object p1

    :cond_9
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    instance-of v1, p1, Landroid/widget/TextView;

    const/4 v9, 0x1

    if-eqz v1, :cond_4e

    instance-of v1, p1, Landroid/widget/EditText;

    if-nez v1, :cond_4e

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v8, p1

    move-object v2, p2

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzpt;->zzb(Ljava/lang/String;ZFFFF)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzqd;

    invoke-direct {p1, p0, v9, v0}, Lcom/google/android/gms/internal/ads/zzqd;-><init>(Lcom/google/android/gms/internal/ads/zzpz;II)V

    return-object p1

    :cond_48
    new-instance p1, Lcom/google/android/gms/internal/ads/zzqd;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzqd;-><init>(Lcom/google/android/gms/internal/ads/zzpz;II)V

    return-object p1

    :cond_4e
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_7a

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzbbw;

    if-nez v1, :cond_7a

    check-cast p1, Landroid/webkit/WebView;

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    move-result v1

    if-nez v1, :cond_60

    const/4 p1, 0x0

    goto :goto_6c

    :cond_60
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzpt;->zzlq()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzqb;

    invoke-direct {v1, p0, p2, p1, v4}, Lcom/google/android/gms/internal/ads/zzqb;-><init>(Lcom/google/android/gms/internal/ads/zzpz;Lcom/google/android/gms/internal/ads/zzpt;Landroid/webkit/WebView;Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    :goto_6c
    if-eqz p1, :cond_74

    new-instance p1, Lcom/google/android/gms/internal/ads/zzqd;

    invoke-direct {p1, p0, v0, v9}, Lcom/google/android/gms/internal/ads/zzqd;-><init>(Lcom/google/android/gms/internal/ads/zzpz;II)V

    return-object p1

    :cond_74
    new-instance p1, Lcom/google/android/gms/internal/ads/zzqd;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzqd;-><init>(Lcom/google/android/gms/internal/ads/zzpz;II)V

    return-object p1

    :cond_7a
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_9f

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_82
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_99

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/google/android/gms/internal/ads/zzpz;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzpt;)Lcom/google/android/gms/internal/ads/zzqd;

    move-result-object v3

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzqd;->zzbqa:I

    add-int/2addr v1, v4

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzqd;->zzbqb:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    :cond_99
    new-instance p1, Lcom/google/android/gms/internal/ads/zzqd;

    invoke-direct {p1, p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqd;-><init>(Lcom/google/android/gms/internal/ads/zzpz;II)V

    return-object p1

    :cond_9f
    new-instance p1, Lcom/google/android/gms/internal/ads/zzqd;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzqd;-><init>(Lcom/google/android/gms/internal/ads/zzpz;II)V

    return-object p1
.end method

.method private static zzlv()Z
    .registers 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkm()Lcom/google/android/gms/internal/ads/zzpv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpv;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_c

    return v0

    :cond_c
    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const-string v3, "keyguard"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    if-eqz v2, :cond_5f

    if-nez v3, :cond_21

    goto :goto_5f

    :cond_21
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_28

    return v0

    :cond_28
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v6, :cond_2c

    iget v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v2, v4, :cond_5f

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-nez v2, :cond_5f

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    if-nez v1, :cond_58

    const/4 v1, 0x0

    goto :goto_5c

    :cond_58
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_60

    :goto_5c
    if-eqz v1, :cond_5f

    const/4 v0, 0x1

    :cond_5f
    :goto_5f
    return v0

    :catchall_60
    move-exception v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkn()Lcom/google/android/gms/internal/ads/zzatr;

    move-result-object v2

    const-string v3, "ContentFetchTask.isInForeground"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzatr;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0
.end method

.method private final zzlx()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpz;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpi:Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpi:Z

    const/16 v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ContentFetchThread: paused, mPause = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v1
.end method


# virtual methods
.method public final run()V
    .registers 5

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzpz;->zzlv()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkm()Lcom/google/android/gms/internal/ads/zzpv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpv;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_19

    const-string v0, "ContentFetchThread: no activity. Sleeping."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    :goto_15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpz;->zzlx()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_18} :catch_79
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_69

    goto :goto_60

    :cond_19
    if-eqz v0, :cond_60

    const/4 v1, 0x0

    :try_start_1c
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_4c

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4c

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3b} :catch_3d

    move-object v1, v0

    goto :goto_4c

    :catch_3d
    move-exception v0

    :try_start_3e
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkn()Lcom/google/android/gms/internal/ads/zzatr;

    move-result-object v2

    const-string v3, "ContentFetchTask.extractContent"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzatr;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Failed getting root view of activity. Content not extracted."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    if-eqz v1, :cond_60

    if-nez v1, :cond_51

    goto :goto_60

    :cond_51
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqc;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzqc;-><init>(Lcom/google/android/gms/internal/ads/zzpz;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_60

    :cond_5a
    const-string v0, "ContentFetchTask: sleeping"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    goto :goto_15

    :cond_60
    :goto_60
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpl:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_68
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_68} :catch_79
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_68} :catch_69

    goto :goto_7f

    :catch_69
    move-exception v0

    const-string v1, "Error in ContentFetchTask"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkn()Lcom/google/android/gms/internal/ads/zzatr;

    move-result-object v1

    const-string v2, "ContentFetchTask.run"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzatr;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_7f

    :catch_79
    move-exception v0

    const-string v1, "Error in ContentFetchTask"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpz;->lock:Ljava/lang/Object;

    monitor-enter v0

    :catch_82
    :goto_82
    :try_start_82
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpi:Z
    :try_end_84
    .catchall {:try_start_82 .. :try_end_84} :catchall_94

    if-eqz v1, :cond_91

    :try_start_86
    const-string v1, "ContentFetchTask: waiting"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpz;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_90
    .catch Ljava/lang/InterruptedException; {:try_start_86 .. :try_end_90} :catch_82
    .catchall {:try_start_86 .. :try_end_90} :catchall_94

    goto :goto_82

    :cond_91
    :try_start_91
    monitor-exit v0

    goto/16 :goto_0

    :catchall_94
    move-exception v1

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_91 .. :try_end_96} :catchall_94

    goto :goto_98

    :goto_97
    throw v1

    :goto_98
    goto :goto_97
.end method

.method public final wakeup()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpz;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpi:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpz;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const-string v1, "ContentFetchThread: wakeup"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v1
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzpt;Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 15
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpt;->zzlp()V

    :try_start_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "text"

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbps:Z

    if-nez p3, :cond_65

    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_65

    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/webkit/WebView;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/webkit/WebView;->getY()F

    move-result v7

    invoke-virtual {p2}, Landroid/webkit/WebView;->getWidth()I

    move-result p3

    int-to-float v8, p3

    invoke-virtual {p2}, Landroid/webkit/WebView;->getHeight()I

    move-result p2

    int-to-float v9, p2

    move-object v3, p1

    move v5, p4

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzpt;->zza(Ljava/lang/String;ZFFFF)V

    goto :goto_7c

    :cond_65
    invoke-virtual {p2}, Landroid/webkit/WebView;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/webkit/WebView;->getY()F

    move-result v5

    invoke-virtual {p2}, Landroid/webkit/WebView;->getWidth()I

    move-result p3

    int-to-float v6, p3

    invoke-virtual {p2}, Landroid/webkit/WebView;->getHeight()I

    move-result p2

    int-to-float v7, p2

    move-object v1, p1

    move v3, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzpt;->zza(Ljava/lang/String;ZFFFF)V

    :cond_7c
    :goto_7c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpt;->zzlk()Z

    move-result p2

    if-eqz p2, :cond_87

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpk:Lcom/google/android/gms/internal/ads/zzpw;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzpw;->zzb(Lcom/google/android/gms/internal/ads/zzpt;)Z
    :try_end_87
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_87} :catch_98
    .catchall {:try_start_3 .. :try_end_87} :catchall_88

    :cond_87
    return-void

    :catchall_88
    move-exception p1

    const-string p2, "Failed to get webview content."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkn()Lcom/google/android/gms/internal/ads/zzatr;

    move-result-object p2

    const-string p3, "ContentFetchTask.processWebViewContent"

    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzatr;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :catch_98
    const-string p1, "Json string may be malformed."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    return-void
.end method

.method final zzi(Landroid/view/View;)V
    .registers 12
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    :try_start_0
    new-instance v9, Lcom/google/android/gms/internal/ads/zzpt;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzboi:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpm:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbok:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpn:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpo:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpp:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpq:I

    iget-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbol:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzpt;-><init>(IIIIIIIZ)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkm()Lcom/google/android/gms/internal/ads/zzpv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpv;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_53

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzza;->zzciw:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_53

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    return-void

    :cond_53
    invoke-direct {p0, p1, v9}, Lcom/google/android/gms/internal/ads/zzpz;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzpt;)Lcom/google/android/gms/internal/ads/zzqd;

    move-result-object p1

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzpt;->zzls()V

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzqd;->zzbqa:I

    if-nez v0, :cond_63

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzqd;->zzbqb:I

    if-nez v0, :cond_63

    return-void

    :cond_63
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzqd;->zzbqb:I

    if-nez v0, :cond_6e

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzpt;->zzlt()I

    move-result v0

    if-nez v0, :cond_6e

    return-void

    :cond_6e
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqd;->zzbqb:I

    if-nez p1, :cond_7b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpk:Lcom/google/android/gms/internal/ads/zzpw;

    invoke-virtual {p1, v9}, Lcom/google/android/gms/internal/ads/zzpw;->zza(Lcom/google/android/gms/internal/ads/zzpt;)Z

    move-result p1

    if-eqz p1, :cond_7b

    return-void

    :cond_7b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpk:Lcom/google/android/gms/internal/ads/zzpw;

    invoke-virtual {p1, v9}, Lcom/google/android/gms/internal/ads/zzpw;->zzc(Lcom/google/android/gms/internal/ads/zzpt;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_80} :catch_81

    return-void

    :catch_81
    move-exception p1

    const-string v0, "Exception in fetchContentOnUIThread"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkn()Lcom/google/android/gms/internal/ads/zzatr;

    move-result-object v0

    const-string v1, "ContentFetchTask.fetchContent"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzatr;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zzlu()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpz;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpz;->started:Z

    if-eqz v1, :cond_e

    const-string v1, "Content hash thread already started, quiting..."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_e
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpz;->started:Z

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public final zzlw()Lcom/google/android/gms/internal/ads/zzpt;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpk:Lcom/google/android/gms/internal/ads/zzpw;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpt:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzpw;->zzn(Z)Lcom/google/android/gms/internal/ads/zzpt;

    move-result-object v0

    return-object v0
.end method

.method public final zzly()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbpi:Z

    return v0
.end method
