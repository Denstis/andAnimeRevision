###### Class com.google.firebase.storage.internal.ActivityLifecycleListener (com.google.firebase.storage.internal.ActivityLifecycleListener)
.class public Lcom/google/firebase/storage/internal/ActivityLifecycleListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;,
        Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/firebase/storage/internal/ActivityLifecycleListener;


# instance fields
.field private final cookieMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final sync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;

    invoke-direct {v0}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;-><init>()V

    sput-object v0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->instance:Lcom/google/firebase/storage/internal/ActivityLifecycleListener;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->cookieMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->sync:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/storage/internal/ActivityLifecycleListener;
    .registers 1

    sget-object v0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->instance:Lcom/google/firebase/storage/internal/ActivityLifecycleListener;

    return-object v0
.end method


# virtual methods
.method public removeCookie(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->cookieMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;->getInstance(Landroid/app/Activity;)Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;->removeEntry(Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;)V

    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public runOnActivityStopped(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/Runnable;)V
    .registers 6

    iget-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;

    invoke-direct {v1, p1, p3, p2}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;->getInstance(Landroid/app/Activity;)Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;->addEntry(Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;)V

    iget-object p1, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->cookieMap:Ljava/util/Map;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

###### Class com.google.firebase.storage.internal.ActivityLifecycleListener.LifecycleEntry (com.google.firebase.storage.internal.ActivityLifecycleListener$LifecycleEntry)
.class Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/internal/ActivityLifecycleListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LifecycleEntry"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final cookie:Ljava/lang/Object;

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->cookie:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;

    iget-object v0, p1, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->cookie:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->cookie:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p1, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->runnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->runnable:Ljava/lang/Runnable;

    if-ne v0, v2, :cond_1f

    iget-object p1, p1, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->activity:Landroid/app/Activity;

    if-ne p1, v0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCookie()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->cookie:Ljava/lang/Object;

    return-object v0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->cookie:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

###### Class com.google.firebase.storage.internal.ActivityLifecycleListener.OnStopCallback (com.google.firebase.storage.internal.ActivityLifecycleListener$OnStopCallback)
.class Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/internal/ActivityLifecycleListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnStopCallback"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageOnStopCallback"


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;->listeners:Ljava/util/List;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    const-string v0, "StorageOnStopCallback"

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;
    .registers 3

    new-instance v0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/LifecycleActivity;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->getFragment(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-result-object p0

    const-class v0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;

    const-string v1, "StorageOnStopCallback"

    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;

    invoke-direct {v0, p0}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    :cond_1a
    return-object v0
.end method


# virtual methods
.method public addEntry(Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;)V
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;->listeners:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public onStop()V
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;->listeners:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;->listeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_3d

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;

    if-eqz v1, :cond_14

    const-string v2, "StorageOnStopCallback"

    const-string v3, "removing subscription from activity."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->getRunnable()Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    invoke-static {}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->getInstance()Lcom/google/firebase/storage/internal/ActivityLifecycleListener;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->getCookie()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->removeCookie(Ljava/lang/Object;)V

    goto :goto_14

    :cond_3c
    return-void

    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    goto :goto_41

    :goto_40
    throw v1

    :goto_41
    goto :goto_40
.end method

.method public removeEntry(Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;)V
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;->listeners:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method
