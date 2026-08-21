###### Class com.google.android.gms.internal.ads.zzahv (com.google.android.gms.internal.ads.zzahv)
.class final Lcom/google/android/gms/internal/ads/zzahv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaer<",
        "Lcom/google/android/gms/internal/ads/zzail;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdab:Lcom/google/android/gms/internal/ads/zzaha;

.field private final synthetic zzdac:Lcom/google/android/gms/internal/ads/zzahn;

.field private final synthetic zzdae:Lcom/google/android/gms/internal/ads/zzdf;

.field private final synthetic zzdaf:Lcom/google/android/gms/internal/ads/zzawn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzahn;Lcom/google/android/gms/internal/ads/zzdf;Lcom/google/android/gms/internal/ads/zzaha;Lcom/google/android/gms/internal/ads/zzawn;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahv;->zzdac:Lcom/google/android/gms/internal/ads/zzahn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahv;->zzdae:Lcom/google/android/gms/internal/ads/zzdf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzahv;->zzdab:Lcom/google/android/gms/internal/ads/zzaha;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzahv;->zzdaf:Lcom/google/android/gms/internal/ads/zzawn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahv;->zzdac:Lcom/google/android/gms/internal/ads/zzahn;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzahn;->zza(Lcom/google/android/gms/internal/ads/zzahn;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    const-string p2, "JS Engine is requesting an update"

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahv;->zzdac:Lcom/google/android/gms/internal/ads/zzahn;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzahn;->zzd(Lcom/google/android/gms/internal/ads/zzahn;)I

    move-result p2

    if-nez p2, :cond_26

    const-string p2, "Starting reload."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahv;->zzdac:Lcom/google/android/gms/internal/ads/zzahn;

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzahn;->zza(Lcom/google/android/gms/internal/ads/zzahn;I)I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahv;->zzdac:Lcom/google/android/gms/internal/ads/zzahn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahv;->zzdae:Lcom/google/android/gms/internal/ads/zzdf;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzahn;->zza(Lcom/google/android/gms/internal/ads/zzdf;)Lcom/google/android/gms/internal/ads/zzaie;

    :cond_26
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahv;->zzdab:Lcom/google/android/gms/internal/ads/zzaha;

    const-string v0, "/requestReload"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahv;->zzdaf:Lcom/google/android/gms/internal/ads/zzawn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawn;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaer;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzail;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    monitor-exit p1

    return-void

    :catchall_37
    move-exception p2

    monitor-exit p1
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_37

    throw p2
.end method
