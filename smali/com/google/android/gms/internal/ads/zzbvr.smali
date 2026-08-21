###### Class com.google.android.gms.internal.ads.zzbvr (com.google.android.gms.internal.ads.zzbvr)
.class public final Lcom/google/android/gms/internal/ads/zzbvr;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzfkp:Lcom/google/android/gms/internal/ads/zzbuz;

.field private final zzfnd:Lcom/google/android/gms/internal/ads/zzbyh;

.field private final zzfnm:Lcom/google/android/gms/internal/ads/zzbzl;

.field private final zzfnn:Lcom/google/android/gms/internal/ads/zzbhx;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzl;Lcom/google/android/gms/internal/ads/zzbyh;Lcom/google/android/gms/internal/ads/zzbhx;Lcom/google/android/gms/internal/ads/zzbuz;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvr;->zzlk:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvr;->zzfnm:Lcom/google/android/gms/internal/ads/zzbzl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbvr;->zzfnd:Lcom/google/android/gms/internal/ads/zzbyh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbvr;->zzfnn:Lcom/google/android/gms/internal/ads/zzbhx;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbvr;->zzfkp:Lcom/google/android/gms/internal/ads/zzbuz;

    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzbbw;Ljava/util/Map;)V
    .registers 3

    const-string p2, "Hiding native ads overlay."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->getView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvr;->zzfnn:Lcom/google/android/gms/internal/ads/zzbhx;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbhx;->zzax(Z)V

    return-void
.end method

.method final synthetic zza(Ljava/util/Map;Z)V
    .registers 5

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "messageType"

    const-string v1, "htmlLoaded"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvr;->zzfnd:Lcom/google/android/gms/internal/ads/zzbyh;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbyh;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzaiy()Landroid/view/View;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvr;->zzfnm:Lcom/google/android/gms/internal/ads/zzbzl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvr;->zzlk:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzua;->zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzua;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbzl;->zza(Lcom/google/android/gms/internal/ads/zzua;Z)Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbvq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbvq;-><init>(Lcom/google/android/gms/internal/ads/zzbvr;)V

    const-string v2, "/sendMessageToSdk"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbbw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbvt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbvt;-><init>(Lcom/google/android/gms/internal/ads/zzbvr;)V

    const-string v2, "/adMuted"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbbw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvr;->zzfnd:Lcom/google/android/gms/internal/ads/zzbyh;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbvs;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzbvs;-><init>(Lcom/google/android/gms/internal/ads/zzbvr;)V

    const-string v4, "/loadHtml"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzbyh;->zza(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvr;->zzfnd:Lcom/google/android/gms/internal/ads/zzbyh;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbvv;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzbvv;-><init>(Lcom/google/android/gms/internal/ads/zzbvr;)V

    const-string v4, "/showOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzbyh;->zza(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvr;->zzfnd:Lcom/google/android/gms/internal/ads/zzbyh;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbvu;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzbvu;-><init>(Lcom/google/android/gms/internal/ads/zzbvr;)V

    const-string v4, "/hideOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzbyh;->zza(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzbbw;Ljava/util/Map;)V
    .registers 3

    const-string p2, "Showing native ads overlay."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->getView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvr;->zzfnn:Lcom/google/android/gms/internal/ads/zzbhx;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbhx;->zzax(Z)V

    return-void
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzbbw;Ljava/util/Map;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvr;->zzfkp:Lcom/google/android/gms/internal/ads/zzbuz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbuz;->zzahe()V

    return-void
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzbbw;Ljava/util/Map;)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvr;->zzfnd:Lcom/google/android/gms/internal/ads/zzbyh;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbyh;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzbvq (com.google.android.gms.internal.ads.zzbvq)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbvq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaer;


# instance fields
.field private final zzfnl:Lcom/google/android/gms/internal/ads/zzbvr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbvr;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvq;->zzfnl:Lcom/google/android/gms/internal/ads/zzbvr;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvq;->zzfnl:Lcom/google/android/gms/internal/ads/zzbvr;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbvr;->zzd(Lcom/google/android/gms/internal/ads/zzbbw;Ljava/util/Map;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzbvs (com.google.android.gms.internal.ads.zzbvs)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbvs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaer;


# instance fields
.field private final zzfnl:Lcom/google/android/gms/internal/ads/zzbvr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbvr;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvs;->zzfnl:Lcom/google/android/gms/internal/ads/zzbvr;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvs;->zzfnl:Lcom/google/android/gms/internal/ads/zzbvr;

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzp()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbvx;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/ads/zzbvx;-><init>(Lcom/google/android/gms/internal/ads/zzbvr;Ljava/util/Map;)V

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzbdg;->zza(Lcom/google/android/gms/internal/ads/zzbdf;)V

    const-string p1, "overlayHtml"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    const-string p1, "baseUrl"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_31

    const-string p1, "text/html"

    const-string p2, "UTF-8"

    invoke-interface {v1, v3, p1, p2}, Lcom/google/android/gms/internal/ads/zzbbw;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_31
    const/4 v6, 0x0

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbbw;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzbvx (com.google.android.gms.internal.ads.zzbvx)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbvx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbdf;


# instance fields
.field private final zzdwd:Ljava/util/Map;

.field private final zzfnl:Lcom/google/android/gms/internal/ads/zzbvr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbvr;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzfnl:Lcom/google/android/gms/internal/ads/zzbvr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzdwd:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zzad(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzfnl:Lcom/google/android/gms/internal/ads/zzbvr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzdwd:Ljava/util/Map;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbvr;->zza(Ljava/util/Map;Z)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzbvt (com.google.android.gms.internal.ads.zzbvt)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbvt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaer;


# instance fields
.field private final zzfnl:Lcom/google/android/gms/internal/ads/zzbvr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbvr;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvt;->zzfnl:Lcom/google/android/gms/internal/ads/zzbvr;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvt;->zzfnl:Lcom/google/android/gms/internal/ads/zzbvr;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbvr;->zzc(Lcom/google/android/gms/internal/ads/zzbbw;Ljava/util/Map;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzbvu (com.google.android.gms.internal.ads.zzbvu)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbvu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaer;


# instance fields
.field private final zzfnl:Lcom/google/android/gms/internal/ads/zzbvr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbvr;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvu;->zzfnl:Lcom/google/android/gms/internal/ads/zzbvr;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvu;->zzfnl:Lcom/google/android/gms/internal/ads/zzbvr;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbvr;->zza(Lcom/google/android/gms/internal/ads/zzbbw;Ljava/util/Map;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzbvv (com.google.android.gms.internal.ads.zzbvv)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbvv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaer;


# instance fields
.field private final zzfnl:Lcom/google/android/gms/internal/ads/zzbvr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbvr;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzfnl:Lcom/google/android/gms/internal/ads/zzbvr;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzfnl:Lcom/google/android/gms/internal/ads/zzbvr;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbvr;->zzb(Lcom/google/android/gms/internal/ads/zzbbw;Ljava/util/Map;)V

    return-void
.end method
