###### Class com.google.android.gms.ads.internal.overlay.zzc (com.google.android.gms.ads.internal.overlay.zzc)
.class public Lcom/google/android/gms/ads/internal/overlay/zzc;
.super Lcom/google/android/gms/internal/ads/zzann;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzy;


# static fields
.field private static final zzdgu:I
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private zzbkw:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field zzczi:Lcom/google/android/gms/internal/ads/zzbbw;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzdgw:Lcom/google/android/gms/ads/internal/overlay/zzi;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzdgx:Lcom/google/android/gms/ads/internal/overlay/zzq;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzdgy:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzdgz:Landroid/widget/FrameLayout;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzdha:Landroid/webkit/WebChromeClient$CustomViewCallback;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzdhb:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzdhc:Lcom/google/android/gms/ads/internal/overlay/zzj;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzdhd:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field zzdhe:I
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final zzdhf:Ljava/lang/Object;

.field private zzdhg:Ljava/lang/Runnable;

.field private zzdhh:Z

.field private zzdhi:Z

.field private zzdhj:Z

.field private zzdhk:Z

.field private zzdhl:Z

.field protected final zzzr:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgu:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzann;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgy:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbkw:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhd:Z

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhe:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhf:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhj:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhk:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhl:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    return-void
.end method

.method private final zza(Landroid/content/res/Configuration;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdif:Lcom/google/android/gms/ads/internal/zzg;

    if-eqz v0, :cond_10

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzg;->zzbkx:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {v3, v4, p1}, Lcom/google/android/gms/internal/ads/zzaur;->zza(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result p1

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbkw:Z

    const/16 v4, 0x13

    if-eqz v3, :cond_23

    if-eqz v0, :cond_37

    :cond_23
    if-nez p1, :cond_37

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_38

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz p1, :cond_38

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdif:Lcom/google/android/gms/ads/internal/zzg;

    if-eqz p1, :cond_38

    iget-boolean p1, p1, Lcom/google/android/gms/ads/internal/zzg;->zzblc:Z

    if-eqz p1, :cond_38

    const/4 v2, 0x1

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :cond_38
    :goto_38
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzckw:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_66

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_66

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x100

    if-eqz v1, :cond_62

    const/16 v0, 0x1504

    if-eqz v2, :cond_62

    const/16 v0, 0x1706

    :cond_62
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :cond_66
    const/16 v0, 0x400

    const/16 v3, 0x800

    if-eqz v1, :cond_82

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1, v3}, Landroid/view/Window;->clearFlags(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_88

    if-eqz v2, :cond_88

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :cond_82
    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_88
    return-void
.end method

.method private final zzab(Z)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcqk:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/overlay/zzp;-><init>()V

    const/16 v2, 0x32

    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->size:I

    const/4 v2, 0x0

    if-eqz p1, :cond_1e

    move v3, v0

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->paddingLeft:I

    if-eqz p1, :cond_25

    const/4 v3, 0x0

    goto :goto_26

    :cond_25
    move v3, v0

    :goto_26
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->paddingRight:I

    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->paddingTop:I

    iput v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->paddingBottom:I

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzy;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgx:Lcom/google/android/gms/ads/internal/overlay/zzq;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_45

    const/16 v1, 0xb

    goto :goto_47

    :cond_45
    const/16 v1, 0x9

    :goto_47
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdia:Z

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zza(ZZ)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhc:Lcom/google/android/gms/ads/internal/overlay/zzj;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgx:Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final zzac(Z)V
    .registers 21

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhi:Z

    const/4 v2, 0x1

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_c
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1df

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    const/4 v4, 0x0

    if-eqz v3, :cond_20

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzp()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v3

    goto :goto_21

    :cond_20
    move-object v3, v4

    :goto_21
    const/4 v5, 0x0

    if-eqz v3, :cond_2c

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbdg;->zzyw()Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    iput-boolean v5, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhd:Z

    if-eqz v3, :cond_67

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v6, v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    const/4 v7, 0x6

    if-ne v6, v7, :cond_4d

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v2, :cond_4a

    :goto_49
    const/4 v5, 0x1

    :cond_4a
    iput-boolean v5, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhd:Z

    goto :goto_67

    :cond_4d
    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v6, v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    const/4 v7, 0x7

    if-ne v6, v7, :cond_67

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4a

    goto :goto_49

    :cond_67
    :goto_67
    iget-boolean v5, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhd:Z

    const/16 v6, 0x2e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Delay onShow to next orientation change: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {v1, v5}, Lcom/google/android/gms/ads/internal/overlay/zzc;->setRequestedOrientation(I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    const/high16 v5, 0x1000000

    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    const-string v0, "Hardware acceleration on the AdActivity window enabled."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbkw:Z

    if-nez v0, :cond_9c

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhc:Lcom/google/android/gms/ads/internal/overlay/zzj;

    const/high16 v5, -0x1000000

    goto :goto_a0

    :cond_9c
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhc:Lcom/google/android/gms/ads/internal/overlay/zzj;

    sget v5, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgu:I

    :goto_a0
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhc:Lcom/google/android/gms/ads/internal/overlay/zzj;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iput-boolean v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhi:Z

    if-eqz p1, :cond_16d

    :try_start_ae
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkk()Lcom/google/android/gms/internal/ads/zzbcb;

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v0, :cond_c3

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzn()Lcom/google/android/gms/internal/ads/zzbdj;

    move-result-object v0

    move-object v7, v0

    goto :goto_c4

    :cond_c3
    move-object v7, v4

    :goto_c4
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v0, :cond_d4

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzo()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_d5

    :cond_d4
    move-object v8, v4

    :goto_d5
    const/4 v9, 0x1

    const/4 v11, 0x0

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v12, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v0, :cond_ed

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzxo()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v0

    move-object v15, v0

    goto :goto_ee

    :cond_ed
    move-object v15, v4

    :goto_ee
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzsd;->zzmm()Lcom/google/android/gms/internal/ads/zzsd;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move v10, v3

    invoke-static/range {v6 .. v18}, Lcom/google/android/gms/internal/ads/zzbcb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdj;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzdf;Lcom/google/android/gms/internal/ads/zzaxl;Lcom/google/android/gms/internal/ads/zzaab;Lcom/google/android/gms/ads/internal/zzi;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzsd;Lcom/google/android/gms/internal/ads/zzrf;Z)Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_fd} :catch_15f

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzp()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcxc:Lcom/google/android/gms/internal/ads/zzadw;

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcxd:Lcom/google/android/gms/internal/ads/zzady;

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdic:Lcom/google/android/gms/ads/internal/overlay/zzt;

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v0, :cond_11d

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzp()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzyv()Lcom/google/android/gms/ads/internal/zzc;

    move-result-object v0

    move-object v13, v0

    goto :goto_11e

    :cond_11d
    move-object v13, v4

    :goto_11e
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v5 .. v15}, Lcom/google/android/gms/internal/ads/zzbdg;->zza(Lcom/google/android/gms/internal/ads/zztp;Lcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/internal/ads/zzady;Lcom/google/android/gms/ads/internal/overlay/zzt;ZLcom/google/android/gms/internal/ads/zzaeq;Lcom/google/android/gms/ads/internal/zzc;Lcom/google/android/gms/internal/ads/zzani;Lcom/google/android/gms/internal/ads/zzasi;)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzp()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/ads/internal/overlay/zzf;

    invoke-direct {v5, v1}, Lcom/google/android/gms/ads/internal/overlay/zzf;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/zzbdg;->zza(Lcom/google/android/gms/internal/ads/zzbdf;)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-eqz v5, :cond_13d

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/zzbbw;->loadUrl(Ljava/lang/String;)V

    goto :goto_14d

    :cond_13d
    iget-object v8, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdib:Ljava/lang/String;

    if-eqz v8, :cond_157

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdhz:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v9, "text/html"

    const-string v10, "UTF-8"

    invoke-interface/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzbbw;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_14d
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v0, :cond_17a

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbw;->zzb(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    goto :goto_17a

    :cond_157
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzg;

    const-string v2, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_15f
    move-exception v0

    const-string v2, "Error obtaining webview."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzg;

    const-string v2, "Could not obtain webview for the overlay."

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16d
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/zzbbw;->zzbr(Landroid/content/Context;)V

    :cond_17a
    :goto_17a
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbw;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v0, :cond_18e

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzt()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhc:Lcom/google/android/gms/ads/internal/overlay/zzj;

    invoke-static {v0, v5}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    :cond_18e
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1a5

    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1a5

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbbw;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1a5
    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbkw:Z

    if-eqz v0, :cond_1ae

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzaab()V

    :cond_1ae
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdhz:Ljava/lang/String;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdib:Ljava/lang/String;

    invoke-interface {v0, v4, v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzbbw;->zza(Landroid/view/ViewGroup;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhc:Lcom/google/android/gms/ads/internal/overlay/zzj;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbbw;->getView()Landroid/view/View;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_1d0

    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhd:Z

    if-nez v0, :cond_1d0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzsu()V

    :cond_1d0
    invoke-direct {v1, v3}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzab(Z)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzr()Z

    move-result v0

    if-eqz v0, :cond_1de

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zza(ZZ)V

    :cond_1de
    return-void

    :cond_1df
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzg;

    const-string v2, "Invalid activity, no window available."

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    goto :goto_1e8

    :goto_1e7
    throw v0

    :goto_1e8
    goto :goto_1e7
.end method

.method private static zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V
    .registers 3

    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzky()Lcom/google/android/gms/internal/ads/zzanl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzanl;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method private final zzsr()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhj:Z

    if-eqz v0, :cond_d

    goto :goto_50

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhj:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v0, :cond_4d

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhe:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbw;->zzdb(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhf:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1c
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhh:Z

    if-nez v1, :cond_48

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzx()Z

    move-result v1

    if-eqz v1, :cond_48

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zze;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zze;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhg:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhg:Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzza;->zzckt:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :cond_48
    monitor-exit v0

    goto :goto_4d

    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_1c .. :try_end_4c} :catchall_4a

    throw v1

    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzss()V

    :cond_50
    :goto_50
    return-void
.end method

.method private final zzsu()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzsu()V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhe:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public final onBackPressed()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhe:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    const-string v2, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhb:Z

    const/4 v2, 0x3

    :try_start_17
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzc(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_e4

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzaxl;->zzdwf:I

    const v4, 0x7270e0

    if-le v3, v4, :cond_34

    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhe:I

    :cond_34
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "shouldCallOnOverlayOpened"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhl:Z

    :cond_4a
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdif:Lcom/google/android/gms/ads/internal/zzg;

    if-eqz v3, :cond_59

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdif:Lcom/google/android/gms/ads/internal/zzg;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/zzg;->zzbkw:Z

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbkw:Z

    goto :goto_5b

    :cond_59
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbkw:Z

    :goto_5b
    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbkw:Z

    if-eqz v3, :cond_71

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdif:Lcom/google/android/gms/ads/internal/zzg;

    iget v3, v3, Lcom/google/android/gms/ads/internal/zzg;->zzblb:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_71

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/zzl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzl;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/overlay/zzh;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzauc;->zzut()Lcom/google/android/gms/internal/ads/zzddi;

    :cond_71
    if-nez p1, :cond_97

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdhy:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz p1, :cond_84

    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhl:Z

    if-eqz p1, :cond_84

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdhy:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzsj()V

    :cond_84
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdid:I

    if-eq p1, v1, :cond_97

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcbs:Lcom/google/android/gms/internal/ads/zztp;

    if-eqz p1, :cond_97

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcbs:Lcom/google/android/gms/internal/ads/zztp;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zztp;->onAdClicked()V

    :cond_97
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzj;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdie:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaxl;->zzblz:Ljava/lang/String;

    invoke-direct {p1, v3, v4, v5}, Lcom/google/android/gms/ads/internal/overlay/zzj;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhc:Lcom/google/android/gms/ads/internal/overlay/zzj;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhc:Lcom/google/android/gms/ads/internal/overlay/zzj;

    const/16 v3, 0x3e8

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzaur;->zzg(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdid:I

    if-eq p1, v1, :cond_e0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_d1

    if-ne p1, v2, :cond_c9

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzac(Z)V

    return-void

    :cond_c9
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzg;

    const-string v0, "Could not determine ad overlay type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d1
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-direct {p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzi;-><init>(Lcom/google/android/gms/internal/ads/zzbbw;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgw:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzac(Z)V

    return-void

    :cond_e0
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzac(Z)V

    return-void

    :cond_e4
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzg;

    const-string v0, "Could not get info for ad overlay."

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_ec
    .catch Lcom/google/android/gms/ads/internal/overlay/zzg; {:try_start_17 .. :try_end_ec} :catch_ec

    :catch_ec
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhe:I

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhc:Lcom/google/android/gms/ads/internal/overlay/zzj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_d
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzsr()V

    return-void
.end method

.method public final onPause()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzsn()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdhy:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->onPause()V

    :cond_c
    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcqi:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgw:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-nez v0, :cond_36

    :cond_2e
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaur;->zza(Lcom/google/android/gms/internal/ads/zzbbw;)Z

    :cond_36
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzsr()V

    return-void
.end method

.method public final onRestart()V
    .registers 1

    return-void
.end method

.method public final onResume()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdhy:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->onResume()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zza(Landroid/content/res/Configuration;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcqi:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v0, :cond_3b

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaur;->zzb(Lcom/google/android/gms/internal/ads/zzbbw;)Z

    return-void

    :cond_3b
    const-string v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    :cond_40
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhb:Z

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStart()V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcqi:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaur;->zzb(Lcom/google/android/gms/internal/ads/zzbbw;)Z

    return-void

    :cond_25
    const-string v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public final onStop()V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcqi:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgw:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-nez v0, :cond_2a

    :cond_22
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaur;->zza(Lcom/google/android/gms/internal/ads/zzbbw;)Z

    :cond_2a
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzsr()V

    return-void
.end method

.method public final setRequestedOrientation(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzza;->zzcsn:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_5d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzza;->zzcso:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_5d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzza;->zzcsp:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_5d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzza;->zzcsq:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_5d

    return-void

    :cond_5d
    :try_start_5d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_63

    return-void

    :catchall_63
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkn()Lcom/google/android/gms/internal/ads/zzatr;

    move-result-object v0

    const-string v1, "AdOverlay.setRequestedOrientation"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzatr;->zzb(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 5

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgz:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgz:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgz:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgz:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhi:Z

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdha:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgy:Z

    return-void
.end method

.method public final zza(ZZ)V
    .registers 9

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcku:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_22

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdif:Lcom/google/android/gms/ads/internal/zzg;

    if-eqz v0, :cond_22

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzg;->zzbld:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    sget-object v3, Lcom/google/android/gms/internal/ads/zzza;->zzckv:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_43

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_43

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdif:Lcom/google/android/gms/ads/internal/zzg;

    if-eqz v3, :cond_43

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/zzg;->zzble:Z

    if-eqz v3, :cond_43

    const/4 v3, 0x1

    goto :goto_44

    :cond_43
    const/4 v3, 0x0

    :goto_44
    if-eqz p1, :cond_5a

    if-eqz p2, :cond_5a

    if-eqz v0, :cond_5a

    if-nez v3, :cond_5a

    new-instance p1, Lcom/google/android/gms/internal/ads/zzanj;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    const-string v5, "useCustomClose"

    invoke-direct {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzanj;-><init>(Lcom/google/android/gms/internal/ads/zzbbw;Ljava/lang/String;)V

    const-string v4, "Custom close has been disabled for interstitial ads in this ad slot."

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzanj;->zzdn(Ljava/lang/String;)V

    :cond_5a
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgx:Lcom/google/android/gms/ads/internal/overlay/zzq;

    if-eqz p1, :cond_69

    if-nez v3, :cond_66

    if-eqz p2, :cond_65

    if-nez v0, :cond_65

    goto :goto_66

    :cond_65
    const/4 v1, 0x0

    :cond_66
    :goto_66
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzq;->zzae(Z)V

    :cond_69
    return-void
.end method

.method public final zzag(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Configuration;

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zza(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final zzda()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhi:Z

    return-void
.end method

.method public final zzsn()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_d

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgy:Z

    if-eqz v1, :cond_d

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->setRequestedOrientation(I)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgz:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhc:Lcom/google/android/gms/ads/internal/overlay/zzj;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhi:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgz:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgz:Landroid/widget/FrameLayout;

    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdha:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdha:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgy:Z

    return-void
.end method

.method public final zzso()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhe:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final zzsp()Z
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhe:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-nez v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzw()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "onbackblocked"

    invoke-interface {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzagn;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1a
    return v0
.end method

.method public final zzsq()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhc:Lcom/google/android/gms/ads/internal/overlay/zzj;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgx:Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzab(Z)V

    return-void
.end method

.method final zzss()V
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhk:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhk:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v0, :cond_52

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhc:Lcom/google/android/gms/ads/internal/overlay/zzj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgw:Lcom/google/android/gms/ads/internal/overlay/zzi;

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzlk:Landroid/content/Context;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzbr(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzbbw;->zzas(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgw:Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzi;->parent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbbw;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgw:Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget v4, v3, Lcom/google/android/gms/ads/internal/overlay/zzi;->index:I

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzdhr:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgw:Lcom/google/android/gms/ads/internal/overlay/zzi;

    goto :goto_50

    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzbbw;->zzbr(Landroid/content/Context;)V

    :cond_50
    :goto_50
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    :cond_52
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_5d

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdhy:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_5d

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzsi()V

    :cond_5d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_74

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v0, :cond_74

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzt()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdgv:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbbw;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    :cond_74
    return-void
.end method

.method public final zzst()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhd:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhd:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzsu()V

    :cond_a
    return-void
.end method

.method public final zzsv()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhc:Lcom/google/android/gms/ads/internal/overlay/zzj;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzj;->zzdht:Z

    return-void
.end method

.method public final zzsw()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhf:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhh:Z

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhg:Ljava/lang/Runnable;

    if-eqz v1, :cond_18

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhg:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhg:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw v1
.end method

###### Class com.google.android.gms.ads.internal.overlay.zze (com.google.android.gms.ads.internal.overlay.zze)
.class final synthetic Lcom/google/android/gms/ads/internal/overlay/zze;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdhq:Lcom/google/android/gms/ads/internal/overlay/zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdhq:Lcom/google/android/gms/ads/internal/overlay/zzc;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdhq:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzss()V

    return-void
.end method

###### Class com.google.android.gms.ads.internal.overlay.zzf (com.google.android.gms.ads.internal.overlay.zzf)
.class final synthetic Lcom/google/android/gms/ads/internal/overlay/zzf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbdf;


# instance fields
.field private final zzdhq:Lcom/google/android/gms/ads/internal/overlay/zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzf;->zzdhq:Lcom/google/android/gms/ads/internal/overlay/zzc;

    return-void
.end method


# virtual methods
.method public final zzad(Z)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzf;->zzdhq:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->zzsu()V

    :cond_9
    return-void
.end method
