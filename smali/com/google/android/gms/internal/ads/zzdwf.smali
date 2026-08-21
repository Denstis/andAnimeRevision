###### Class com.google.android.gms.internal.ads.zzdwf (com.google.android.gms.internal.ads.zzdwf)
.class public final Lcom/google/android/gms/internal/ads/zzdwf;
.super Lcom/google/android/gms/internal/ads/zzdvx;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdvx<",
        "TK;TV;TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdvx;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzdwg;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwf;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdwo;)Lcom/google/android/gms/internal/ads/zzdvx;
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdvx;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdwo;)Lcom/google/android/gms/internal/ads/zzdvx;

    return-object p0
.end method

.method public final zzbdf()Lcom/google/android/gms/internal/ads/zzdwd;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdwd<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvx;->zzhxl:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdwd;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzdwg;)V

    return-object v0
.end method
