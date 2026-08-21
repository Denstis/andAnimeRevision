###### Class com.google.android.gms.internal.ads.zzbch (com.google.android.gms.internal.ads.zzbch)
.class final Lcom/google/android/gms/internal/ads/zzbch;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzefv:Lcom/google/android/gms/internal/ads/zzbci;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbci;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbch;->zzefv:Lcom/google/android/gms/internal/ads/zzbci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbch;->zzefv:Lcom/google/android/gms/internal/ads/zzbci;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbci;->zza(Lcom/google/android/gms/internal/ads/zzbci;)Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->destroy()V

    return-void
.end method
