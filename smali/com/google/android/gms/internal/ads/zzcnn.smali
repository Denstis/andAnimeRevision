###### Class com.google.android.gms.internal.ads.zzcnn (com.google.android.gms.internal.ads.zzcnn)
.class public final Lcom/google/android/gms/internal/ads/zzcnn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcru;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcru<",
        "Lcom/google/android/gms/internal/ads/zzcno;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

.field private final zzgdu:Lcom/google/android/gms/internal/ads/zzddl;

.field private final zzgdv:Landroid/view/View;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzddl;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcwe;Landroid/view/ViewGroup;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnn;->zzgdu:Lcom/google/android/gms/internal/ads/zzddl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnn;->zzlk:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcnn;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcnn;->zzgdv:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final zzalv()Lcom/google/android/gms/internal/ads/zzddi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzcno;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcje:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Ad Key signal disabled."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdcy;->zzi(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    return-object v0

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnn;->zzgdu:Lcom/google/android/gms/internal/ads/zzddl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcnq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcnq;-><init>(Lcom/google/android/gms/internal/ads/zzcnn;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzddl;->zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzalw()Lcom/google/android/gms/internal/ads/zzcno;
    .registers 10

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcno;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnn;->zzlk:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcnn;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcwe;->zzbll:Lcom/google/android/gms/internal/ads/zzua;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcnn;->zzgdv:Landroid/view/View;

    :goto_f
    if-eqz v4, :cond_45

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_45

    const/4 v6, -0x1

    instance-of v7, v5, Landroid/view/ViewGroup;

    if-eqz v7, :cond_23

    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    :cond_23
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v4, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "index_of_child"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v4, v5, Landroid/view/View;

    if-eqz v4, :cond_45

    move-object v4, v5

    check-cast v4, Landroid/view/View;

    goto :goto_f

    :cond_45
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcno;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzua;Ljava/util/List;)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzcnq (com.google.android.gms.internal.ads.zzcnq)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcnq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgdy:Lcom/google/android/gms/internal/ads/zzcnn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcnn;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnq;->zzgdy:Lcom/google/android/gms/internal/ads/zzcnn;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnq;->zzgdy:Lcom/google/android/gms/internal/ads/zzcnn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcnn;->zzalw()Lcom/google/android/gms/internal/ads/zzcno;

    move-result-object v0

    return-object v0
.end method
