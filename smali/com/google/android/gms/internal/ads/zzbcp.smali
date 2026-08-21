###### Class com.google.android.gms.internal.ads.zzbcp (com.google.android.gms.internal.ads.zzbcp)
.class public final Lcom/google/android/gms/internal/ads/zzbcp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<WebViewT::",
        "Lcom/google/android/gms/internal/ads/zzbct;",
        ":",
        "Lcom/google/android/gms/internal/ads/zzbdb;",
        ":",
        "Lcom/google/android/gms/internal/ads/zzbdd;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzehs:Lcom/google/android/gms/internal/ads/zzbcu;

.field private final zzeht:Lcom/google/android/gms/internal/ads/zzbct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TWebViewT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbct;Lcom/google/android/gms/internal/ads/zzbcu;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWebViewT;",
            "Lcom/google/android/gms/internal/ads/zzbcu;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbcp;->zzehs:Lcom/google/android/gms/internal/ads/zzbcu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcp;->zzeht:Lcom/google/android/gms/internal/ads/zzbct;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzbbw;)Lcom/google/android/gms/internal/ads/zzbcp;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbbw;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzbcp<",
            "Lcom/google/android/gms/internal/ads/zzbbw;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcp;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbcs;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbcs;-><init>(Lcom/google/android/gms/internal/ads/zzbbw;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbcp;-><init>(Lcom/google/android/gms/internal/ads/zzbct;Lcom/google/android/gms/internal/ads/zzbcu;)V

    return-object v0
.end method


# virtual methods
.method public final getClickSignals(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_e

    const-string p1, "Click string is empty, not proceeding."

    :goto_a
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    return-object v1

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcp;->zzeht:Lcom/google/android/gms/internal/ads/zzbct;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdb;->zzzs()Lcom/google/android/gms/internal/ads/zzdf;

    move-result-object v0

    if-nez v0, :cond_1b

    const-string p1, "Signal utils is empty, ignoring."

    goto :goto_a

    :cond_1b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdf;->zzcd()Lcom/google/android/gms/internal/ads/zzdc;

    move-result-object v0

    if-nez v0, :cond_24

    const-string p1, "Signals object is empty, ignoring."

    goto :goto_a

    :cond_24
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbcp;->zzeht:Lcom/google/android/gms/internal/ads/zzbct;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbct;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2f

    const-string p1, "Context is null, ignoring."

    goto :goto_a

    :cond_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcp;->zzeht:Lcom/google/android/gms/internal/ads/zzbct;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbct;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbcp;->zzeht:Lcom/google/android/gms/internal/ads/zzbct;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbdd;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbdd;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcp;->zzeht:Lcom/google/android/gms/internal/ads/zzbct;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbct;->zzxn()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdc;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final notify(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "URL is empty, ignoring message"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-void

    :cond_c
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbcr;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbcr;-><init>(Lcom/google/android/gms/internal/ads/zzbcp;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final synthetic zzfl(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcp;->zzehs:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/net/Uri;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzbcr (com.google.android.gms.internal.ads.zzbcr)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbcr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcyz:Ljava/lang/String;

.field private final zzehu:Lcom/google/android/gms/internal/ads/zzbcp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcp;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcr;->zzehu:Lcom/google/android/gms/internal/ads/zzbcp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbcr;->zzcyz:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcr;->zzehu:Lcom/google/android/gms/internal/ads/zzbcp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcr;->zzcyz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcp;->zzfl(Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzbcs (com.google.android.gms.internal.ads.zzbcs)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbcs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcu;


# instance fields
.field private final zzehv:Lcom/google/android/gms/internal/ads/zzbbw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbw;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzehv:Lcom/google/android/gms/internal/ads/zzbbw;

    return-void
.end method


# virtual methods
.method public final zzh(Landroid/net/Uri;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzehv:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzp()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v0

    if-nez v0, :cond_e

    const-string p1, "Unable to pass GMSG, no AdWebViewClient for AdWebView!"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    return-void

    :cond_e
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdg;->zzh(Landroid/net/Uri;)V

    return-void
.end method
