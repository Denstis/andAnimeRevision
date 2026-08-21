###### Class com.google.android.gms.internal.ads.zzahw (com.google.android.gms.internal.ads.zzahw)
.class final Lcom/google/android/gms/internal/ads/zzahw;
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
.field private final synthetic zzdac:Lcom/google/android/gms/internal/ads/zzahn;

.field private final synthetic zzdag:Lcom/google/android/gms/internal/ads/zzaie;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzahn;Lcom/google/android/gms/internal/ads/zzaie;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzdac:Lcom/google/android/gms/internal/ads/zzahn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzdag:Lcom/google/android/gms/internal/ads/zzaie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzh(Ljava/lang/Object;)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzdac:Lcom/google/android/gms/internal/ads/zzahn;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzahn;->zza(Lcom/google/android/gms/internal/ads/zzahn;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzdac:Lcom/google/android/gms/internal/ads/zzahn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzahn;->zza(Lcom/google/android/gms/internal/ads/zzahn;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzdac:Lcom/google/android/gms/internal/ads/zzahn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzahn;->zzb(Lcom/google/android/gms/internal/ads/zzahn;)Lcom/google/android/gms/internal/ads/zzaie;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzdag:Lcom/google/android/gms/internal/ads/zzaie;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzdac:Lcom/google/android/gms/internal/ads/zzahn;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzahn;->zzb(Lcom/google/android/gms/internal/ads/zzahn;)Lcom/google/android/gms/internal/ads/zzaie;

    move-result-object v1

    if-eq v0, v1, :cond_2d

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzdac:Lcom/google/android/gms/internal/ads/zzahn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzahn;->zzb(Lcom/google/android/gms/internal/ads/zzahn;)Lcom/google/android/gms/internal/ads/zzaie;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaie;->zzri()V

    :cond_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzdac:Lcom/google/android/gms/internal/ads/zzahn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzdag:Lcom/google/android/gms/internal/ads/zzaie;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzahn;->zza(Lcom/google/android/gms/internal/ads/zzahn;Lcom/google/android/gms/internal/ads/zzaie;)Lcom/google/android/gms/internal/ads/zzaie;

    monitor-exit p1

    return-void

    :catchall_36
    move-exception v0

    monitor-exit p1
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw v0
.end method
