###### Class com.google.android.gms.internal.ads.zzbav (com.google.android.gms.internal.ads.zzbav)
.class final Lcom/google/android/gms/internal/ads/zzbav;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzedd:Lcom/google/android/gms/internal/ads/zzbaw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbaw;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbav;->zzedd:Lcom/google/android/gms/internal/ads/zzbaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlf()Lcom/google/android/gms/internal/ads/zzbay;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbav;->zzedd:Lcom/google/android/gms/internal/ads/zzbaw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbay;->zzb(Lcom/google/android/gms/internal/ads/zzbaw;)V

    return-void
.end method
