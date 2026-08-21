###### Class com.google.android.gms.internal.ads.zzdvr (com.google.android.gms.internal.ads.zzdvr)
.class public Lcom/google/android/gms/internal/ads/zzdvr;
.super Ljava/util/AbstractList;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final zzcp:Lcom/google/android/gms/internal/ads/zzdvt;


# instance fields
.field zzhxa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field zzhxb:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzdvr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdvt;->zzn(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzdvt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdvr;->zzcp:Lcom/google/android/gms/internal/ads/zzdvt;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/Iterator<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvr;->zzhxa:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdvr;->zzhxb:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvr;->zzhxa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvr;->zzhxa:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvr;->zzhxb:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvr;->zzhxa:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvr;->zzhxb:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdvr;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_27
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdvu;-><init>(Lcom/google/android/gms/internal/ads/zzdvr;)V

    return-object v0
.end method

.method public size()I
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdvr;->zzcp:Lcom/google/android/gms/internal/ads/zzdvt;

    const-string v1, "potentially expensive size() call"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvt;->zzhr(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdvr;->zzcp:Lcom/google/android/gms/internal/ads/zzdvt;

    const-string v1, "blowup running"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvt;->zzhr(Ljava/lang/String;)V

    :goto_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvr;->zzhxb:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvr;->zzhxa:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvr;->zzhxb:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvr;->zzhxa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
