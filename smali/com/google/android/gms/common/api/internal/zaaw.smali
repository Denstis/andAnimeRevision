###### Class com.google.android.gms.common.api.internal.zaaw (com.google.android.gms.common.api.internal.zaaw)
.class public final Lcom/google/android/gms/common/api/internal/zaaw;
.super Lcom/google/android/gms/common/api/GoogleApiClient;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabt;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zabj:Landroid/os/Looper;

.field private final zacb:I

.field private final zacd:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private final zace:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zad;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field private zach:Z

.field private final zaeo:Ljava/util/concurrent/locks/Lock;

.field private final zaet:Lcom/google/android/gms/common/internal/ClientSettings;

.field private final zaew:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final zafc:Ljava/util/Queue;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

.field private zagt:Lcom/google/android/gms/common/api/internal/zabs;

.field private volatile zagu:Z

.field private zagv:J

.field private zagw:J

.field private final zagx:Lcom/google/android/gms/common/api/internal/zabb;

.field private zagy:Lcom/google/android/gms/common/api/internal/zabq;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field final zagz:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;"
        }
    .end annotation
.end field

.field zaha:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zahb:Lcom/google/android/gms/common/api/internal/ListenerHolders;

.field private final zahc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/zaq;",
            ">;"
        }
    .end annotation
.end field

.field private zahd:Ljava/lang/Integer;

.field zahe:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/zacm;",
            ">;"
        }
    .end annotation
.end field

.field final zahf:Lcom/google/android/gms/common/api/internal/zacp;

.field private final zahg:Lcom/google/android/gms/common/internal/GmsClientEventManager$GmsClientEventState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;Z)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Lcom/google/android/gms/common/GoogleApiAvailability;",
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zad;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;II",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/zaq;",
            ">;Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p3

    invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zagt:Lcom/google/android/gms/common/api/internal/zabs;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zafc:Ljava/util/Queue;

    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v3

    if-eqz v3, :cond_18

    const-wide/16 v3, 0x2710

    goto :goto_1b

    :cond_18
    const-wide/32 v3, 0x1d4c0

    :goto_1b
    iput-wide v3, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zagv:J

    const-wide/16 v3, 0x1388

    iput-wide v3, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zagw:J

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zaha:Ljava/util/Set;

    new-instance v3, Lcom/google/android/gms/common/api/internal/ListenerHolders;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/ListenerHolders;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zahb:Lcom/google/android/gms/common/api/internal/ListenerHolders;

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zahd:Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zahe:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zaax;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/internal/zaax;-><init>(Lcom/google/android/gms/common/api/internal/zaaw;)V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zahg:Lcom/google/android/gms/common/internal/GmsClientEventManager$GmsClientEventState;

    move-object v2, p1

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zaaw;->mContext:Landroid/content/Context;

    move-object v2, p2

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zach:Z

    new-instance v2, Lcom/google/android/gms/common/internal/GmsClientEventManager;

    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zahg:Lcom/google/android/gms/common/internal/GmsClientEventManager$GmsClientEventState;

    invoke-direct {v2, p3, v3}, Lcom/google/android/gms/common/internal/GmsClientEventManager;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/GmsClientEventManager$GmsClientEventState;)V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zabj:Landroid/os/Looper;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zabb;

    invoke-direct {v2, p0, p3}, Lcom/google/android/gms/common/api/internal/zabb;-><init>(Lcom/google/android/gms/common/api/internal/zaaw;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zagx:Lcom/google/android/gms/common/api/internal/zabb;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zacd:Lcom/google/android/gms/common/GoogleApiAvailability;

    move/from16 v1, p11

    iput v1, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zacb:I

    iget v1, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zacb:I

    if-ltz v1, :cond_66

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zahd:Ljava/lang/Integer;

    :cond_66
    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zaew:Ljava/util/Map;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zagz:Ljava/util/Map;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zahc:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zacp;

    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zagz:Ljava/util/Map;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/internal/zacp;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zahf:Lcom/google/android/gms/common/api/internal/zacp;

    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    goto :goto_7d

    :cond_8f
    invoke-interface {p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_93
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    goto :goto_93

    :cond_a5
    move-object v2, p4

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zaet:Lcom/google/android/gms/common/internal/ClientSettings;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zace:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    return-void
.end method

.method private final resume()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagu:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaau()V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_12

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_12
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static zaa(Ljava/lang/Iterable;Z)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->providesSignIn()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_22
    if-eqz v0, :cond_2b

    if-eqz v1, :cond_2a

    if-eqz p1, :cond_2a

    const/4 p0, 0x2

    return p0

    :cond_2a
    return v3

    :cond_2b
    const/4 p0, 0x3

    return p0
.end method

.method private final zaa(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/StatusPendingResult;Z)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/common/internal/service/Common;->zapi:Lcom/google/android/gms/common/internal/service/zac;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/service/zac;->zaa(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/zaba;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/android/gms/common/api/internal/zaba;-><init>(Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/common/api/internal/StatusPendingResult;ZLcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zaaw;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->resume()V

    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/StatusPendingResult;Z)V
    .registers 4

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/zaaw;->zaa(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/StatusPendingResult;Z)V

    return-void
.end method

.method private final zaau()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->enableCallbacks()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagt:Lcom/google/android/gms/common/api/internal/zabs;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabs;->connect()V

    return-void
.end method

.method private final zaav()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaaw()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaau()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_14
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic zab(Lcom/google/android/gms/common/api/internal/zaaw;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaav()V

    return-void
.end method

.method static synthetic zac(Lcom/google/android/gms/common/api/internal/zaaw;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private final zae(I)V
    .registers 15

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahd:Ljava/lang/Integer;

    if-nez v0, :cond_b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahd:Ljava/lang/Integer;

    goto :goto_11

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_dc

    :goto_11
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagt:Lcom/google/android/gms/common/api/internal/zabs;

    if-eqz v0, :cond_16

    return-void

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagz:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_22
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v5

    if-eqz v5, :cond_36

    const/4 v1, 0x1

    :cond_36
    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->providesSignIn()Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v2, 0x1

    goto :goto_22

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahd:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_88

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4b

    const/4 v1, 0x3

    goto :goto_8c

    :cond_4b
    if-eqz v1, :cond_8c

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zach:Z

    if-eqz v0, :cond_6e

    new-instance v12, Lcom/google/android/gms/common/api/internal/zax;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zabj:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zacd:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagz:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaet:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaew:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zace:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahc:Ljava/util/ArrayList;

    const/4 v11, 0x1

    move-object v0, v12

    move-object v10, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/common/api/internal/zax;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zaaw;Z)V

    iput-object v12, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagt:Lcom/google/android/gms/common/api/internal/zabs;

    return-void

    :cond_6e
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zabj:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zacd:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagz:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaet:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaew:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zace:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahc:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaw;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zas;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagt:Lcom/google/android/gms/common/api/internal/zabs;

    return-void

    :cond_88
    if-eqz v1, :cond_d4

    if-nez v2, :cond_cc

    :cond_8c
    :goto_8c
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zach:Z

    if-eqz v0, :cond_af

    if-nez v2, :cond_af

    new-instance v12, Lcom/google/android/gms/common/api/internal/zax;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zabj:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zacd:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagz:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaet:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaew:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zace:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahc:Ljava/util/ArrayList;

    const/4 v11, 0x0

    move-object v0, v12

    move-object v10, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/common/api/internal/zax;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zaaw;Z)V

    iput-object v12, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagt:Lcom/google/android/gms/common/api/internal/zabs;

    return-void

    :cond_af
    new-instance v12, Lcom/google/android/gms/common/api/internal/zabe;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zabj:Landroid/os/Looper;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zacd:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagz:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaet:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaew:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zace:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v10, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahc:Ljava/util/ArrayList;

    move-object v0, v12

    move-object v2, p0

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/common/api/internal/zabe;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaw;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zabt;)V

    iput-object v12, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagt:Lcom/google/android/gms/common/api/internal/zabs;

    return-void

    :cond_cc
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_dc
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaw;->zaf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahd:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zaaw;->zaf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot use sign-in mode: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Mode was already set to "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_11d

    :goto_11c
    throw v0

    :goto_11d
    goto :goto_11c
.end method

.method private static zaf(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_c
    const-string p0, "SIGN_IN_MODE_NONE"

    return-object p0

    :cond_f
    const-string p0, "SIGN_IN_MODE_OPTIONAL"

    return-object p0

    :cond_12
    const-string p0, "SIGN_IN_MODE_REQUIRED"

    return-object p0
.end method


# virtual methods
.method public final blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .registers 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_19
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zacb:I

    if-ltz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahd:Ljava/lang/Integer;

    if-eqz v0, :cond_22

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    const-string v0, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_47

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahd:Ljava/lang/Integer;

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagz:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/api/internal/zaaw;->zaa(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahd:Ljava/lang/Integer;

    goto :goto_47

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahd:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_61

    :goto_47
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahd:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zaaw;->zae(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->enableCallbacks()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagt:Lcom/google/android/gms/common/api/internal/zabs;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabs;->blockingConnect()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0
    :try_end_5b
    .catchall {:try_start_19 .. :try_end_5b} :catchall_69

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_61
    :try_start_61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_69

    :catchall_69
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v0, "TimeUnit must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1d
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahd:Ljava/lang/Integer;

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagz:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/internal/zaaw;->zaa(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahd:Ljava/lang/Integer;

    goto :goto_3b

    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahd:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_55

    :goto_3b
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahd:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zaaw;->zae(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->enableCallbacks()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagt:Lcom/google/android/gms/common/api/internal/zabs;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/zabs;->blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1
    :try_end_4f
    .catchall {:try_start_1d .. :try_end_4f} :catchall_5d

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_55
    :try_start_55
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->isConnected()Z

    move-result v0

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahd:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    const-string v2, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/common/api/internal/StatusPendingResult;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/StatusPendingResult;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagz:Ljava/util/Map;

    sget-object v3, Lcom/google/android/gms/common/internal/service/Common;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-direct {p0, p0, v0, v1}, Lcom/google/android/gms/common/api/internal/zaaw;->zaa(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/StatusPendingResult;Z)V

    goto :goto_62

    :cond_2e
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Lcom/google/android/gms/common/api/internal/zaay;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/common/api/internal/zaay;-><init>(Lcom/google/android/gms/common/api/internal/zaaw;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/common/api/internal/StatusPendingResult;)V

    new-instance v3, Lcom/google/android/gms/common/api/internal/zaaz;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/common/api/internal/zaaz;-><init>(Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/common/api/internal/StatusPendingResult;)V

    new-instance v4, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zaaw;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/gms/common/internal/service/Common;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagx:Lcom/google/android/gms/common/api/internal/zabb;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :goto_62
    return-object v0
.end method

.method public final connect()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zacb:I

    const/4 v1, 0x0

    if-ltz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahd:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    const-string v0, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_33

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahd:Ljava/lang/Integer;

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagz:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zaaw;->zaa(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahd:Ljava/lang/Integer;

    goto :goto_33

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahd:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_42

    :goto_33
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahd:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zaaw;->connect(I)V
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_4a

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_42
    :try_start_42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final connect(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_10

    if-eq p1, v1, :cond_10

    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_10
    const/16 v0, 0x21

    :try_start_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Illegal sign-in mode: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zaaw;->zae(I)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaau()V
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_32

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_32
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final disconnect()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahf:Lcom/google/android/gms/common/api/internal/zacp;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zacp;->release()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagt:Lcom/google/android/gms/common/api/internal/zabs;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagt:Lcom/google/android/gms/common/api/internal/zabs;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabs;->disconnect()V

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahb:Lcom/google/android/gms/common/api/internal/ListenerHolders;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ListenerHolders;->release()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zafc:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa(Lcom/google/android/gms/common/api/internal/zacs;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->cancel()V

    goto :goto_1e

    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zafc:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagt:Lcom/google/android/gms/common/api/internal/zabs;
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_4a

    if-nez v0, :cond_41

    :goto_3b
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_41
    :try_start_41
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaaw()Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->disableCallbacks()V
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_4a

    goto :goto_3b

    :catchall_4a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_52

    :goto_51
    throw v0

    :goto_52
    goto :goto_51
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mContext="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mResuming="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagu:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWorkQueue.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zafc:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahf:Lcom/google/android/gms/common/api/internal/zacp;

    const-string v1, " mUnconsumedApiCalls.size()="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zacp;->zakz:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagt:Lcom/google/android/gms/common/api/internal/zabs;

    if-eqz v0, :cond_45

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/zabs;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_45
    return-void
.end method

.method public final enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v1, "This task can not be enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagz:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getApi()Lcom/google/android/gms/common/api/Api;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getApi()Lcom/google/android/gms/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    :cond_27
    const-string v1, "the API"

    :goto_29
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x41

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient is not configured to use "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " required for this call."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_51
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagt:Lcom/google/android/gms/common/api/internal/zabs;

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zafc:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_67

    :goto_5a
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_60
    :try_start_60
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagt:Lcom/google/android/gms/common/api/internal/zabs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zabs;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1
    :try_end_66
    .catchall {:try_start_60 .. :try_end_66} :catchall_67

    goto :goto_5a

    :catchall_67
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_6f

    :goto_6e
    throw p1

    :goto_6f
    goto :goto_6e
.end method

.method public final execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v1, "This task can not be executed (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagz:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getApi()Lcom/google/android/gms/common/api/Api;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getApi()Lcom/google/android/gms/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    :cond_27
    const-string v1, "the API"

    :goto_29
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x41

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient is not configured to use "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " required for this call."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_51
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagt:Lcom/google/android/gms/common/api/internal/zabs;

    if-eqz v0, :cond_86

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagu:Z

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zafc:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_5e
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zafc:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zafc:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahf:Lcom/google/android/gms/common/api/internal/zacp;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zacp;->zab(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V
    :try_end_78
    .catchall {:try_start_51 .. :try_end_78} :catchall_8e

    goto :goto_5e

    :cond_79
    :goto_79
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_7f
    :try_start_7f
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagt:Lcom/google/android/gms/common/api/internal/zabs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zabs;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    goto :goto_79

    :cond_86
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleApiClient is not connected yet."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8e
    .catchall {:try_start_7f .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_96

    :goto_95
    throw p1

    :goto_96
    goto :goto_95
.end method

.method public final getClient(Lcom/google/android/gms/common/api/Api$AnyClientKey;)Lcom/google/android/gms/common/api/Api$Client;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagz:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Api$Client;

    const-string v0, "Appropriate Api was not requested."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    const-string v0, "GoogleApiClientImpl"

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagu:Z

    if-eqz v1, :cond_12

    goto :goto_1a

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot invoke getConnectionResult unless GoogleApiClient is connected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagz:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagt:Lcom/google/android/gms/common/api/internal/zabs;

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/api/internal/zabs;->getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    if-nez v1, :cond_60

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagu:Z

    if-eqz v1, :cond_3a

    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_7a

    :goto_34
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_3a
    :try_start_3a
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaay()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " requested in getConnectionResult is not connected but is not present in the failed  connections map"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_5f
    .catchall {:try_start_3a .. :try_end_5f} :catchall_7a

    goto :goto_34

    :cond_60
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :cond_66
    :try_start_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " was never registered with GoogleApiClient"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7a
    .catchall {:try_start_66 .. :try_end_7a} :catchall_7a

    :catchall_7a
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_82

    :goto_81
    throw p1

    :goto_82
    goto :goto_81
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zabj:Landroid/os/Looper;

    return-object v0
.end method

.method public final hasApi(Lcom/google/android/gms/common/api/Api;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagz:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagz:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Api$Client;

    if-eqz p1, :cond_1e

    invoke-interface {p1}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    return v1
.end method

.method public final isConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagt:Lcom/google/android/gms/common/api/internal/zabs;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabs;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final isConnecting()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagt:Lcom/google/android/gms/common/api/internal/zabs;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabs;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z

    move-result p1

    return p1
.end method

.method public final isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z

    move-result p1

    return p1
.end method

.method public final maybeSignIn(Lcom/google/android/gms/common/api/internal/SignInConnectionListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagt:Lcom/google/android/gms/common/api/internal/zabs;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zabs;->maybeSignIn(Lcom/google/android/gms/common/api/internal/SignInConnectionListener;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public final maybeSignOut()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagt:Lcom/google/android/gms/common/api/internal/zabs;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabs;->maybeSignOut()V

    :cond_7
    return-void
.end method

.method public final reconnect()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->disconnect()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->connect()V

    return-void
.end method

.method public final registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public final registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public final registerListener(Ljava/lang/Object;)Lcom/google/android/gms/common/api/internal/ListenerHolder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            ")",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahb:Lcom/google/android/gms/common/api/internal/ListenerHolders;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zabj:Landroid/os/Looper;

    const-string v2, "NO_TYPE"

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/api/internal/ListenerHolders;->zaa(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_15

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_15
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final stopAutoManage(Lb/k/a/e;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleActivity;-><init>(Landroid/app/Activity;)V

    iget p1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zacb:I

    if-ltz p1, :cond_13

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaj;->zaa(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/zaj;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zacb:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/zaj;->zaa(I)V

    return-void

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Called stopAutoManage but automatic lifecycle management is not enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public final unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public final zaa(Lcom/google/android/gms/common/api/internal/zacm;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahe:Ljava/util/Set;

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahe:Ljava/util/Set;

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahe:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1b

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1b
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method final zaaw()Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagu:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagu:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagx:Lcom/google/android/gms/common/api/internal/zabb;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagx:Lcom/google/android/gms/common/api/internal/zabb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagy:Lcom/google/android/gms/common/api/internal/zabq;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabq;->unregister()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagy:Lcom/google/android/gms/common/api/internal/zabq;

    :cond_1e
    return v1
.end method

.method final zaax()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahe:Ljava/util/Set;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_1e

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    return v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahe:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1e

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_1e
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method final zaay()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {p0, v3, v2, v1, v2}, Lcom/google/android/gms/common/api/internal/zaaw;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zab(IZ)V
    .registers 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3f

    if-nez p2, :cond_3f

    iget-boolean p2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagu:Z

    if-nez p2, :cond_3f

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagu:Z

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagy:Lcom/google/android/gms/common/api/internal/zabq;

    if-nez p2, :cond_29

    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result p2

    if-nez p2, :cond_29

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zacd:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabc;

    invoke-direct {v3, p0}, Lcom/google/android/gms/common/api/internal/zabc;-><init>(Lcom/google/android/gms/common/api/internal/zaaw;)V

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zabr;)Lcom/google/android/gms/common/api/internal/zabq;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagy:Lcom/google/android/gms/common/api/internal/zabq;

    :cond_29
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagx:Lcom/google/android/gms/common/api/internal/zabb;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagv:J

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagx:Lcom/google/android/gms/common/api/internal/zabb;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagw:J

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3f
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahf:Lcom/google/android/gms/common/api/internal/zacp;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/zacp;->zabx()V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->onUnintentionalDisconnection(I)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->disableCallbacks()V

    if-ne p1, v0, :cond_53

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaau()V

    :cond_53
    return-void
.end method

.method public final zab(Landroid/os/Bundle;)V
    .registers 3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zafc:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zafc:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zaaw;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    goto :goto_0

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->onConnectionSuccess(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zab(Lcom/google/android/gms/common/api/internal/zacm;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahe:Ljava/util/Set;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_37

    const-string v1, "GoogleApiClientImpl"

    if-nez v0, :cond_16

    :try_start_b
    const-string p1, "Attempted to remove pending transform when no transforms are registered."

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    :goto_12
    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zahe:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    const-string p1, "Failed to remove pending transform - this may lead to memory leaks!"

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    goto :goto_12

    :cond_26
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaax()Z

    move-result p1

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagt:Lcom/google/android/gms/common/api/internal/zabs;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/zabs;->zaw()V
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_37

    :cond_31
    :goto_31
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_37
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaeo:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3f

    :goto_3e
    throw p1

    :goto_3f
    goto :goto_3e
.end method

.method public final zac(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zacd:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isPlayServicesPossiblyUpdating(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaaw()Z

    :cond_11
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zagu:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->onConnectionFailure(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->disableCallbacks()V

    :cond_1f
    return-void
.end method
