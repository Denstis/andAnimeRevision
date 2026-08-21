###### Class com.google.android.gms.internal.ads.zzahs (com.google.android.gms.internal.ads.zzahs)
.class final Lcom/google/android/gms/internal/ads/zzahs;
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
.field private final synthetic zzdaa:Lcom/google/android/gms/internal/ads/zzaie;

.field private final synthetic zzdab:Lcom/google/android/gms/internal/ads/zzaha;

.field private final synthetic zzdac:Lcom/google/android/gms/internal/ads/zzahn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzahn;Lcom/google/android/gms/internal/ads/zzaie;Lcom/google/android/gms/internal/ads/zzaha;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzdac:Lcom/google/android/gms/internal/ads/zzahn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzdaa:Lcom/google/android/gms/internal/ads/zzaie;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzdab:Lcom/google/android/gms/internal/ads/zzaha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzdac:Lcom/google/android/gms/internal/ads/zzahn;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzahn;->zza(Lcom/google/android/gms/internal/ads/zzahn;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzdaa:Lcom/google/android/gms/internal/ads/zzaie;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzayc;->getStatus()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_40

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzdaa:Lcom/google/android/gms/internal/ads/zzaie;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzayc;->getStatus()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1a

    goto :goto_40

    :cond_1a
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzdac:Lcom/google/android/gms/internal/ads/zzahn;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzahn;->zza(Lcom/google/android/gms/internal/ads/zzahn;I)I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzdac:Lcom/google/android/gms/internal/ads/zzahn;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzahn;->zzc(Lcom/google/android/gms/internal/ads/zzahn;)Lcom/google/android/gms/internal/ads/zzavr;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzdab:Lcom/google/android/gms/internal/ads/zzaha;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzavr;->zzh(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzdaa:Lcom/google/android/gms/internal/ads/zzaie;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzdab:Lcom/google/android/gms/internal/ads/zzaha;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzayc;->zzm(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzdac:Lcom/google/android/gms/internal/ads/zzahn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzdaa:Lcom/google/android/gms/internal/ads/zzaie;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzahn;->zza(Lcom/google/android/gms/internal/ads/zzahn;Lcom/google/android/gms/internal/ads/zzaie;)Lcom/google/android/gms/internal/ads/zzaie;

    const-string p2, "Successfully loaded JS Engine."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :cond_40
    :goto_40
    monitor-exit p1

    return-void

    :catchall_42
    move-exception p2

    monitor-exit p1
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_42

    throw p2
.end method
