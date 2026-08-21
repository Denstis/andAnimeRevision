###### Class com.google.firebase.storage.StreamDownloadTask (com.google.firebase.storage.StreamDownloadTask)
.class public Lcom/google/firebase/storage/StreamDownloadTask;
.super Lcom/google/firebase/storage/StorageTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;,
        Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;,
        Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/storage/StorageTask<",
        "Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;",
        ">;"
    }
.end annotation


# static fields
.field static final PREFERRED_CHUNK_SIZE:J = 0x40000L

.field private static final TAG:Ljava/lang/String; = "StreamDownloadTask"


# instance fields
.field private bytesDownloaded:J

.field private bytesDownloadedSnapped:J

.field private eTagVerification:Ljava/lang/String;

.field private volatile exception:Ljava/lang/Exception;

.field private inputStream:Ljava/io/InputStream;

.field private processor:Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;

.field private request:Lcom/google/firebase/storage/network/NetworkRequest;

.field private volatile resultCode:I

.field private sender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

.field private storageRef:Lcom/google/firebase/storage/StorageReference;

.field private totalBytes:J


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageReference;)V
    .registers 7

    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->exception:Ljava/lang/Exception;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->resultCode:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->totalBytes:J

    iput-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    iget-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxDownloadRetryTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/InternalAuthProvider;J)V

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->sender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/storage/StreamDownloadTask;)Ljava/io/InputStream;
    .registers 1

    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask;->createDownloadStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/firebase/storage/StreamDownloadTask;)Lcom/google/firebase/storage/network/NetworkRequest;
    .registers 1

    iget-object p0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->request:Lcom/google/firebase/storage/network/NetworkRequest;

    return-object p0
.end method

.method static synthetic access$202(Lcom/google/firebase/storage/StreamDownloadTask;Lcom/google/firebase/storage/network/NetworkRequest;)Lcom/google/firebase/storage/network/NetworkRequest;
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->request:Lcom/google/firebase/storage/network/NetworkRequest;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/firebase/storage/StreamDownloadTask;)Ljava/io/InputStream;
    .registers 1

    iget-object p0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->inputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method private createDownloadStream()Ljava/io/InputStream;
    .registers 6

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->sender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v0}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->reset()V

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->request:Lcom/google/firebase/storage/network/NetworkRequest;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequestEnd()V

    :cond_c
    new-instance v0, Lcom/google/firebase/storage/network/GetNetworkRequest;

    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getStorageUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/storage/StreamDownloadTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/firebase/storage/StreamDownloadTask;->bytesDownloaded:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/storage/network/GetNetworkRequest;-><init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;J)V

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->request:Lcom/google/firebase/storage/network/NetworkRequest;

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->sender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->request:Lcom/google/firebase/storage/network/NetworkRequest;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->sendWithExponentialBackoff(Lcom/google/firebase/storage/network/NetworkRequest;Z)V

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->request:Lcom/google/firebase/storage/network/NetworkRequest;

    invoke-virtual {v0}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultCode()I

    move-result v0

    iput v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->resultCode:I

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->request:Lcom/google/firebase/storage/network/NetworkRequest;

    invoke-virtual {v0}, Lcom/google/firebase/storage/network/NetworkRequest;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->request:Lcom/google/firebase/storage/network/NetworkRequest;

    invoke-virtual {v0}, Lcom/google/firebase/storage/network/NetworkRequest;->getException()Ljava/lang/Exception;

    move-result-object v0

    goto :goto_42

    :cond_40
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->exception:Ljava/lang/Exception;

    :goto_42
    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->exception:Ljava/lang/Exception;

    iget v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->resultCode:I

    invoke-direct {p0, v0}, Lcom/google/firebase/storage/StreamDownloadTask;->isValidHttpResponseCode(I)Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_58

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_58

    const/4 v2, 0x1

    :cond_58
    if-eqz v2, :cond_99

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->request:Lcom/google/firebase/storage/network/NetworkRequest;

    const-string v1, "ETag"

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7f

    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->eTagVerification:Ljava/lang/String;

    if-eqz v1, :cond_7f

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    goto :goto_7f

    :cond_73
    const/16 v0, 0x199

    iput v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->resultCode:I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "The ETag on the server changed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7f
    :goto_7f
    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->eTagVerification:Ljava/lang/String;

    iget-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->totalBytes:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_92

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->request:Lcom/google/firebase/storage/network/NetworkRequest;

    invoke-virtual {v0}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultingContentLength()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->totalBytes:J

    :cond_92
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->request:Lcom/google/firebase/storage/network/NetworkRequest;

    invoke-virtual {v0}, Lcom/google/firebase/storage/network/NetworkRequest;->getStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_99
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not open resulting stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isValidHttpResponseCode(I)Z
    .registers 3

    const/16 v0, 0x134

    if-eq p1, v0, :cond_f

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_d

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method


# virtual methods
.method getStorage()Lcom/google/firebase/storage/StorageReference;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    return-object v0
.end method

.method getTotalBytes()J
    .registers 3

    iget-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->totalBytes:J

    return-wide v0
.end method

.method protected onCanceled()V
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->sender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v0}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->cancel()V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_CANCELED:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageException;->fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->exception:Ljava/lang/Exception;

    return-void
.end method

.method protected onProgress()V
    .registers 3

    iget-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->bytesDownloaded:J

    iput-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->bytesDownloadedSnapped:J

    return-void
.end method

.method public pause()Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "this operation is not supported on StreamDownloadTask."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method recordDownloadedBytes(J)V
    .registers 6

    iget-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->bytesDownloaded:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->bytesDownloaded:J

    iget-wide p1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->bytesDownloadedSnapped:J

    const-wide/32 v0, 0x40000

    add-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->bytesDownloaded:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_21

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1d

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    goto :goto_21

    :cond_1d
    iget-wide p1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->bytesDownloaded:J

    iput-wide p1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->bytesDownloadedSnapped:J

    :cond_21
    :goto_21
    return-void
.end method

.method public resume()Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "this operation is not supported on StreamDownloadTask."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method run()V
    .registers 8

    const-string v0, "StreamDownloadTask"

    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->exception:Ljava/lang/Exception;

    const/16 v2, 0x40

    const/4 v3, 0x0

    if-eqz v1, :cond_d

    invoke-virtual {p0, v2, v3}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    return-void

    :cond_d
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v3}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    move-result v4

    if-nez v4, :cond_15

    return-void

    :cond_15
    new-instance v4, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;

    new-instance v5, Lcom/google/firebase/storage/StreamDownloadTask$1;

    invoke-direct {v5, p0}, Lcom/google/firebase/storage/StreamDownloadTask$1;-><init>(Lcom/google/firebase/storage/StreamDownloadTask;)V

    invoke-direct {v4, v5, p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;-><init>(Ljava/util/concurrent/Callable;Lcom/google/firebase/storage/StreamDownloadTask;)V

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v5, p0, Lcom/google/firebase/storage/StreamDownloadTask;->inputStream:Ljava/io/InputStream;

    :try_start_26
    invoke-static {v4}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->access$100(Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;)Z

    iget-object v4, p0, Lcom/google/firebase/storage/StreamDownloadTask;->processor:Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_44

    if-eqz v4, :cond_4c

    :try_start_2d
    iget-object v4, p0, Lcom/google/firebase/storage/StreamDownloadTask;->processor:Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->snapState()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;

    iget-object v6, p0, Lcom/google/firebase/storage/StreamDownloadTask;->inputStream:Ljava/io/InputStream;

    invoke-interface {v4, v5, v6}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;->doInBackground(Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;Ljava/io/InputStream;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3a} :catch_3b

    goto :goto_4c

    :catch_3b
    move-exception v4

    :try_start_3c
    const-string v5, "Exception occurred calling doInBackground."

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v4, p0, Lcom/google/firebase/storage/StreamDownloadTask;->exception:Ljava/lang/Exception;
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_43} :catch_44

    goto :goto_4c

    :catch_44
    move-exception v4

    const-string v5, "Initial opening of Stream failed"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v4, p0, Lcom/google/firebase/storage/StreamDownloadTask;->exception:Ljava/lang/Exception;

    :cond_4c
    :goto_4c
    iget-object v4, p0, Lcom/google/firebase/storage/StreamDownloadTask;->inputStream:Ljava/io/InputStream;

    if-nez v4, :cond_58

    iget-object v4, p0, Lcom/google/firebase/storage/StreamDownloadTask;->request:Lcom/google/firebase/storage/network/NetworkRequest;

    invoke-virtual {v4}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequestEnd()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/firebase/storage/StreamDownloadTask;->request:Lcom/google/firebase/storage/network/NetworkRequest;

    :cond_58
    iget-object v4, p0, Lcom/google/firebase/storage/StreamDownloadTask;->exception:Ljava/lang/Exception;

    if-nez v4, :cond_64

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v4

    if-ne v4, v1, :cond_64

    const/4 v4, 0x1

    goto :goto_65

    :cond_64
    const/4 v4, 0x0

    :goto_65
    if-eqz v4, :cond_70

    invoke-virtual {p0, v1, v3}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    const/16 v0, 0x80

    invoke-virtual {p0, v0, v3}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    goto :goto_98

    :cond_70
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v1

    const/16 v4, 0x20

    if-ne v1, v4, :cond_7a

    const/16 v2, 0x100

    :cond_7a
    invoke-virtual {p0, v2, v3}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    move-result v1

    if-nez v1, :cond_98

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to change download task to final state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    :goto_98
    return-void
.end method

.method protected schedule()V
    .registers 3

    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleDownload(Ljava/lang/Runnable;)V

    return-void
.end method

.method setStreamProcessor(Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;)Lcom/google/firebase/storage/StreamDownloadTask;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->processor:Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    iput-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->processor:Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;

    return-object p0
.end method

.method bridge synthetic snapStateImpl()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .registers 2

    invoke-virtual {p0}, Lcom/google/firebase/storage/StreamDownloadTask;->snapStateImpl()Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method snapStateImpl()Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;
    .registers 5

    new-instance v0, Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;

    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->exception:Ljava/lang/Exception;

    iget v2, p0, Lcom/google/firebase/storage/StreamDownloadTask;->resultCode:I

    invoke-static {v1, v2}, Lcom/google/firebase/storage/StorageException;->fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/firebase/storage/StreamDownloadTask;->bytesDownloadedSnapped:J

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;-><init>(Lcom/google/firebase/storage/StreamDownloadTask;Ljava/lang/Exception;J)V

    return-object v0
.end method

###### Class com.google.firebase.storage.StreamDownloadTask.AnonymousClass1 (com.google.firebase.storage.StreamDownloadTask$1)
.class Lcom/google/firebase/storage/StreamDownloadTask$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/storage/StreamDownloadTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/storage/StreamDownloadTask;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StreamDownloadTask;)V
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask$1;->this$0:Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$1;->this$0:Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-static {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->access$000(Lcom/google/firebase/storage/StreamDownloadTask;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/firebase/storage/StreamDownloadTask$1;->call()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.firebase.storage.StreamDownloadTask.StreamProcessor (com.google.firebase.storage.StreamDownloadTask$StreamProcessor)
.class public interface abstract Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/StreamDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StreamProcessor"
.end annotation


# virtual methods
.method public abstract doInBackground(Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;Ljava/io/InputStream;)V
.end method

###### Class com.google.firebase.storage.StreamDownloadTask.StreamProgressWrapper (com.google.firebase.storage.StreamDownloadTask$StreamProgressWrapper)
.class Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;
.super Ljava/io/InputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/StreamDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StreamProgressWrapper"
.end annotation


# instance fields
.field private mDownloadedBytes:J

.field private mInputStreamCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mLastExceptionPosition:J

.field private mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

.field private mStreamClosed:Z

.field private mTemporaryException:Ljava/io/IOException;

.field private mWrappedStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lcom/google/firebase/storage/StreamDownloadTask;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/firebase/storage/StreamDownloadTask;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    iput-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mInputStreamCallable:Ljava/util/concurrent/Callable;

    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;)Z
    .registers 1

    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->ensureStream()Z

    move-result p0

    return p0
.end method

.method private checkCancel()V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_d

    goto :goto_13

    :cond_d
    new-instance v0, Lcom/google/firebase/storage/CancelException;

    invoke-direct {v0}, Lcom/google/firebase/storage/CancelException;-><init>()V

    throw v0

    :cond_13
    :goto_13
    return-void
.end method

.method private ensureStream()Z
    .registers 8

    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->checkCancel()V

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    if-eqz v0, :cond_46

    :try_start_7
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    nop

    :cond_12
    :goto_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    iget-wide v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mLastExceptionPosition:J

    iget-wide v3, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mDownloadedBytes:J

    const-string v5, "StreamDownloadTask"

    cmp-long v6, v1, v3

    if-nez v6, :cond_28

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    const-string v1, "Encountered exception during stream operation. Aborting."

    invoke-static {v5, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0

    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered exception during stream operation. Retrying at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mDownloadedBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    invoke-static {v5, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-wide v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mDownloadedBytes:J

    iput-wide v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mLastExceptionPosition:J

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    :cond_46
    iget-boolean v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mStreamClosed:Z

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    if-nez v0, :cond_69

    :try_start_4e
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mInputStreamCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_58} :catch_59

    goto :goto_69

    :catch_59
    move-exception v0

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_61

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_61
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to open stream"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_69
    :goto_69
    const/4 v0, 0x1

    return v0

    :cond_6b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t perform operation on closed stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private recordDownloadedBytes(J)V
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/storage/StreamDownloadTask;->recordDownloadedBytes(J)V

    :cond_7
    iget-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mDownloadedBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mDownloadedBytes:J

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2

    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->ensureStream()Z

    move-result v0

    if-eqz v0, :cond_11

    :try_start_6
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    goto :goto_0

    :cond_11
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    goto :goto_15

    :goto_14
    throw v0

    :goto_15
    goto :goto_14
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mStreamClosed:Z

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    if-eqz v0, :cond_23

    invoke-static {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->access$200(Lcom/google/firebase/storage/StreamDownloadTask;)Lcom/google/firebase/storage/network/NetworkRequest;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-static {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->access$200(Lcom/google/firebase/storage/StreamDownloadTask;)Lcom/google/firebase/storage/network/NetworkRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequestEnd()V

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StreamDownloadTask;->access$202(Lcom/google/firebase/storage/StreamDownloadTask;Lcom/google/firebase/storage/network/NetworkRequest;)Lcom/google/firebase/storage/network/NetworkRequest;

    :cond_23
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->checkCancel()V

    return-void
.end method

.method public mark(I)V
    .registers 2

    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 4

    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->ensureStream()Z

    move-result v0

    if-eqz v0, :cond_19

    :try_start_6
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    const-wide/16 v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->recordDownloadedBytes(J)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_15

    :cond_14
    return v0

    :catch_15
    move-exception v0

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    goto :goto_0

    :cond_19
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    goto :goto_1d

    :goto_1c
    throw v0

    :goto_1d
    goto :goto_1c
.end method

.method public read([BII)I
    .registers 11

    const/4 v0, 0x0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->ensureStream()Z

    move-result v1

    if-eqz v1, :cond_47

    :goto_7
    int-to-long v1, p3

    const-wide/32 v3, 0x40000

    const/4 v5, -0x1

    cmp-long v6, v1, v3

    if-lez v6, :cond_2b

    :try_start_10
    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    const/high16 v2, 0x40000

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, v5, :cond_1e

    if-nez v0, :cond_1d

    const/4 v0, -0x1

    :cond_1d
    return v0

    :cond_1e
    add-int/2addr v0, v1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    int-to-long v1, v1

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->recordDownloadedBytes(J)V

    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->checkCancel()V

    goto :goto_7

    :catch_29
    move-exception v1

    goto :goto_41

    :cond_2b
    if-lez p3, :cond_44

    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, v5, :cond_39

    if-nez v0, :cond_38

    const/4 v0, -0x1

    :cond_38
    return v0

    :cond_39
    add-int/2addr p2, v1

    add-int/2addr v0, v1

    sub-int/2addr p3, v1

    int-to-long v1, v1

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->recordDownloadedBytes(J)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_40} :catch_29

    goto :goto_44

    :goto_41
    iput-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    goto :goto_1

    :cond_44
    :goto_44
    if-nez p3, :cond_1

    return v0

    :cond_47
    iget-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    goto :goto_4b

    :goto_4a
    throw p1

    :goto_4b
    goto :goto_4a
.end method

.method public skip(J)J
    .registers 12

    const-wide/16 v0, 0x0

    move-wide v2, p1

    move-wide p1, v0

    :cond_4
    :goto_4
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->ensureStream()Z

    move-result v4

    if-eqz v4, :cond_50

    :goto_a
    const-wide/16 v4, -0x1

    const-wide/32 v6, 0x40000

    cmp-long v8, v2, v6

    if-lez v8, :cond_2e

    :try_start_13
    iget-object v8, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v8, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v6

    cmp-long v8, v6, v0

    if-gez v8, :cond_23

    cmp-long v2, p1, v0

    if-nez v2, :cond_22

    move-wide p1, v4

    :cond_22
    return-wide p1

    :cond_23
    add-long/2addr p1, v6

    sub-long/2addr v2, v6

    invoke-direct {p0, v6, v7}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->recordDownloadedBytes(J)V

    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->checkCancel()V

    goto :goto_a

    :catch_2c
    move-exception v4

    goto :goto_48

    :cond_2e
    cmp-long v6, v2, v0

    if-lez v6, :cond_4b

    iget-object v6, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v6, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v6

    cmp-long v8, v6, v0

    if-gez v8, :cond_42

    cmp-long v2, p1, v0

    if-nez v2, :cond_41

    move-wide p1, v4

    :cond_41
    return-wide p1

    :cond_42
    add-long/2addr p1, v6

    sub-long/2addr v2, v6

    invoke-direct {p0, v6, v7}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->recordDownloadedBytes(J)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_47} :catch_2c

    goto :goto_4b

    :goto_48
    iput-object v4, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    goto :goto_4

    :cond_4b
    :goto_4b
    cmp-long v4, v2, v0

    if-nez v4, :cond_4

    return-wide p1

    :cond_50
    iget-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    goto :goto_54

    :goto_53
    throw p1

    :goto_54
    goto :goto_53
.end method

###### Class com.google.firebase.storage.StreamDownloadTask.TaskSnapshot (com.google.firebase.storage.StreamDownloadTask$TaskSnapshot)
.class public Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;
.super Lcom/google/firebase/storage/StorageTask$SnapshotBase;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/StreamDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskSnapshot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/storage/StorageTask<",
        "Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;",
        ">.SnapshotBase;"
    }
.end annotation


# instance fields
.field private final mBytesDownloaded:J

.field final synthetic this$0:Lcom/google/firebase/storage/StreamDownloadTask;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StreamDownloadTask;Ljava/lang/Exception;J)V
    .registers 5

    iput-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;->this$0:Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask$SnapshotBase;-><init>(Lcom/google/firebase/storage/StorageTask;Ljava/lang/Exception;)V

    iput-wide p3, p0, Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;->mBytesDownloaded:J

    return-void
.end method


# virtual methods
.method public getBytesTransferred()J
    .registers 3

    iget-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;->mBytesDownloaded:J

    return-wide v0
.end method

.method public getStream()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;->this$0:Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-static {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->access$300(Lcom/google/firebase/storage/StreamDownloadTask;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getTotalByteCount()J
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;->this$0:Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->getTotalBytes()J

    move-result-wide v0

    return-wide v0
.end method
