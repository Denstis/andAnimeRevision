###### Class com.google.android.gms.common.api.internal.zaau (com.google.android.gms.common.api.internal.zaau)
.class abstract Lcom/google/android/gms/common/api/internal/zaau;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zagj:Lcom/google/android/gms/common/api/internal/zaak;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zaak;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zaak;Lcom/google/android/gms/common/api/internal/zaal;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zaau;-><init>(Lcom/google/android/gms/common/api/internal/zaak;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaak;->zac(Lcom/google/android/gms/common/api/internal/zaak;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_d} :catch_1f
    .catchall {:try_start_9 .. :try_end_d} :catchall_1d

    if-eqz v0, :cond_19

    :goto_f
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaak;->zac(Lcom/google/android/gms/common/api/internal/zaak;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaau;->zaan()V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1c} :catch_1f
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_f

    :catchall_1d
    move-exception v0

    goto :goto_2a

    :catch_1f
    move-exception v0

    :try_start_20
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zaak;->zad(Lcom/google/android/gms/common/api/internal/zaak;)Lcom/google/android/gms/common/api/internal/zabe;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zabe;->zab(Ljava/lang/RuntimeException;)V
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_1d

    goto :goto_f

    :goto_2a
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zaak;->zac(Lcom/google/android/gms/common/api/internal/zaak;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_35

    :goto_34
    throw v0

    :goto_35
    goto :goto_34
.end method

.method protected abstract zaan()V
.end method
