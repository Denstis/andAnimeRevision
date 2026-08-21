###### Class com.google.android.gms.internal.ads.zzuj (com.google.android.gms.internal.ads.zzuj)
.class final Lcom/google/android/gms/internal/ads/zzuj;
.super Lcom/google/android/gms/internal/ads/zzus;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzus<",
        "Lcom/google/android/gms/internal/ads/zzvl;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic zzcdd:Ljava/lang/String;

.field private final synthetic zzcde:Lcom/google/android/gms/internal/ads/zzajx;

.field private final synthetic zzcdf:Lcom/google/android/gms/internal/ads/zzug;

.field private final synthetic zzcdg:Lcom/google/android/gms/internal/ads/zzua;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzug;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzua;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajx;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuj;->zzcdf:Lcom/google/android/gms/internal/ads/zzug;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzuj;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzuj;->zzcdg:Lcom/google/android/gms/internal/ads/zzua;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzuj;->zzcdd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzuj;->zzcde:Lcom/google/android/gms/internal/ads/zzajx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzus;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzvu;)Ljava/lang/Object;
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuj;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzuj;->zzcdg:Lcom/google/android/gms/internal/ads/zzua;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzuj;->zzcdd:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzuj;->zzcde:Lcom/google/android/gms/internal/ads/zzajx;

    const v6, 0xee0d68

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzvu;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzua;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajx;I)Lcom/google/android/gms/internal/ads/zzvl;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzoe()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuj;->val$context:Landroid/content/Context;

    const-string v1, "banner"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzug;->zzb(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxq;-><init>()V

    return-object v0
.end method

.method public final synthetic zzof()Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuj;->zzcdf:Lcom/google/android/gms/internal/ads/zzug;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzug;->zza(Lcom/google/android/gms/internal/ads/zzug;)Lcom/google/android/gms/internal/ads/zztv;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzuj;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzuj;->zzcdg:Lcom/google/android/gms/internal/ads/zzua;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzuj;->zzcdd:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzuj;->zzcde:Lcom/google/android/gms/internal/ads/zzajx;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zztv;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzua;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajx;I)Lcom/google/android/gms/internal/ads/zzvl;

    move-result-object v0

    return-object v0
.end method
