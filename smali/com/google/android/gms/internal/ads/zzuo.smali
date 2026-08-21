###### Class com.google.android.gms.internal.ads.zzuo (com.google.android.gms.internal.ads.zzuo)
.class final Lcom/google/android/gms/internal/ads/zzuo;
.super Lcom/google/android/gms/internal/ads/zzus;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzus<",
        "Lcom/google/android/gms/internal/ads/zzwb;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic zzcdf:Lcom/google/android/gms/internal/ads/zzug;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzug;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuo;->zzcdf:Lcom/google/android/gms/internal/ads/zzug;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzuo;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzus;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzvu;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuo;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    const v1, 0xee0d68

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzvu;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;I)Lcom/google/android/gms/internal/ads/zzwb;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zzoe()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuo;->val$context:Landroid/content/Context;

    const-string v1, "mobile_ads_settings"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzug;->zzb(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxs;-><init>()V

    return-object v0
.end method

.method public final synthetic zzof()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuo;->zzcdf:Lcom/google/android/gms/internal/ads/zzug;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzug;->zzc(Lcom/google/android/gms/internal/ads/zzug;)Lcom/google/android/gms/internal/ads/zzxn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuo;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzxn;->zzi(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzwb;

    move-result-object v0

    return-object v0
.end method
