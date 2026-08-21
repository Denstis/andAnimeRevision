###### Class com.google.android.gms.internal.ads.zzgz (com.google.android.gms.internal.ads.zzgz)
.class public final Lcom/google/android/gms/internal/ads/zzgz;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final zzage:Lcom/google/android/gms/internal/ads/zzgz;


# instance fields
.field public final zzagf:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgz;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgz;->zzage:Lcom/google/android/gms/internal/ads/zzgz;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgz;->zzagf:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_19

    const-class v2, Lcom/google/android/gms/internal/ads/zzgz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_19

    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgz;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgz;->zzagf:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzgz;->zzagf:I

    if-ne v2, p1, :cond_19

    return v0

    :cond_19
    :goto_19
    return v1
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgz;->zzagf:I

    return v0
.end method
