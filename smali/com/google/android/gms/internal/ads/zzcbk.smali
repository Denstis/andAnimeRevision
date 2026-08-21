###### Class com.google.android.gms.internal.ads.zzcbk (com.google.android.gms.internal.ads.zzcbk)
.class public final Lcom/google/android/gms/internal/ads/zzcbk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzcbl;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzekq:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzcbo;",
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
            "Lcom/google/android/gms/internal/ads/zzcbo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbk;->zzekq:Lcom/google/android/gms/internal/ads/zzdwo;

    return-void
.end method

.method public static zzz(Lcom/google/android/gms/internal/ads/zzdwo;)Lcom/google/android/gms/internal/ads/zzcbk;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzcbo;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcbk;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcbk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcbk;-><init>(Lcom/google/android/gms/internal/ads/zzdwo;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcbl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbk;->zzekq:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcbo;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcbl;-><init>(Lcom/google/android/gms/internal/ads/zzcbo;)V

    return-object v0
.end method
