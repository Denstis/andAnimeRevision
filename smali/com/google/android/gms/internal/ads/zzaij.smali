###### Class com.google.android.gms.internal.ads.zzaij (com.google.android.gms.internal.ads.zzaij)
.class final Lcom/google/android/gms/internal/ads/zzaij;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaxz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaxz<",
        "Lcom/google/android/gms/internal/ads/zzaha;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzdar:Lcom/google/android/gms/internal/ads/zzaie;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaie;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzdar:Lcom/google/android/gms/internal/ads/zzaie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzh(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaha;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwm:Lcom/google/android/gms/internal/ads/zzddl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaii;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzaii;-><init>(Lcom/google/android/gms/internal/ads/zzaij;Lcom/google/android/gms/internal/ads/zzaha;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzaii (com.google.android.gms.internal.ads.zzaii)
.class final synthetic Lcom/google/android/gms/internal/ads/zzaii;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdap:Lcom/google/android/gms/internal/ads/zzaij;

.field private final zzdaq:Lcom/google/android/gms/internal/ads/zzaha;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaij;Lcom/google/android/gms/internal/ads/zzaha;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaii;->zzdap:Lcom/google/android/gms/internal/ads/zzaij;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaii;->zzdaq:Lcom/google/android/gms/internal/ads/zzaha;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaii;->zzdap:Lcom/google/android/gms/internal/ads/zzaij;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaii;->zzdaq:Lcom/google/android/gms/internal/ads/zzaha;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaij;->zzdar:Lcom/google/android/gms/internal/ads/zzaie;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaie;->zza(Lcom/google/android/gms/internal/ads/zzaie;)Lcom/google/android/gms/internal/ads/zzavr;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzavr;->zzh(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaha;->destroy()V

    return-void
.end method
