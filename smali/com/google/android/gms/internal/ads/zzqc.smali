###### Class com.google.android.gms.internal.ads.zzqc (com.google.android.gms.internal.ads.zzqc)
.class final Lcom/google/android/gms/internal/ads/zzqc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbpy:Lcom/google/android/gms/internal/ads/zzpz;

.field private final synthetic zzbpz:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzpz;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzbpy:Lcom/google/android/gms/internal/ads/zzpz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzbpz:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzbpy:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzbpz:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzpz;->zzi(Landroid/view/View;)V

    return-void
.end method
