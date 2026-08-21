###### Class com.google.android.gms.internal.ads.zzbyq (com.google.android.gms.internal.ads.zzbyq)
.class final Lcom/google/android/gms/internal/ads/zzbyq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfqa:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final zzfqb:Ljava/lang/String;

.field private final zzfqc:Lcom/google/android/gms/internal/ads/zzaer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final synthetic zzfqd:Lcom/google/android/gms/internal/ads/zzbyh;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbyh;Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaer<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyq;->zzfqd:Lcom/google/android/gms/internal/ads/zzbyh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyq;->zzfqa:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbyq;->zzfqb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbyq;->zzfqc:Lcom/google/android/gms/internal/ads/zzaer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbyh;Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;Lcom/google/android/gms/internal/ads/zzbyi;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbyq;-><init>(Lcom/google/android/gms/internal/ads/zzbyh;Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4
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

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyq;->zzfqa:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyq;->zzfqd:Lcom/google/android/gms/internal/ads/zzbyh;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyq;->zzfqb:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/ads/zzbyh;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    return-void

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyq;->zzfqc:Lcom/google/android/gms/internal/ads/zzaer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaer;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
