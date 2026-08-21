###### Class com.google.android.gms.internal.ads.zzdwc (com.google.android.gms.internal.ads.zzdwc)
.class public final Lcom/google/android/gms/internal/ads/zzdwc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvv;
.implements Lcom/google/android/gms/internal/ads/zzdwo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdvv<",
        "TT;>;",
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

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdwc;->zzhxo:Ljava/lang/Object;

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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdwc;->zzhxo:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwc;->zzduz:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwc;->zzhxp:Lcom/google/android/gms/internal/ads/zzdwo;

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

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdwh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdwc;

    if-eqz v0, :cond_8

    return-object p0

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdwc;-><init>(Lcom/google/android/gms/internal/ads/zzdwo;)V

    return-object v0
.end method

.method public static zzao(Lcom/google/android/gms/internal/ads/zzdwo;)Lcom/google/android/gms/internal/ads/zzdvv;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/google/android/gms/internal/ads/zzdwo<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Lcom/google/android/gms/internal/ads/zzdvv<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdvv;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdvv;

    return-object p0

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwc;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdwh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdwc;-><init>(Lcom/google/android/gms/internal/ads/zzdwo;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwc;->zzduz:Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdwc;->zzhxo:Ljava/lang/Object;

    if-ne v0, v1, :cond_6e

    monitor-enter p0

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwc;->zzduz:Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdwc;->zzhxo:Ljava/lang/Object;

    if-ne v0, v1, :cond_69

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwc;->zzhxp:Lcom/google/android/gms/internal/ads/zzdwo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdwo;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwc;->zzduz:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdwc;->zzhxo:Ljava/lang/Object;

    if-eq v1, v2, :cond_1f

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzdwi;

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    if-eqz v2, :cond_64

    if-ne v1, v0, :cond_25

    goto :goto_64

    :cond_25
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x76

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Scoped provider was invoked recursively returning different results: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " & "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". This is likely due to a circular dependency."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_64
    :goto_64
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwc;->zzduz:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwc;->zzhxp:Lcom/google/android/gms/internal/ads/zzdwo;

    :cond_69
    monitor-exit p0

    goto :goto_6e

    :catchall_6b
    move-exception v0

    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_7 .. :try_end_6d} :catchall_6b

    throw v0

    :cond_6e
    :goto_6e
    return-object v0
.end method
