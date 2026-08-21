###### Class com.google.android.gms.internal.ads.zzahl (com.google.android.gms.internal.ads.zzahl)
.class final Lcom/google/android/gms/internal/ads/zzahl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaer<",
        "Lcom/google/android/gms/internal/ads/zzbbw;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzczm:Lcom/google/android/gms/internal/ads/zzahc;

.field private final zzczp:Lcom/google/android/gms/internal/ads/zzaer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaer<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzahc;Lcom/google/android/gms/internal/ads/zzaer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaer<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzail;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzczm:Lcom/google/android/gms/internal/ads/zzahc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzczp:Lcom/google/android/gms/internal/ads/zzaer;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzahl;)Lcom/google/android/gms/internal/ads/zzaer;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzczp:Lcom/google/android/gms/internal/ads/zzaer;

    return-object p0
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzczp:Lcom/google/android/gms/internal/ads/zzaer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzczm:Lcom/google/android/gms/internal/ads/zzahc;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzaer;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
