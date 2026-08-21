###### Class com.google.android.gms.internal.ads.zzayd (com.google.android.gms.internal.ads.zzayd)
.class public final Lcom/google/android/gms/internal/ads/zzayd;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzayg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzayg;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayi;->attach()V

    return-void
.end method

.method public static zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzayf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzayf;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayi;->attach()V

    return-void
.end method
