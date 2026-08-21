###### Class com.google.android.gms.internal.ads.zzdvz (com.google.android.gms.internal.ads.zzdvz)
.class public final Lcom/google/android/gms/internal/ads/zzdvz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private zzhxn:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzaw(Lcom/google/android/gms/internal/ads/zzdwo;Lcom/google/android/gms/internal/ads/zzdwo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdvz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvz;->zzhxn:Lcom/google/android/gms/internal/ads/zzdwo;

    if-nez v0, :cond_c

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvz;->zzhxn:Lcom/google/android/gms/internal/ads/zzdwo;

    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvz;->zzhxn:Lcom/google/android/gms/internal/ads/zzdwo;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
