###### Class com.google.android.gms.internal.ads.zzdwl (com.google.android.gms.internal.ads.zzdwl)
.class public final Lcom/google/android/gms/internal/ads/zzdwl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwo<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zzhxo:Ljava/lang/Object;


# instance fields
.field private volatile zzduz:Ljava/lang/Object;

.field private volatile zzhxp:Lcom/google/android/gms/internal/ads/zzdwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdwl;->zzhxo:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdwo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdwl;->zzhxo:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwl;->zzduz:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwl;->zzhxp:Lcom/google/android/gms/internal/ads/zzdwo;

    return-void
.end method

.method public static zzan(Lcom/google/android/gms/internal/ads/zzdwo;)Lcom/google/android/gms/internal/ads/zzdwo;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdwl;

    if-nez v0, :cond_15

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdwc;

    if-eqz v0, :cond_9

    goto :goto_15

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwl;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdwh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdwl;-><init>(Lcom/google/android/gms/internal/ads/zzdwo;)V

    return-object v0

    :cond_15
    :goto_15
    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwl;->zzduz:Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdwl;->zzhxo:Ljava/lang/Object;

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwl;->zzhxp:Lcom/google/android/gms/internal/ads/zzdwo;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwl;->zzduz:Ljava/lang/Object;

    goto :goto_16

    :cond_d
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwl;->zzduz:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwl;->zzhxp:Lcom/google/android/gms/internal/ads/zzdwo;

    :cond_16
    :goto_16
    return-object v0
.end method
