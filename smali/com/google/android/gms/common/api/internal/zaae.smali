###### Class com.google.android.gms.common.api.internal.zaae (com.google.android.gms.common.api.internal.zaae)
.class public Lcom/google/android/gms/common/api/internal/zaae;
.super Lcom/google/android/gms/common/api/internal/zal;
.source ""


# instance fields
.field private zabm:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

.field private final zafp:Lb/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/b<",
            "Lcom/google/android/gms/common/api/internal/zai<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zal;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    new-instance p1, Lb/e/b;

    invoke-direct {p1}, Lb/e/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaae;->zafp:Lb/e/b;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    const-string v0, "ConnectionlessLifecycleHelper"

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static zaa(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/internal/zai;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/internal/GoogleApiManager;",
            "Lcom/google/android/gms/common/api/internal/zai<",
            "*>;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->getFragment(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-result-object p0

    const-class v0, Lcom/google/android/gms/common/api/internal/zaae;

    const-string v1, "ConnectionlessLifecycleHelper"

    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaae;

    if-nez v0, :cond_15

    new-instance v0, Lcom/google/android/gms/common/api/internal/zaae;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zaae;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    :cond_15
    iput-object p1, v0, Lcom/google/android/gms/common/api/internal/zaae;->zabm:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    const-string p0, "ApiKey cannot be null"

    invoke-static {p2, p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zaae;->zafp:Lb/e/b;

    invoke-virtual {p0, p2}, Lb/e/b;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa(Lcom/google/android/gms/common/api/internal/zaae;)V

    return-void
.end method

.method private final zaak()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaae;->zafp:Lb/e/b;

    invoke-virtual {v0}, Lb/e/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaae;->zabm:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa(Lcom/google/android/gms/common/api/internal/zaae;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onResume()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaae;->zaak()V

    return-void
.end method

.method public onStart()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/zal;->onStart()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaae;->zaak()V

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/zal;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaae;->zabm:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zab(Lcom/google/android/gms/common/api/internal/zaae;)V

    return-void
.end method

.method protected final zaa(Lcom/google/android/gms/common/ConnectionResult;I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaae;->zabm:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method final zaaj()Lb/e/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/e/b<",
            "Lcom/google/android/gms/common/api/internal/zai<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaae;->zafp:Lb/e/b;

    return-object v0
.end method

.method protected final zao()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaae;->zabm:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zao()V

    return-void
.end method
