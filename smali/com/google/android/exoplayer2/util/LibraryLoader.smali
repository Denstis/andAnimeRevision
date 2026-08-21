###### Class com.google.android.exoplayer2.util.LibraryLoader (com.google.android.exoplayer2.util.LibraryLoader)
.class public final Lcom/google/android/exoplayer2/util/LibraryLoader;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private isAvailable:Z

.field private loadAttempted:Z

.field private nativeLibraries:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->nativeLibraries:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized isAvailable()Z
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->loadAttempted:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->isAvailable:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_20

    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->loadAttempted:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_20

    :try_start_c
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->nativeLibraries:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1a

    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_1a
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->isAvailable:Z
    :try_end_1c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_c .. :try_end_1c} :catch_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_20

    :catch_1c
    :try_start_1c
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->isAvailable:Z
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_20

    monitor-exit p0

    return v0

    :catchall_20
    move-exception v0

    monitor-exit p0

    goto :goto_24

    :goto_23
    throw v0

    :goto_24
    goto :goto_23
.end method

.method public varargs declared-synchronized setLibraries([Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->loadAttempted:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Cannot set libraries after loading"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->nativeLibraries:[Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method
