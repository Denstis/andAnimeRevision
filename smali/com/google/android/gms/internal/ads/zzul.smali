###### Class com.google.android.gms.internal.ads.zzul (com.google.android.gms.internal.ads.zzul)
.class final Lcom/google/android/gms/internal/ads/zzul;
.super Lcom/google/android/gms/internal/ads/zzus;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzus<",
        "Lcom/google/android/gms/internal/ads/zzano;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic zzcdf:Lcom/google/android/gms/internal/ads/zzug;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzug;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzul;->zzcdf:Lcom/google/android/gms/internal/ads/zzug;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzul;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzus;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzvu;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzul;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzvu;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzano;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zzoe()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzul;->val$activity:Landroid/app/Activity;

    const-string v1, "ad_overlay"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzug;->zzb(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic zzof()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzul;->zzcdf:Lcom/google/android/gms/internal/ads/zzug;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzug;->zzg(Lcom/google/android/gms/internal/ads/zzug;)Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzul;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzanm;->zzc(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzano;

    move-result-object v0

    return-object v0
.end method
