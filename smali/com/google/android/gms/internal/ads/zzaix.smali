###### Class com.google.android.gms.internal.ads.zzaix (com.google.android.gms.internal.ads.zzaix)
.class public final Lcom/google/android/gms/internal/ads/zzaix;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zzdbb:Lcom/google/android/gms/internal/ads/zzavr;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzavr<",
            "Lcom/google/android/gms/internal/ads/zzaha;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdbc:Lcom/google/android/gms/internal/ads/zzavr;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzavr<",
            "Lcom/google/android/gms/internal/ads/zzaha;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzdbd:Lcom/google/android/gms/internal/ads/zzahn;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaiw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaiw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaix;->zzdbb:Lcom/google/android/gms/internal/ads/zzavr;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaiz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaiz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaix;->zzdbc:Lcom/google/android/gms/internal/ads/zzavr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxl;Ljava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzahn;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzaix;->zzdbb:Lcom/google/android/gms/internal/ads/zzavr;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzaix;->zzdbc:Lcom/google/android/gms/internal/ads/zzavr;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzahn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzavr;Lcom/google/android/gms/internal/ads/zzavr;)V

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzaix;->zzdbd:Lcom/google/android/gms/internal/ads/zzahn;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzair;)Lcom/google/android/gms/internal/ads/zzaip;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaiq<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/zzair<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/zzaip<",
            "TI;TO;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaiy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaix;->zzdbd:Lcom/google/android/gms/internal/ads/zzahn;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaiy;-><init>(Lcom/google/android/gms/internal/ads/zzahn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzair;)V

    return-object v0
.end method

.method public final zzrl()Lcom/google/android/gms/internal/ads/zzajc;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaix;->zzdbd:Lcom/google/android/gms/internal/ads/zzahn;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzajc;-><init>(Lcom/google/android/gms/internal/ads/zzahn;)V

    return-object v0
.end method
