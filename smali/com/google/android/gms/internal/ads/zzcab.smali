###### Class com.google.android.gms.internal.ads.zzcab (com.google.android.gms.internal.ads.zzcab)
.class public final Lcom/google/android/gms/internal/ads/zzcab;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private zzfqx:Landroid/widget/PopupWindow;

.field private zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zzb(Landroid/content/Context;Landroid/view/View;)Landroid/widget/PopupWindow;
    .registers 7

    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_e

    :cond_d
    move-object v0, v1

    :goto_e
    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_17

    goto :goto_4c

    :cond_17
    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_21

    return-object v1

    :cond_21
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {p0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, p1, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    new-instance p0, Landroid/widget/PopupWindow;

    const/4 p1, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4, v4, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    invoke-virtual {p0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const-string v2, "Displaying the 1x1 popup off the screen."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    :try_start_44
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4b} :catch_4c

    return-object p0

    :catch_4c
    :cond_4c
    :goto_4c
    return-object v1
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1b

    :cond_d
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcab;->zzb(Landroid/content/Context;Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcab;->zzfqx:Landroid/widget/PopupWindow;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcab;->zzfqx:Landroid/widget/PopupWindow;

    if-eqz p2, :cond_18

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcab;->zzlk:Landroid/content/Context;

    :cond_1b
    :goto_1b
    return-void
.end method

.method public final zzajm()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcab;->zzlk:Landroid/content/Context;

    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcab;->zzfqx:Landroid/widget/PopupWindow;

    if-nez v1, :cond_9

    goto :goto_29

    :cond_9
    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_16
    :goto_16
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcab;->zzlk:Landroid/content/Context;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcab;->zzfqx:Landroid/widget/PopupWindow;

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcab;->zzfqx:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcab;->zzfqx:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_16

    :cond_29
    :goto_29
    return-void
.end method
