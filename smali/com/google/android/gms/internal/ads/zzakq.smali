###### Class com.google.android.gms.internal.ads.zzakq (com.google.android.gms.internal.ads.zzakq)
.class public final Lcom/google/android/gms/internal/ads/zzakq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdRequest;


# instance fields
.field private final zzabl:Ljava/lang/String;

.field private final zzcby:I

.field private final zzccj:Z

.field private final zzddp:I

.field private final zzddq:I

.field private final zznc:Ljava/util/Date;

.field private final zzne:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zznf:Z

.field private final zzng:Landroid/location/Location;


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZIZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakq;->zznc:Ljava/util/Date;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzcby:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzne:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzng:Landroid/location/Location;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzakq;->zznf:Z

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzddp:I

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzccj:Z

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzddq:I

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzabl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBirthday()Ljava/util/Date;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakq;->zznc:Ljava/util/Date;

    return-object v0
.end method

.method public final getGender()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzcby:I

    return v0
.end method

.method public final getKeywords()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzne:Ljava/util/Set;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzng:Landroid/location/Location;

    return-object v0
.end method

.method public final isDesignedForFamilies()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzccj:Z

    return v0
.end method

.method public final isTesting()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzakq;->zznf:Z

    return v0
.end method

.method public final taggedForChildDirectedTreatment()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzddp:I

    return v0
.end method
