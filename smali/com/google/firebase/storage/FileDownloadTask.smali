###### Class com.google.firebase.storage.FileDownloadTask (com.google.firebase.storage.FileDownloadTask)
.class public Lcom/google/firebase/storage/FileDownloadTask;
.super Lcom/google/firebase/storage/StorageTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/storage/StorageTask<",
        "Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;",
        ">;"
    }
.end annotation


# static fields
.field static final PREFERRED_CHUNK_SIZE:I = 0x40000

.field private static final TAG:Ljava/lang/String; = "FileDownloadTask"


# instance fields
.field private mBytesDownloaded:J

.field private final mDestinationFile:Landroid/net/Uri;

.field private mETagVerification:Ljava/lang/String;

.field private volatile mException:Ljava/lang/Exception;

.field private mResultCode:I

.field private mResumeOffset:J

.field private mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

.field private mStorageRef:Lcom/google/firebase/storage/StorageReference;

.field private mTotalBytes:J


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageReference;Landroid/net/Uri;)V
    .registers 7

    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mTotalBytes:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mETagVerification:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    iput-object p1, p0, Lcom/google/firebase/storage/FileDownloadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    iput-object p2, p0, Lcom/google/firebase/storage/FileDownloadTask;->mDestinationFile:Landroid/net/Uri;

    iget-object p1, p0, Lcom/google/firebase/storage/FileDownloadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    new-instance p2, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxDownloadRetryTimeMillis()J

    move-result-wide v2

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/InternalAuthProvider;J)V

    iput-object p2, p0, Lcom/google/firebase/storage/FileDownloadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    return-void
.end method

.method private fillBuffer(Ljava/io/InputStream;[B)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, -0x1

    :try_start_3
    array-length v3, p2

    if-eq v0, v3, :cond_14

    array-length v3, p2

    sub-int/2addr v3, v0

    invoke-virtual {p1, p2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_c} :catch_11

    if-eq v3, v2, :cond_14

    const/4 v1, 0x1

    add-int/2addr v0, v3

    goto :goto_2

    :catch_11
    move-exception p1

    iput-object p1, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    :cond_14
    if-eqz v1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, -0x1

    :goto_18
    return v0
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

.method private processResponse(Lcom/google/firebase/storage/network/NetworkRequest;)Z
    .registers 12

    invoke-virtual {p1}, Lcom/google/firebase/storage/network/NetworkRequest;->getStream()Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_d9

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/firebase/storage/FileDownloadTask;->mDestinationFile:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-wide/16 v3, 0x0

    const-string v5, "FileDownloadTask"

    if-nez v2, :cond_61

    iget-wide v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    cmp-long v2, v6, v3

    if-gtz v2, :cond_41

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_61

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to create file:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    :cond_41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The file downloading to has been deleted:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "expected a file to resume from."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_61
    :goto_61
    iget-wide v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    const/4 v2, 0x1

    cmp-long v8, v6, v3

    if-lez v8, :cond_90

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resuming download file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    goto :goto_95

    :cond_90
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :goto_95
    const/high16 v1, 0x40000

    :try_start_97
    new-array v1, v1, [B

    :cond_99
    :goto_99
    if-eqz v2, :cond_c3

    invoke-direct {p0, p1, v1}, Lcom/google/firebase/storage/FileDownloadTask;->fillBuffer(Ljava/io/InputStream;[B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_c3

    invoke-virtual {v3, v1, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->mBytesDownloaded:J

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->mBytesDownloaded:J

    iget-object v4, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    if-eqz v4, :cond_ba

    const-string v2, "Exception occurred during file download. Retrying."

    iget-object v4, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    invoke-static {v5, v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    const/4 v2, 0x0

    :cond_ba
    const/4 v4, 0x4

    invoke-virtual {p0, v4, v0}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    move-result v4
    :try_end_bf
    .catchall {:try_start_97 .. :try_end_bf} :catchall_ce

    if-nez v4, :cond_99

    const/4 v2, 0x0

    goto :goto_99

    :cond_c3
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    move v0, v2

    goto :goto_e2

    :catchall_ce
    move-exception v0

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_d9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to open Firebase Storage stream."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    :goto_e2
    return v0
.end method


# virtual methods
.method getDownloadedSizeInBytes()J
    .registers 3

    iget-wide v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mBytesDownloaded:J

    return-wide v0
.end method

.method getStorage()Lcom/google/firebase/storage/StorageReference;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    return-object v0
.end method

.method getTotalBytes()J
    .registers 3

    iget-wide v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mTotalBytes:J

    return-wide v0
.end method

.method protected onCanceled()V
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v0}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->cancel()V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_CANCELED:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageException;->fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    return-void
.end method

.method run()V
    .registers 13

    iget-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    const/16 v1, 0x40

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    return-void

    :cond_b
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    move-result v3

    if-nez v3, :cond_13

    return-void

    :cond_13
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/firebase/storage/FileDownloadTask;->mBytesDownloaded:J

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    iget-object v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v6}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->reset()V

    new-instance v6, Lcom/google/firebase/storage/network/GetNetworkRequest;

    iget-object v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v7}, Lcom/google/firebase/storage/StorageReference;->getStorageUri()Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/google/firebase/storage/FileDownloadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v8}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v8

    iget-wide v9, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/firebase/storage/network/GetNetworkRequest;-><init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;J)V

    iget-object v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v7, v6, v2}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->sendWithExponentialBackoff(Lcom/google/firebase/storage/network/NetworkRequest;Z)V

    invoke-virtual {v6}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultCode()I

    move-result v7

    iput v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResultCode:I

    invoke-virtual {v6}, Lcom/google/firebase/storage/network/NetworkRequest;->getException()Ljava/lang/Exception;

    move-result-object v7

    if-eqz v7, :cond_48

    invoke-virtual {v6}, Lcom/google/firebase/storage/network/NetworkRequest;->getException()Ljava/lang/Exception;

    move-result-object v7

    goto :goto_4a

    :cond_48
    iget-object v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    :goto_4a
    iput-object v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    iget v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResultCode:I

    invoke-direct {p0, v7}, Lcom/google/firebase/storage/FileDownloadTask;->isValidHttpResponseCode(I)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_61

    iget-object v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    if-nez v7, :cond_61

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v7

    if-ne v7, v0, :cond_61

    const/4 v7, 0x1

    goto :goto_62

    :cond_61
    const/4 v7, 0x0

    :goto_62
    const-string v9, "FileDownloadTask"

    if-eqz v7, :cond_a2

    invoke-virtual {v6}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultingContentLength()I

    move-result v10

    int-to-long v10, v10

    iput-wide v10, p0, Lcom/google/firebase/storage/FileDownloadTask;->mTotalBytes:J

    const-string v10, "ETag"

    invoke-virtual {v6, v10}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_93

    iget-object v11, p0, Lcom/google/firebase/storage/FileDownloadTask;->mETagVerification:Ljava/lang/String;

    if-eqz v11, :cond_93

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_93

    const-string v0, "The file at the server has changed.  Restarting from the beginning."

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v3, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    iput-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mETagVerification:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequestEnd()V

    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->schedule()V

    return-void

    :cond_93
    iput-object v10, p0, Lcom/google/firebase/storage/FileDownloadTask;->mETagVerification:Ljava/lang/String;

    :try_start_95
    invoke-direct {p0, v6}, Lcom/google/firebase/storage/FileDownloadTask;->processResponse(Lcom/google/firebase/storage/network/NetworkRequest;)Z

    move-result v7
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_99} :catch_9a

    goto :goto_a2

    :catch_9a
    move-exception v5

    const-string v10, "Exception occurred during file write.  Aborting."

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    :cond_a2
    :goto_a2
    invoke-virtual {v6}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequestEnd()V

    if-eqz v7, :cond_b2

    iget-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    if-nez v5, :cond_b2

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v5

    if-ne v5, v0, :cond_b2

    goto :goto_b3

    :cond_b2
    const/4 v8, 0x0

    :goto_b3
    if-eqz v8, :cond_bb

    const/16 v0, 0x80

    invoke-virtual {p0, v0, v2}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    return-void

    :cond_bb
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->mDestinationFile:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_d3

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    goto :goto_d5

    :cond_d3
    iput-wide v3, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    :goto_d5
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_e3

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    return-void

    :cond_e3
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_10c

    const/16 v0, 0x100

    invoke-virtual {p0, v0, v2}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    move-result v0

    if-nez v0, :cond_10b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to change download task to final state from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10b
    return-void

    :cond_10c
    iget-wide v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mBytesDownloaded:J

    cmp-long v7, v5, v3

    if-gtz v7, :cond_13

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

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

.method snapStateImpl()Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;
    .registers 7

    new-instance v0, Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;

    iget-object v1, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    iget v2, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResultCode:I

    invoke-static {v1, v2}, Lcom/google/firebase/storage/StorageException;->fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/firebase/storage/FileDownloadTask;->mBytesDownloaded:J

    iget-wide v4, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    add-long/2addr v2, v4

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;-><init>(Lcom/google/firebase/storage/FileDownloadTask;Ljava/lang/Exception;J)V

    return-object v0
.end method

.method bridge synthetic snapStateImpl()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .registers 2

    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->snapStateImpl()Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.firebase.storage.FileDownloadTask.TaskSnapshot (com.google.firebase.storage.FileDownloadTask$TaskSnapshot)
.class public Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;
.super Lcom/google/firebase/storage/StorageTask$SnapshotBase;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/FileDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskSnapshot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/storage/StorageTask<",
        "Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;",
        ">.SnapshotBase;"
    }
.end annotation


# instance fields
.field private final mBytesDownloaded:J

.field final synthetic this$0:Lcom/google/firebase/storage/FileDownloadTask;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/FileDownloadTask;Ljava/lang/Exception;J)V
    .registers 5

    iput-object p1, p0, Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;->this$0:Lcom/google/firebase/storage/FileDownloadTask;

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask$SnapshotBase;-><init>(Lcom/google/firebase/storage/StorageTask;Ljava/lang/Exception;)V

    iput-wide p3, p0, Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;->mBytesDownloaded:J

    return-void
.end method


# virtual methods
.method public getBytesTransferred()J
    .registers 3

    iget-wide v0, p0, Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;->mBytesDownloaded:J

    return-wide v0
.end method

.method public getTotalByteCount()J
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;->this$0:Lcom/google/firebase/storage/FileDownloadTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/FileDownloadTask;->getTotalBytes()J

    move-result-wide v0

    return-wide v0
.end method
