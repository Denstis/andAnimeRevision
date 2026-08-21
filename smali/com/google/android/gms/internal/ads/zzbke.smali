###### Class com.google.android.gms.internal.ads.zzbke (com.google.android.gms.internal.ads.zzbke)
.class public final Lcom/google/android/gms/internal/ads/zzbke;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzbkf;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfbh:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzcvr;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfew:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzbni;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfex:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzbok;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdwo;Lcom/google/android/gms/internal/ads/zzdwo;Lcom/google/android/gms/internal/ads/zzdwo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzcvr;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzbni;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzbok;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbke;->zzfbh:Lcom/google/android/gms/internal/ads/zzdwo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbke;->zzfew:Lcom/google/android/gms/internal/ads/zzdwo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbke;->zzfex:Lcom/google/android/gms/internal/ads/zzdwo;

    return-void
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzdwo;Lcom/google/android/gms/internal/ads/zzdwo;Lcom/google/android/gms/internal/ads/zzdwo;)Lcom/google/android/gms/internal/ads/zzbke;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzcvr;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzbni;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzbok;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbke;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbke;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbke;-><init>(Lcom/google/android/gms/internal/ads/zzdwo;Lcom/google/android/gms/internal/ads/zzdwo;Lcom/google/android/gms/internal/ads/zzdwo;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbkf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbke;->zzfbh:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcvr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbke;->zzfew:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbni;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbke;->zzfex:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbok;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbkf;-><init>(Lcom/google/android/gms/internal/ads/zzcvr;Lcom/google/android/gms/internal/ads/zzbni;Lcom/google/android/gms/internal/ads/zzbok;)V

    return-object v0
.end method
