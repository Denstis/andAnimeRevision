###### Class com.google.android.gms.internal.ads.zzaam (com.google.android.gms.internal.ads.zzaam)
.class public final Lcom/google/android/gms/internal/ads/zzaam;
.super Lcom/google/android/gms/internal/ads/zzaak;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzaak<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaak;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public static zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzaak;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/ads/zzaak<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaam;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/ads/zzaan;->zzcuz:I

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaam;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object p1
.end method
