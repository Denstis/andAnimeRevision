###### Class com.google.android.gms.internal.ads.zzdbl (com.google.android.gms.internal.ads.zzdbl)
.class public final Lcom/google/android/gms/internal/ads/zzdbl;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static zzdt(I)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "initialArraySize"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdax;->zzf(ILjava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method
