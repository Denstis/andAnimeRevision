###### Class com.google.android.gms.internal.ads.zzup (com.google.android.gms.internal.ads.zzup)
.class final Lcom/google/android/gms/internal/ads/zzup;
.super Lcom/google/android/gms/internal/ads/zzus;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzus<",
        "Lcom/google/android/gms/internal/ads/zzve;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic zzcdd:Ljava/lang/String;

.field private final synthetic zzcde:Lcom/google/android/gms/internal/ads/zzajx;

.field private final synthetic zzcdf:Lcom/google/android/gms/internal/ads/zzug;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzug;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajx;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzup;->zzcdf:Lcom/google/android/gms/internal/ads/zzug;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzup;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzup;->zzcdd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzup;->zzcde:Lcom/google/android/gms/internal/ads/zzajx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzus;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzvu;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzup;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzup;->zzcdd:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzup;->zzcde:Lcom/google/android/gms/internal/ads/zzajx;

    const v3, 0xee0d68

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzvu;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajx;I)Lcom/google/android/gms/internal/ads/zzve;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zzoe()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzup;->val$context:Landroid/content/Context;

    const-string v1, "native_ad"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzug;->zzb(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxm;-><init>()V

    return-object v0
.end method

.method public final synthetic zzof()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzup;->zzcdf:Lcom/google/android/gms/internal/ads/zzug;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzug;->zzb(Lcom/google/android/gms/internal/ads/zzug;)Lcom/google/android/gms/internal/ads/zzts;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzup;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzup;->zzcdd:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzup;->zzcde:Lcom/google/android/gms/internal/ads/zzajx;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzts;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajx;)Lcom/google/android/gms/internal/ads/zzve;

    move-result-object v0

    return-object v0
.end method
