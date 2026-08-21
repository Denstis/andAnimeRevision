###### Class com.google.android.gms.common.api.Batch (com.google.android.gms.common.api.Batch)
.class public final Lcom/google/android/gms/common/api/Batch;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/Batch$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
        "Lcom/google/android/gms/common/api/BatchResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zaaz:I

.field private zaba:Z

.field private zabb:Z

.field private final zabc:[Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "*>;>;",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/api/Batch;->mLock:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/common/api/Batch;->zaaz:I

    iget p2, p0, Lcom/google/android/gms/common/api/Batch;->zaaz:I

    new-array p2, p2, [Lcom/google/android/gms/common/api/PendingResult;

    iput-object p2, p0, Lcom/google/android/gms/common/api/Batch;->zabc:[Lcom/google/android/gms/common/api/PendingResult;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_29

    new-instance p1, Lcom/google/android/gms/common/api/BatchResult;

    sget-object p2, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch;->zabc:[Lcom/google/android/gms/common/api/PendingResult;

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/common/api/BatchResult;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/PendingResult;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_29
    const/4 p2, 0x0

    :goto_2a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_45

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/PendingResult;

    iget-object v1, p0, Lcom/google/android/gms/common/api/Batch;->zabc:[Lcom/google/android/gms/common/api/PendingResult;

    aput-object v0, v1, p2

    new-instance v1, Lcom/google/android/gms/common/api/zaa;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/zaa;-><init>(Lcom/google/android/gms/common/api/Batch;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->addStatusListener(Lcom/google/android/gms/common/api/PendingResult$StatusListener;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2a

    :cond_45
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/zaa;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/Batch;-><init>(Ljava/util/List;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/Batch;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/Batch;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/Batch;Z)Z
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/Batch;->zabb:Z

    return p1
.end method

.method static synthetic zab(Lcom/google/android/gms/common/api/Batch;)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/common/api/Batch;->zaaz:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/gms/common/api/Batch;->zaaz:I

    return v0
.end method

.method static synthetic zab(Lcom/google/android/gms/common/api/Batch;Z)Z
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/Batch;->zaba:Z

    return p1
.end method

.method static synthetic zac(Lcom/google/android/gms/common/api/Batch;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/common/api/Batch;->zaaz:I

    return p0
.end method

.method static synthetic zad(Lcom/google/android/gms/common/api/Batch;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/common/api/Batch;->zabb:Z

    return p0
.end method

.method static synthetic zae(Lcom/google/android/gms/common/api/Batch;)V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->cancel()V

    return-void
.end method

.method static synthetic zaf(Lcom/google/android/gms/common/api/Batch;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/common/api/Batch;->zaba:Z

    return p0
.end method

.method static synthetic zag(Lcom/google/android/gms/common/api/Batch;)[Lcom/google/android/gms/common/api/PendingResult;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/Batch;->zabc:[Lcom/google/android/gms/common/api/PendingResult;

    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch;->zabc:[Lcom/google/android/gms/common/api/PendingResult;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/PendingResult;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    return-void
.end method

.method public final createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/BatchResult;
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/api/BatchResult;

    iget-object v1, p0, Lcom/google/android/gms/common/api/Batch;->zabc:[Lcom/google/android/gms/common/api/PendingResult;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/api/BatchResult;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v0
.end method

.method public final bridge synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/Batch;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/BatchResult;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.common.api.Batch.Builder (com.google.android.gms.common.api.Batch$Builder)
.class public final Lcom/google/android/gms/common/api/Batch$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/Batch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zabe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "*>;>;"
        }
    .end annotation
.end field

.field private zabf:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/Batch$Builder;->zabe:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/common/api/Batch$Builder;->zabf:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-void
.end method


# virtual methods
.method public final add(Lcom/google/android/gms/common/api/PendingResult;)Lcom/google/android/gms/common/api/BatchResultToken;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "TR;>;)",
            "Lcom/google/android/gms/common/api/BatchResultToken<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/BatchResultToken;

    iget-object v1, p0, Lcom/google/android/gms/common/api/Batch$Builder;->zabe:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/BatchResultToken;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/Batch$Builder;->zabe:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final build()Lcom/google/android/gms/common/api/Batch;
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/api/Batch;

    iget-object v1, p0, Lcom/google/android/gms/common/api/Batch$Builder;->zabe:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/common/api/Batch$Builder;->zabf:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Batch;-><init>(Ljava/util/List;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/zaa;)V

    return-object v0
.end method
