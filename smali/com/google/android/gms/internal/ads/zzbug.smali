###### Class com.google.android.gms.internal.ads.zzbug (com.google.android.gms.internal.ads.zzbug)
.class public final Lcom/google/android/gms/internal/ads/zzbug;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzbuh;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfkg:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzbur;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdwo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzbur;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbug;->zzfkg:Lcom/google/android/gms/internal/ads/zzdwo;

    return-void
.end method

.method public static zzw(Lcom/google/android/gms/internal/ads/zzdwo;)Lcom/google/android/gms/internal/ads/zzbug;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzbur;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbug;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbug;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbug;-><init>(Lcom/google/android/gms/internal/ads/zzdwo;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbuh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbug;->zzfkg:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbur;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbuh;-><init>(Lcom/google/android/gms/internal/ads/zzbur;)V

    return-object v0
.end method
