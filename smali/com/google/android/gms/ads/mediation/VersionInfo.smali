###### Class com.google.android.gms.ads.mediation.VersionInfo (com.google.android.gms.ads.mediation.VersionInfo)
.class public final Lcom/google/android/gms/ads/mediation/VersionInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzejg:I

.field private final zzejh:I

.field private final zzeji:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/mediation/VersionInfo;->zzejg:I

    iput p2, p0, Lcom/google/android/gms/ads/mediation/VersionInfo;->zzejh:I

    iput p3, p0, Lcom/google/android/gms/ads/mediation/VersionInfo;->zzeji:I

    return-void
.end method


# virtual methods
.method public final getMajorVersion()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/mediation/VersionInfo;->zzejg:I

    return v0
.end method

.method public final getMicroVersion()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/mediation/VersionInfo;->zzeji:I

    return v0
.end method

.method public final getMinorVersion()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/mediation/VersionInfo;->zzejh:I

    return v0
.end method
