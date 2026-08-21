###### Class com.google.android.gms.internal.ads.zzahz (com.google.android.gms.internal.ads.zzahz)
.class final Lcom/google/android/gms/internal/ads/zzahz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaxx;


# instance fields
.field private final synthetic zzdac:Lcom/google/android/gms/internal/ads/zzahn;

.field private final synthetic zzdag:Lcom/google/android/gms/internal/ads/zzaie;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzahn;Lcom/google/android/gms/internal/ads/zzaie;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzdac:Lcom/google/android/gms/internal/ads/zzahn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzdag:Lcom/google/android/gms/internal/ads/zzaie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzdac:Lcom/google/android/gms/internal/ads/zzahn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzahn;->zza(Lcom/google/android/gms/internal/ads/zzahn;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzdac:Lcom/google/android/gms/internal/ads/zzahn;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzahn;->zza(Lcom/google/android/gms/internal/ads/zzahn;I)I

    const-string v1, "Failed loading new engine. Marking new engine destroyable."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzdag:Lcom/google/android/gms/internal/ads/zzaie;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaie;->zzri()V

    monitor-exit v0

    return-void

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1
.end method
