###### Class com.google.android.exoplayer2.upstream.FileDataSourceFactory (com.google.android.exoplayer2.upstream.FileDataSourceFactory)
.class public final Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private final listener:Lcom/google/android/exoplayer2/upstream/TransferListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    return-void
.end method


# virtual methods
.method public createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .registers 3

    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_c

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    :cond_c
    return-object v0
.end method
