###### Class com.google.android.gms.ads.internal.overlay.zzj (com.google.android.gms.ads.internal.overlay.zzj)
.class final Lcom/google/android/gms/ads/internal/overlay/zzj;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field private zzdhs:Lcom/google/android/gms/internal/ads/zzavd;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field zzdht:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzavd;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzavd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzj;->zzdhs:Lcom/google/android/gms/internal/ads/zzavd;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzj;->zzdhs:Lcom/google/android/gms/internal/ads/zzavd;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzavd;->zzr(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzj;->zzdht:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzj;->zzdhs:Lcom/google/android/gms/internal/ads/zzavd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzavd;->zzd(Landroid/view/MotionEvent;)V

    :cond_9
    const/4 p1, 0x0

    return p1
.end method
