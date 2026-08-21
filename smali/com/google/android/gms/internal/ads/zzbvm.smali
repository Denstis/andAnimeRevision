###### Class com.google.android.gms.internal.ads.zzbvm (com.google.android.gms.internal.ads.zzbvm)
.class public final Lcom/google/android/gms/internal/ads/zzbvm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final zzbmp:Lcom/google/android/gms/common/util/Clock;

.field private final zzfnd:Lcom/google/android/gms/internal/ads/zzbyh;

.field private zzfne:Lcom/google/android/gms/internal/ads/zzadf;

.field private zzfnf:Lcom/google/android/gms/internal/ads/zzaer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field zzfng:Ljava/lang/String;

.field zzfnh:Ljava/lang/Long;

.field zzfni:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbyh;Lcom/google/android/gms/common/util/Clock;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzfnd:Lcom/google/android/gms/internal/ads/zzbyh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final zzaix()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzfng:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzfnh:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzfni:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_a

    return-void

    :cond_a
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzfni:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final cancelUnconfirmedClick()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzfne:Lcom/google/android/gms/internal/ads/zzadf;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzfnh:Ljava/lang/Long;

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbvm;->zzaix()V

    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzfne:Lcom/google/android/gms/internal/ads/zzadf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadf;->onUnconfirmedClickCancelled()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzfni:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_b

    goto :goto_47

    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzfng:Ljava/lang/String;

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzfnh:Ljava/lang/Long;

    if-nez p1, :cond_14

    goto :goto_44

    :cond_14
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzfng:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzfnh:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "time_interval"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "messageType"

    const-string v1, "onePointFiveClick"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzfnd:Lcom/google/android/gms/internal/ads/zzbyh;

    const-string v1, "sendMessageToNativeJs"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbyh;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_44
    :goto_44
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbvm;->zzaix()V

    :cond_47
    :goto_47
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzadf;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzfne:Lcom/google/android/gms/internal/ads/zzadf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzfnf:Lcom/google/android/gms/internal/ads/zzaer;

    const-string v1, "/unconfirmedClick"

    if-eqz v0, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzfnd:Lcom/google/android/gms/internal/ads/zzbyh;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzbyh;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbvp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbvp;-><init>(Lcom/google/android/gms/internal/ads/zzbvm;Lcom/google/android/gms/internal/ads/zzadf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzfnf:Lcom/google/android/gms/internal/ads/zzaer;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzfnd:Lcom/google/android/gms/internal/ads/zzbyh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzfnf:Lcom/google/android/gms/internal/ads/zzaer;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbyh;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    return-void
.end method

.method public final zzaiw()Lcom/google/android/gms/internal/ads/zzadf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzfne:Lcom/google/android/gms/internal/ads/zzadf;

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzbvp (com.google.android.gms.internal.ads.zzbvp)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbvp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaer;


# instance fields
.field private final zzfnj:Lcom/google/android/gms/internal/ads/zzbvm;

.field private final zzfnk:Lcom/google/android/gms/internal/ads/zzadf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbvm;Lcom/google/android/gms/internal/ads/zzadf;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvp;->zzfnj:Lcom/google/android/gms/internal/ads/zzbvm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvp;->zzfnk:Lcom/google/android/gms/internal/ads/zzadf;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvp;->zzfnj:Lcom/google/android/gms/internal/ads/zzbvm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvp;->zzfnk:Lcom/google/android/gms/internal/ads/zzadf;

    :try_start_4
    const-string v1, "timestamp"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p1, Lcom/google/android/gms/internal/ads/zzbvm;->zzfnh:Ljava/lang/Long;
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_16} :catch_17

    goto :goto_1c

    :catch_17
    const-string v1, "Failed to call parse unconfirmedClickTimestamp."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    :goto_1c
    const-string v1, "id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p1, Lcom/google/android/gms/internal/ads/zzbvm;->zzfng:Ljava/lang/String;

    const-string p1, "asset_id"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez v0, :cond_36

    const-string p1, "Received unconfirmed click but UnconfirmedClickListener is null."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    return-void

    :cond_36
    :try_start_36
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzadf;->onUnconfirmedClickReceived(Ljava/lang/String;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_39} :catch_3a

    return-void

    :catch_3a
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
