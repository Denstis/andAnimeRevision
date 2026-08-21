###### Class com.google.android.gms.internal.ads.zzddm (com.google.android.gms.internal.ads.zzddm)
.class final Lcom/google/android/gms/internal/ads/zzddm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzgrt:Ljava/lang/Runnable;

.field private final synthetic zzgru:Lcom/google/android/gms/internal/ads/zzddn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzddn;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddm;->zzgru:Lcom/google/android/gms/internal/ads/zzddn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzddm;->zzgrt:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddm;->zzgru:Lcom/google/android/gms/internal/ads/zzddn;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzddn;->zzgrv:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddm;->zzgrt:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
