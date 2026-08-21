###### Class com.google.android.gms.internal.ads.zzbhg (com.google.android.gms.internal.ads.zzbhg)
.class final Lcom/google/android/gms/internal/ads/zzbhg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzfbl:Lcom/google/android/gms/internal/ads/zzbhf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbhf;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhg;->zzfbl:Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhg;->zzfbl:Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Lcom/google/android/gms/internal/ads/zzbhf;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhg;->zzfbl:Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Lcom/google/android/gms/internal/ads/zzbhf;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbhj;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzbhj;-><init>(Lcom/google/android/gms/internal/ads/zzbhg;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzbhj (com.google.android.gms.internal.ads.zzbhj)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbhj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfbs:Lcom/google/android/gms/internal/ads/zzbhg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbhg;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzfbs:Lcom/google/android/gms/internal/ads/zzbhg;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzfbs:Lcom/google/android/gms/internal/ads/zzbhg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbhg;->zzfbl:Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbhf;->zzb(Lcom/google/android/gms/internal/ads/zzbhf;)Lcom/google/android/gms/internal/ads/zzbhk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhk;->zzaek()V

    return-void
.end method
