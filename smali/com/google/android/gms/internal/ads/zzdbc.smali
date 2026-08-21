###### Class com.google.android.gms.internal.ads.zzdbc (com.google.android.gms.internal.ads.zzdbc)
.class public final Lcom/google/android/gms/internal/ads/zzdbc;
.super Lcom/google/android/gms/internal/ads/zzdbb;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdbb<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdbc;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdbb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/util/Iterator;)Lcom/google/android/gms/internal/ads/zzdba;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdba;->zza(Ljava/util/Iterator;)Lcom/google/android/gms/internal/ads/zzdba;

    return-object p0
.end method

.method public final synthetic zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdba;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdbb;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdbb;

    return-object p0
.end method

.method public final synthetic zzac(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdbb;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdbc;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdba;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdbc;

    return-object p1
.end method

.method public final synthetic zze(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdba;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdbb;->zze(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdba;

    return-object p0
.end method
