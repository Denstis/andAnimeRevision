###### Class com.google.android.gms.internal.ads.zzawe (com.google.android.gms.internal.ads.zzawe)
.class public final Lcom/google/android/gms/internal/ads/zzawe;
.super Lcom/google/android/gms/internal/ads/zzq;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzq<",
        "Lcom/google/android/gms/internal/ads/zzo;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzab:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdur:Lcom/google/android/gms/internal/ads/zzaxv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaxv<",
            "Lcom/google/android/gms/internal/ads/zzo;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdus:Lcom/google/android/gms/internal/ads/zzaxc;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaxv;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaxv<",
            "Lcom/google/android/gms/internal/ads/zzo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzawe;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzaxv;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzaxv;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzaxv<",
            "Lcom/google/android/gms/internal/ads/zzo;",
            ">;)V"
        }
    .end annotation

    new-instance p2, Lcom/google/android/gms/internal/ads/zzawd;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzawd;-><init>(Lcom/google/android/gms/internal/ads/zzaxv;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzq;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzy;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzab:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdur:Lcom/google/android/gms/internal/ads/zzaxv;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzaxc;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzaxc;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdus:Lcom/google/android/gms/internal/ads/zzaxc;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdus:Lcom/google/android/gms/internal/ads/zzaxc;

    const-string v0, "GET"

    invoke-virtual {p3, p1, v0, p2, p2}, Lcom/google/android/gms/internal/ads/zzaxc;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzo;)Lcom/google/android/gms/internal/ads/zzz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzo;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzz<",
            "Lcom/google/android/gms/internal/ads/zzo;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaq;->zzb(Lcom/google/android/gms/internal/ads/zzo;)Lcom/google/android/gms/internal/ads/zzd;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzd;)Lcom/google/android/gms/internal/ads/zzz;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zza(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdus:Lcom/google/android/gms/internal/ads/zzaxc;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzo;->zzab:Ljava/util/Map;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzo;->statusCode:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaxc;->zza(Ljava/util/Map;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdus:Lcom/google/android/gms/internal/ads/zzaxc;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzo;->data:[B

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxc;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1a

    if-eqz v1, :cond_1a

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxc;->zzi([B)V

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdur:Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->set(Ljava/lang/Object;)Z

    return-void
.end method
