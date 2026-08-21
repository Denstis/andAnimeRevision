###### Class com.google.android.gms.internal.ads.zzmo (com.google.android.gms.internal.ads.zzmo)
.class final Lcom/google/android/gms/internal/ads/zzmo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/ads/zzgo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzml;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmo;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgo;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgo;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzgo;->zzaey:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzgo;->zzaey:I

    sub-int/2addr p2, p1

    return p2
.end method
