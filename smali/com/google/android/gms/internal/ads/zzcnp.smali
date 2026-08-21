###### Class com.google.android.gms.internal.ads.zzcnp (com.google.android.gms.internal.ads.zzcnp)
.class public final Lcom/google/android/gms/internal/ads/zzcnp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzcnn;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzejy:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfef:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzcwe;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfzd:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgdx:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzddl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdwo;Lcom/google/android/gms/internal/ads/zzdwo;Lcom/google/android/gms/internal/ads/zzdwo;Lcom/google/android/gms/internal/ads/zzdwo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzddl;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Lcom/google/android/gms/internal/ads/zzcwe;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "Landroid/view/ViewGroup;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnp;->zzgdx:Lcom/google/android/gms/internal/ads/zzdwo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnp;->zzejy:Lcom/google/android/gms/internal/ads/zzdwo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcnp;->zzfef:Lcom/google/android/gms/internal/ads/zzdwo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcnp;->zzfzd:Lcom/google/android/gms/internal/ads/zzdwo;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcnn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnp;->zzgdx:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzddl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcnp;->zzejy:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcnp;->zzfef:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcnp;->zzfzd:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcnn;-><init>(Lcom/google/android/gms/internal/ads/zzddl;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcwe;Landroid/view/ViewGroup;)V

    return-object v0
.end method
