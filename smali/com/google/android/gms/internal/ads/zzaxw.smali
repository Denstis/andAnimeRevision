###### Class com.google.android.gms.internal.ads.zzaxw (com.google.android.gms.internal.ads.zzaxw)
.class public final Lcom/google/android/gms/internal/ads/zzaxw;
.super Lcom/google/android/gms/internal/ads/zzaxv;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzaxv<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzdwt:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaxv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzdwt:Ljava/lang/Object;

    return-void
.end method

.method public static zzl(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzaxw;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/ads/zzaxw<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaxw;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final zzwp()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzdwt:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->set(Ljava/lang/Object;)Z

    return-void
.end method
