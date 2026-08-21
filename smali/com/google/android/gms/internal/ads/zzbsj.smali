###### Class com.google.android.gms.internal.ads.zzbsj (com.google.android.gms.internal.ads.zzbsj)
.class public final Lcom/google/android/gms/internal/ads/zzbsj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzbqs<",
        "Lcom/google/android/gms/internal/ads/zzbna;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzfck:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfdd:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzbtd;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfin:Lcom/google/android/gms/internal/ads/zzbrx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbrx;Lcom/google/android/gms/internal/ads/zzdwo;Lcom/google/android/gms/internal/ads/zzdwo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbrx;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzbtd;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzfin:Lcom/google/android/gms/internal/ads/zzbrx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzfdd:Lcom/google/android/gms/internal/ads/zzdwo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzfck:Lcom/google/android/gms/internal/ads/zzdwo;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzbrx;Lcom/google/android/gms/internal/ads/zzdwo;Lcom/google/android/gms/internal/ads/zzdwo;)Lcom/google/android/gms/internal/ads/zzbsj;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbrx;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzbtd;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbsj;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbsj;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbsj;-><init>(Lcom/google/android/gms/internal/ads/zzbrx;Lcom/google/android/gms/internal/ads/zzdwo;Lcom/google/android/gms/internal/ads/zzdwo;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzfdd:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbtd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzfck:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbqs;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbqs;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbqs;

    return-object v0
.end method
