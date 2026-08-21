###### Class com.google.android.gms.internal.ads.zzcpc (com.google.android.gms.internal.ads.zzcpc)
.class public final Lcom/google/android/gms/internal/ads/zzcpc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcru;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcru<",
        "Lcom/google/android/gms/internal/ads/zzcoz;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzddl;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpc;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpc;->zzlk:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zzalv()Lcom/google/android/gms/internal/ads/zzddi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzcoz;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpc;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcpb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcpb;-><init>(Lcom/google/android/gms/internal/ads/zzcpc;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzddl;->zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzalz()Lcom/google/android/gms/internal/ads/zzcoz;
    .registers 9

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpc;->zzlk:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    const/4 v2, -0x1

    const-string v3, "status"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "level"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "scale"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-double v4, v4

    int-to-double v6, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    const/4 v0, 0x2

    if-eq v3, v0, :cond_33

    const/4 v0, 0x5

    if-ne v3, v0, :cond_38

    :cond_33
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_38

    :cond_36
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    :cond_38
    :goto_38
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcoz;

    invoke-direct {v0, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzcoz;-><init>(DZ)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzcpb (com.google.android.gms.internal.ads.zzcpb)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcpb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgew:Lcom/google/android/gms/internal/ads/zzcpc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcpc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpb;->zzgew:Lcom/google/android/gms/internal/ads/zzcpc;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpb;->zzgew:Lcom/google/android/gms/internal/ads/zzcpc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpc;->zzalz()Lcom/google/android/gms/internal/ads/zzcoz;

    move-result-object v0

    return-object v0
.end method
