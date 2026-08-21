###### Class com.google.android.gms.ads.internal.zzn (com.google.android.gms.ads.internal.zzn)
.class final Lcom/google/android/gms/ads/internal/zzn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic zzblj:Lcom/google/android/gms/ads/internal/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzl;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzn;->zzblj:Lcom/google/android/gms/ads/internal/zzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzn;->zzblj:Lcom/google/android/gms/ads/internal/zzl;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzl;->zzb(Lcom/google/android/gms/ads/internal/zzl;)Lcom/google/android/gms/internal/ads/zzdf;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzn;->zzblj:Lcom/google/android/gms/ads/internal/zzl;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzl;->zzb(Lcom/google/android/gms/ads/internal/zzl;)Lcom/google/android/gms/internal/ads/zzdf;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdf;->zzb(Landroid/view/MotionEvent;)V

    :cond_11
    const/4 p1, 0x0

    return p1
.end method
