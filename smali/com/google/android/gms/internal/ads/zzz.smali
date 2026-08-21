###### Class com.google.android.gms.internal.ads.zzz (com.google.android.gms.internal.ads.zzz)
.class public final Lcom/google/android/gms/internal/ads/zzz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final zzbh:Lcom/google/android/gms/internal/ads/zzd;

.field public final zzbi:Lcom/google/android/gms/internal/ads/zzae;

.field public zzbj:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzae;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzz;->zzbj:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzz;->result:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzz;->zzbh:Lcom/google/android/gms/internal/ads/zzd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzz;->zzbi:Lcom/google/android/gms/internal/ads/zzae;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzd;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzd;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzz;->zzbj:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzz;->result:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzz;->zzbh:Lcom/google/android/gms/internal/ads/zzd;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzz;->zzbi:Lcom/google/android/gms/internal/ads/zzae;

    return-void
.end method

.method public static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzd;)Lcom/google/android/gms/internal/ads/zzz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/ads/zzd;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzz<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzz;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzd;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzae;)Lcom/google/android/gms/internal/ads/zzz;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzae;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzz<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzz;-><init>(Lcom/google/android/gms/internal/ads/zzae;)V

    return-object v0
.end method
