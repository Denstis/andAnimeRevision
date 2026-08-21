###### Class com.google.android.gms.internal.ads.zzaih (com.google.android.gms.internal.ads.zzaih)
.class final Lcom/google/android/gms/internal/ads/zzaih;
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
.field private final synthetic zzdao:Lcom/google/android/gms/internal/ads/zzaia;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaie;Lcom/google/android/gms/internal/ads/zzaia;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaih;->zzdao:Lcom/google/android/gms/internal/ads/zzaia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzh(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaha;

    const-string v0, "Getting a new session for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaih;->zzdao:Lcom/google/android/gms/internal/ads/zzaia;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaha;->zzrd()Lcom/google/android/gms/internal/ads/zzaik;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzayc;->zzm(Ljava/lang/Object;)V

    return-void
.end method
