###### Class com.google.android.gms.internal.ads.zzawv (com.google.android.gms.internal.ads.zzawv)
.class public final Lcom/google/android/gms/internal/ads/zzawv;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final view:Landroid/view/View;

.field private zzbny:Z

.field private zzbsc:Z

.field private zzdvj:Landroid/app/Activity;

.field private zzdvk:Z

.field private zzdvl:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private zzdvm:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawv;->zzdvj:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzawv;->view:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzawv;->zzdvl:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawv;->zzdvm:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method private static zzi(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_b

    return-object v0

    :cond_b
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_12

    return-object v0

    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    return-object p0
.end method

.method private final zzwh()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawv;->zzdvk:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawv;->zzdvl:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawv;->zzdvj:Landroid/app/Activity;

    if-eqz v1, :cond_15

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzawv;->zzi(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlg()Lcom/google/android/gms/internal/ads/zzayd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawv;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawv;->zzdvl:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzayd;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawv;->zzdvk:Z

    :cond_22
    return-void
.end method

.method private final zzwi()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawv;->zzdvj:Landroid/app/Activity;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzawv;->zzdvk:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawv;->zzdvl:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_19

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawv;->zzi(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawv;->zzdvk:Z

    :cond_1c
    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawv;->zzbny:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawv;->zzbsc:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawv;->zzwh()V

    :cond_a
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawv;->zzbny:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawv;->zzwi()V

    return-void
.end method

.method public final zzh(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawv;->zzdvj:Landroid/app/Activity;

    return-void
.end method

.method public final zzwf()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawv;->zzbsc:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawv;->zzbny:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawv;->zzwh()V

    :cond_a
    return-void
.end method

.method public final zzwg()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawv;->zzbsc:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawv;->zzwi()V

    return-void
.end method
