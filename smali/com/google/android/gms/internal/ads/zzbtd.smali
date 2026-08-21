###### Class com.google.android.gms.internal.ads.zzbtd (com.google.android.gms.internal.ads.zzbtd)
.class public final Lcom/google/android/gms/internal/ads/zzbtd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbna;
.implements Lcom/google/android/gms/internal/ads/zzbqk;


# instance fields
.field private final view:Landroid/view/View;

.field private final zzbnf:Lcom/google/android/gms/internal/ads/zzasl;

.field private final zzfff:Lcom/google/android/gms/internal/ads/zzasm;

.field private final zzfis:I

.field private zzfiy:Ljava/lang/String;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzasm;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasl;Landroid/view/View;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzfff:Lcom/google/android/gms/internal/ads/zzasm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzlk:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzbnf:Lcom/google/android/gms/internal/ads/zzasl;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbtd;->view:Landroid/view/View;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzfis:I

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzfff:Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzasm;->zzaf(Z)V

    return-void
.end method

.method public final onAdLeftApplication()V
    .registers 1

    return-void
.end method

.method public final onAdOpened()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->view:Landroid/view/View;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzfiy:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzbnf:Lcom/google/android/gms/internal/ads/zzasl;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzfiy:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzasl;->zzg(Landroid/content/Context;Ljava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzfff:Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzasm;->zzaf(Z)V

    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .registers 1

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .registers 1

    return-void
.end method

.method public final zzagn()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzbnf:Lcom/google/android/gms/internal/ads/zzasl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzlk:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzasl;->zzad(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzfiy:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzfiy:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzfis:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_18

    const-string v1, "/Rewarded"

    goto :goto_1a

    :cond_18
    const-string v1, "/Interstitial"

    :goto_1a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_25
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_2b
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzfiy:Ljava/lang/String;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzapy;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzbnf:Lcom/google/android/gms/internal/ads/zzasl;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzlk:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzasl;->zzab(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2e

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzbnf:Lcom/google/android/gms/internal/ads/zzasl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzlk:Landroid/content/Context;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzbnf:Lcom/google/android/gms/internal/ads/zzasl;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzlk:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzasl;->zzag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzfff:Lcom/google/android/gms/internal/ads/zzasm;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzasm;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzapy;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzapy;->getAmount()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzasl;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_27} :catch_28

    return-void

    :catch_28
    move-exception p1

    const-string p2, "Remote Exception to get reward item."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2e
    return-void
.end method
